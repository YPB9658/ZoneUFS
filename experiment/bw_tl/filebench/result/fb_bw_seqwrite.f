Filebench Version 1.5-alpha3
0.000: Allocated 173MB of shared memory
0.001: FileMicro-SeqWrite Version 2.2 personality successfully loaded
0.001: Populating and pre-allocating filesets
0.001: Removing bigfile tree (if exists)
0.025: Pre-allocating directories in bigfile tree
0.025: Pre-allocating files in bigfile tree
0.025: Waiting for pre-allocation to finish (in case of a parallel pre-allocation)
0.025: Population and pre-allocation of filesets completed
0.025: Starting 1 filewriter instances

=====[ partition info(nvme0n2p1). #0, RW]=====
[SB: 1] [CP: 2] [SIT: 2] [NAT: 36] [SSA: 24] [MAIN: 8112(OverProv:1135 Resv:768)]

Utilization: 0% (5 valid blocks)
  - Node: 4 (Inode: 4, Other: 0)
  - Data: 1
  - Inline_xattr Inode: 0
  - Inline_data Inode: 1
  - Inline_dentry Inode: 2
  - Orphan Inode: 0

Main area: 8112 segs, 507 secs 507 zones
  - COLD  data: 0, 0, 0
  - WARM  data: 292, 18, 18
  - HOT   data: 8048, 503, 503
  - Dir   dnode: 8096, 506, 506
  - File   dnode: 8082, 505, 505
  - Indir nodes: 8064, 504, 504

  - Valid: 6
  - Dirty: 0
  - Prefree: 278
  - Free: 7828 (484)

CP calls: 2 (BG: 1)
GC calls: 0 (BG: 0)
  - data segments : 0 (0)
  - node segments : 0 (0)
Try to move 0 blocks (BG: 0)
  - data blocks : 0 (0)
  - node blocks : 0 (0)

Extent Cache:
  - Hit Count: L1-1:0 L1-2:0 L2:0
  - Hit Ratio: 0% (0 / 0)
  - Inner Struct Count: tree: 1(0), node: 0

Balancing F2FS Async:
  - inmem:    0, wb_cp_data:    0, wb_data:    0
  - nodes:    3 in    4
  - dents:    1 in dirs:   1 (   4)
  - datas:    0 in files:   0
  - meta:    0 in  451
  - imeta:    4
  - NATs:       145/      146
  - SITs:       281/     8112
  - free_nids:      3491, alloc_nids:         0

Distribution of User Blocks: [ valid | invalid | free ]
  [|---|-----------------------------------------------]

IPU: 0 blocks
SSR: 0 blocks in 0 segments
LFS: 142555 blocks in 278 segments

BDF: 99, avg. vblocks: 0

Memory: 3797 KB
  - static: 1884 KB
  - cached: 92 KB
  - paged : 1820 KB
Main blkaddr: 38912
Current benefit sections: 0
Checkpoint try count :142010
  - CP   Calls : 2
  - ToTAL W: 17
  - Dent Writes: 1
  - Node Writes: 5
  - NAT  Writes: 1
  - SIT  Writes: 6
  - CP   Writes: 4


Hot data section LFS allocation: 0
Hot data section SSR allocation: 0
Warm data section LFS allocation: 17
Warm data section SSR allocation: 0
Cold data section LFS allocation: 0
Cold data section SSR allocation: 0
Hot node section LFS allocation: 0
Hot node section SSR allocation: 0
Warm node section LFS allocation: 0
Warm node section SSR allocation: 0
Cold node section LFS allocation: 0
Cold node section SSR allocation: 0
Total LFS allocation: 17
Total SSR allocation: 0

Hot data LFS block write: 1
Hot data SSR block write: 0
Warm data LFS block write: 141312
Warm data SSR block write: 0
Cold data LFS block write: 0
Cold data SSR block write: 0
Hot node LFS block write: 3
Hot node SSR block write: 0
Warm node LFS block write: 1238
Warm node SSR block write: 0
Cold node LFS block write: 1
Cold node SSR block write: 0
Total LFS block write: 142555
Total SSR block write: 0

Data write count: 141313
Node write count: 1242
Meta write count: 291

Host I/O: 0
Orig_cpbk 0
IM_cached_pages: 0
IM_all_cached_pages: 0
IM - data: 0 - 0
DEV R/W: 0 
DEV CPBK: 0

GC time breakdown
DATA - 0 (tick)
init phase: 0 (tick)
IZC phase: 0 (tick)
checkpoint: 0 (tick)
1.030: Running...
61.037: Run took 60 seconds...
61.038: Per-Operation Breakdown
write-file           11550ops      192ops/s 192.5mb/s    5.192ms/op [0.020ms - 29.749ms]
61.038: IO Summary: 11550 ops 192.476 ops/s 0/192 rd/wr 192.5mb/s 5.192ms/op
61.038: Shutting down processes
