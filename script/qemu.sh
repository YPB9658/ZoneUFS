#!/bin/bash
# Huaicheng Li <huaicheng@cs.uchicago.edu>
# Run FEMU as a black-box SSD (FTL managed by the device)

# image directory
IMGDIR=/images
# Virtual machine disk image
OSIMGF=/images/u14s_artifact.qcow2
ZNSIMGF=$IMGDIR/zns.raw
CONVIMGF=$IMGDIR/convSSD.raw
ZNSIMGSZ=18G
CONVIMGSZ=18G
[[ ! -e $ZNSIMGF  ]] && qemu-img create -f raw $ZNSIMGF $ZNSIMGSZ
[[ ! -e $CONVIMGF ]] && qemu-img create -f raw $CONVIMGF $CONVIMGSZ
if [[ ! -e "$OSIMGF" ]]; then
        echo ""
        echo "VM disk image couldn't be found ..."
        echo "Please prepare a usable VM image and place it as $OSIMGF"
        echo "Once VM disk image is ready, please rerun this script again"
        echo ""
        exit
fi

sudo /home/ypb/workspace/femu/build-femu/x86_64-softmmu/qemu-system-x86_64 \
    -name "FEMU-BBSSD-VM" \
    -enable-kvm \
    -cpu host \
    -smp 4 \
    -m 2G \
    -fsdev local,security_model=passthrough,id=fsdev0,path=/home/ypb/ZNS/share \
    -device virtio-scsi-pci,id=scsi0 \
    -device scsi-hd,drive=hd0 \
    -drive file=$OSIMGF,if=none,aio=native,cache=none,format=qcow2,id=hd0 \
    -device nvme,id=nvme0,serial=deadbeef,zoned.zasl=5 \
    -drive file=$ZNSIMGF,id=nvmezns0,format=raw,if=none \
    -device nvme-ns,drive=nvmezns0,bus=nvme0,nsid=1,logical_block_size=4096,physical_block_size=4096,zoned=true,zoned.zone_size=64M,zoned.zone_capacity=62M,zoned.max_open=16,zoned.max_active=32,uuid=5e40ec5f-eeb6-4317-bc5e-c919796a5f79 \
    -drive file=$CONVIMGF,if=none,id=nvmeconv0,format=raw,if=none \
    -device nvme-ns,drive=nvmeconv0,logical_block_size=4096,physical_block_size=4096 \
    -net user,hostfwd=tcp::8080-:22 \
    -net nic,model=virtio \
    -nographic \
    -qmp unix:./qmp-sock,server,nowait 2>&1 | tee log

