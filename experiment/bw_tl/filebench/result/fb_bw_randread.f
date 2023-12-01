Filebench Version 1.5-alpha3
0.000: Allocated 173MB of shared memory
0.001: FileMicro-ReadRand Version 2.2 personality successfully loaded
0.001: Populating and pre-allocating filesets
0.001: Reusing existing bigfile1 tree
0.001: Pre-allocating files in bigfile1 tree
0.001: Waiting for pre-allocation to finish (in case of a parallel pre-allocation)
0.001: Population and pre-allocation of filesets completed
0.001: Starting 1 filereader instances

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
  - WARM  data: 6235, 389, 389
  - HOT   data: 8048, 503, 503
  - Dir   dnode: 8096, 506, 506
  - File   dnode: 8041, 502, 502
  - Indir nodes: 8064, 504, 504

  - Valid: 1286
  - Dirty: 4964
  - Prefree: 0
  - Free: 1862 (112)

CP calls: 1 (BG: 0)
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
  - nodes:    0 in 3099
  - dents:    0 in dirs:   0 (   0)
  - datas:    0 in files:   0
  - meta:  170 in 2215
  - imeta:    0
  - NATs:      2947/     2947
  - SITs:      5017/     8112
  - free_nids:       538, alloc_nids:         0

Distribution of User Blocks: [ valid | invalid | free ]
  [--------------------------------------------|-|-----]

IPU: 0 blocks
SSR: 0 blocks in 0 segments
LFS: 3197496 blocks in 6244 segments

BDF: 95, avg. vblocks: 7991

Memory: 23360 KB
  - static: 1884 KB
  - cached: 219 KB
  - paged : 21256 KB
Main blkaddr: 38912
Current benefit sections: 0
Checkpoint try count :3187572
  - CP   Calls : 1
  - ToTAL W: 3221
  - Dent Writes: 1
  - Node Writes: 3099
  - NAT  Writes: 7
  - SIT  Writes: 112
  - CP   Writes: 2


Hot data section LFS allocation: 0
Hot data section SSR allocation: 0
Warm data section LFS allocation: 9
Warm data section SSR allocation: 0
Cold data section LFS allocation: 0
Cold data section SSR allocation: 0
Hot node section LFS allocation: 0
Hot node section SSR allocation: 0
Warm node section LFS allocation: 1
Warm node section SSR allocation: 0
Cold node section LFS allocation: 0
Cold node section SSR allocation: 0
Total LFS allocation: 10
Total SSR allocation: 0

Hot data LFS block write: 1
Hot data SSR block write: 0
Warm data LFS block write: 77664
Warm data SSR block write: 0
Cold data LFS block write: 0
Cold data SSR block write: 0
Hot node LFS block write: 3
Hot node SSR block write: 0
Warm node LFS block write: 13007
Warm node SSR block write: 0
Cold node LFS block write: 5
Cold node SSR block write: 0
Total LFS block write: 90680
Total SSR block write: 0

Data write count: 77665
Node write count: 13015
Meta write count: 6196

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
1.005: Running...
61.009: Run took 60 seconds...
61.035: Per-Operation Breakdown
read-file            2216197ops    36934ops/s 577.1mb/s    0.027ms/op [0.001ms - 6.279ms]
61.035: IO Summary: 2216197 ops 36934.026 ops/s 36934/0 rd/wr 577.1mb/s 0.027ms/op
61.035: Shutting down processes
