Filebench Version 1.5-alpha3
0.000: Allocated 173MB of shared memory
0.001: FileMicro-SeqRead Version 2.1 personality successfully loaded
0.001: Populating and pre-allocating filesets
0.001: Reusing existing bigfile tree
0.001: Pre-allocating files in bigfile tree
2.902: Waiting for pre-allocation to finish (in case of a parallel pre-allocation)
2.902: Population and pre-allocation of filesets completed
2.902: Starting 1 filereader instances

=====[ partition info(nvme0n2p1). #0, RW]=====
[SB: 1] [CP: 2] [SIT: 2] [NAT: 36] [SSA: 24] [MAIN: 8112(OverProv:1135 Resv:768)]

Utilization: 88% (3148828 valid blocks)
  - Node: 3099 (Inode: 4, Other: 3095)
  - Data: 3145729
  - Inline_xattr Inode: 0
  - Inline_data Inode: 0
  - Inline_dentry Inode: 2
  - Orphan Inode: 0

Main area: 8112 segs, 507 secs 507 zones
  - COLD  data: 10, 0, 0
  - WARM  data: 4270, 266, 266
  - HOT   data: 8048, 503, 503
  - Dir   dnode: 8096, 506, 506
  - File   dnode: 8013, 500, 500
  - Indir nodes: 8064, 504, 504

  - Valid: 6097
  - Dirty: 12
  - Prefree: 702
  - Free: 1301 (78)

CP calls: 11 (BG: 1)
GC calls: 4 (BG: 0)
  - data segments : 11 (0)
  - node segments : 23 (0)
Try to move 6577 blocks (BG: 0)
  - data blocks : 5376 (0)
  - node blocks : 1201 (0)

Extent Cache:
  - Hit Count: L1-1:0 L1-2:0 L2:0
  - Hit Ratio: 0% (0 / 10752)
  - Inner Struct Count: tree: 1(0), node: 1

Balancing F2FS Async:
  - inmem:    0, wb_cp_data:    0, wb_data:    0
  - nodes:  482 in 3099
  - dents:    0 in dirs:   0 (   0)
  - datas: 27392 in files:   0
  - meta:  894 in 1390
  - imeta:    0
  - NATs:       125/      383
  - SITs:      1598/     8112
  - free_nids:       538, alloc_nids:         0

Distribution of User Blocks: [ valid | invalid | free ]
  [-------------------------------------------|------|-]

IPU: 0 blocks
SSR: 0 blocks in 0 segments
LFS: 6311309 blocks in 12325 segments

BDF: 99, avg. vblocks: 2363

Memory: 19870 KB
  - static: 1884 KB
  - cached: 29 KB
  - paged : 17956 KB
Main blkaddr: 38912
Current benefit sections: 0
Checkpoint try count :6289890
  - CP   Calls : 11
  - ToTAL W: 2981
  - Dent Writes: 2
  - Node Writes: 2634
  - NAT  Writes: 20
  - SIT  Writes: 303
  - CP   Writes: 22


Hot data section LFS allocation: 0
Hot data section SSR allocation: 0
Warm data section LFS allocation: 748
Warm data section SSR allocation: 0
Cold data section LFS allocation: 0
Cold data section SSR allocation: 0
Hot node section LFS allocation: 0
Hot node section SSR allocation: 0
Warm node section LFS allocation: 3
Warm node section SSR allocation: 0
Cold node section LFS allocation: 0
Cold node section SSR allocation: 0
Total LFS allocation: 751
Total SSR allocation: 0

Hot data LFS block write: 1
Hot data SSR block write: 0
Warm data LFS block write: 6132992
Warm data SSR block write: 0
Cold data LFS block write: 5376
Cold data SSR block write: 0
Hot node LFS block write: 3
Hot node SSR block write: 0
Warm node LFS block write: 30378
Warm node SSR block write: 0
Cold node LFS block write: 4
Cold node SSR block write: 0
Total LFS block write: 6168754
Total SSR block write: 0

Data write count: 6132993
Node write count: 29184
Meta write count: 11787

Host I/O: 5376
Orig_cpbk 0
IM_cached_pages: 5376
IM_all_cached_pages: 5376
IM - data: 0 - 0
DEV R/W: 0 
DEV CPBK: 0

GC time breakdown
DATA - 134506310 (tick)
init phase: 2446640 (tick)
IZC phase: 27121148 (tick)
checkpoint: 104938522 (tick)
3.908: Running...
63.912: Run took 60 seconds...
63.913: Per-Operation Breakdown
seqread-file         14137329ops   235602ops/s 3681.3mb/s    0.004ms/op [0.001ms - 8.808ms]
63.913: IO Summary: 14137329 ops 235602.442 ops/s 235602/0 rd/wr 3681.3mb/s 0.004ms/op
63.913: Shutting down processes
