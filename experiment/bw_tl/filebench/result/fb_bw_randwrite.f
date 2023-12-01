Filebench Version 1.5-alpha3
0.000: Allocated 173MB of shared memory
0.014: FileMicro-WriteRand Version 2.1 personality successfully loaded
0.014: Populating and pre-allocating filesets
0.015: Removing bigfile1 tree (if exists)
0.032: Pre-allocating directories in bigfile1 tree
0.032: Pre-allocating files in bigfile1 tree
2.942: Waiting for pre-allocation to finish (in case of a parallel pre-allocation)
2.942: Population and pre-allocation of filesets completed
2.950: Starting 1 filewriter instances

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
  - COLD  data: 0, 0, 0
  - WARM  data: 6084, 380, 380
  - HOT   data: 8048, 503, 503
  - Dir   dnode: 8096, 506, 506
  - File   dnode: 8080, 505, 505
  - Indir nodes: 8064, 504, 504

  - Valid: 6074
  - Dirty: 0
  - Prefree: 0
  - Free: 2038 (122)

CP calls: 0 (BG: 0)
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
  - nodes: 3099 in 3099
  - dents:    1 in dirs:   1 (   0)
  - datas: 38912 in files:   0
  - meta: 1972 in 2232
  - imeta:    0
  - NATs:      3098/     3098
  - SITs:      6069/     8112
  - free_nids:       538, alloc_nids:         0

Distribution of User Blocks: [ valid | invalid | free ]
  [-------------------------------------------|-|------]

IPU: 0 blocks
SSR: 0 blocks in 0 segments
LFS: 3106816 blocks in 6068 segments

BDF: 99, avg. vblocks: 0

Memory: 23439 KB
  - static: 1884 KB
  - cached: 230 KB
  - paged : 21324 KB
Main blkaddr: 38912
Current benefit sections: 0
Checkpoint try count :3109908
  - CP   Calls : 0
  - ToTAL W: 0
  - Dent Writes: 0
  - Node Writes: 0
  - NAT  Writes: 0
  - SIT  Writes: 0
  - CP   Writes: 0


Hot data section LFS allocation: 0
Hot data section SSR allocation: 0
Warm data section LFS allocation: 379
Warm data section SSR allocation: 0
Cold data section LFS allocation: 0
Cold data section SSR allocation: 0
Hot node section LFS allocation: 0
Hot node section SSR allocation: 0
Warm node section LFS allocation: 0
Warm node section SSR allocation: 0
Cold node section LFS allocation: 0
Cold node section SSR allocation: 0
Total LFS allocation: 379
Total SSR allocation: 0

Hot data LFS block write: 0
Hot data SSR block write: 0
Warm data LFS block write: 3106816
Warm data SSR block write: 0
Cold data LFS block write: 0
Cold data SSR block write: 0
Hot node LFS block write: 0
Hot node SSR block write: 0
Warm node LFS block write: 0
Warm node SSR block write: 0
Cold node LFS block write: 0
Cold node SSR block write: 0
Total LFS block write: 3106816
Total SSR block write: 0

Data write count: 3106816
Node write count: 0
Meta write count: 4096

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
3.972: Running...
63.983: Run took 60 seconds...
63.983: Per-Operation Breakdown
write-file           9698ops      162ops/s   2.5mb/s    6.186ms/op [1.872ms - 44.825ms]
63.983: IO Summary:  9698 ops 161.606 ops/s 0/162 rd/wr   2.5mb/s 6.186ms/op
63.983: Shutting down processes
