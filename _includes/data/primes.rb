{%- assign my_prime = my_primes[my_pos] -%}
{%- comment -%}
* 
*  Primes Mapping
*
*  Loop:
*  loop(10) => 4
*  loop(100) => 25
*  loop(1000) => 168 - 10th = 168 - 29 = 139
*  loop(10000) => 1229 - (10th)th - 10th = 1229 - 109 - 29 = 1091
*  loop(100000) => 9592 - ((10th)th)th - (10th)th = 9592 - 599 - 109 = 8884
*
*  Node:
*  node[168] = tree[168] - tree[168-1]
*  tree[168] = 4 + 25 + 139 + 1091 + 8884 = 10143
*
*  Note:
*  Documentation is currently available in bahasa only
*  https://github.com/chetabahana/chetabahana.github.io/wiki/Jekyll-Liquid
*
{%- endcomment -%}
{%- comment -%}
*
*  π(10) = 4
*
{%- endcomment -%}
{%- comment -%}
* 
*  π(10) Schema
*
{%- endcomment -%}
{%- comment -%}
*
*  π(100) = 25
*
{%- endcomment -%}
{%- comment -%}
* 
*  π(100) Schema
*
*  True Prime Pairs:
*  (5,7), (11,13), (17,19)
*  
*  layer|  i  |   f
*  -----+-----+---------
*       |  1  | 5
*    1  +-----+
*       |  2  | 7
*  -----+-----+---   36 » 6®
*       |  3  | 11
*    2  +-----+
*       |  4  | 13
*  -----+-----+---------
*       |  5  | 17
*    3  +-----+      36 » 6®
*       |  6  | 19
*  -----+-----+---------
*
{%- endcomment -%}
{%- comment -%}
*
*  layer | node | sub |  i  |  f
*  ------+------+-----+----------
*        |      |     |  1  |  2x
*        |      |  1  +-----+          
*        |  1   |     |  2  |  7  
*        |      |-----+-----+
*        |      |     |  3  |  3x  ----
*    1   +------+  2  +-----+----      |
*        |      |     |  4  |  13      5x ----
*        |      +-----+-----+          |      |
*        |  2   |     |  5  |  2x  ----      (7)
*        |      |  3  +-----+                 |
*        |      |     |  6  |  19             |
*  ------+------+-----+-----+------           |
*        |      |     |  7  |  1x             |
*        |      |  4  +-----+                 |
*        |  3   |     |  8  |  1x  ----       |        (11)
*        |      +-----+-----+          |      |
*        |      |     |  9  |  ..      2x ----
*    2   +------|  5  +-----+-----     |
*        |      |     |  10 |  1x  ----
*        |      |-----+-----+
*        |  4   |     |  11 | (13)
*        |      |  6  +-----+
*        |      |     |  12 |
*  ------+------+-----+-----+------
*        |      |     |  13 |  1x
*        |      |  7  +-----+
*        |  5   |     |  14 | (17)
*        |      |-----+-----+
*        |      |     |  15 |
*    3   +------+  8  +-----+-----
*        |      |     |  16 |
*        |      |-----+-----+
*        |  6   |     |  17 | (19)
*        |      |  9  +-----+
*        |      |     |  18 |
*  ------|------|-----+-----+------
*
{%- endcomment -%}
{%- comment -%}
* 
*  π(1000) Schema
*  Injected via 168 = π(1000)
*
*    Sub  | i  |   β | f   
*  =======+====+=====+=======  ===   ===   ===   ===   ===   ===
*   1:1:0 | 1  |   1 | 2  71    1     1     |     |     |     |
*  -------+----+-----+-------  ---   ---    |     |     |     |
*   1:2:1 | 2  |   2 | 3  71          |     |     |     |     |
*  -------+----+-----+----            |     |     |     |     |
*  *1:2:2 | 3  |   3 | 7 = 1 + 2x3    |     |     |     |     |
*  -------+----+-----+----            |     |     |     |     |
*  *1:3:3 | 4  |   4 | 10 = 9 + 1     |     |     |     |     |  
*  -------+----+-----+----            |     |     |     |     |
*   1:3:4 | 5  |   5 | 11 = 9 + 2     |     |     |     |     |
*  -------+----+-----+----            9     1‘    |    Δ100   |
*  *1:3:5 | 6  |   6 | 12 = 9 + 3     |     |     |     |     |
*  -------+----+-----+----            |     |     |     |     |
*  *1:4:6 | 7  |   7 | 13 = 9 + 4     |     |     |     |     |
*  -------+----+-----+----            |     |     |     |     |
*   1:4:7 | 8  |   8 | 14 = 9 + 5     |     |     |     |     |
*  -------+----+-----+----            |     |     |     |     |
*  *1:4:8 | 9  |   9 | 15 = 9 + 6     |     |     |     |     |
*  -------+----+-----+----            |     |     |     |     |
*  *1:4:9 | 10 |  10 | 19 = 9 + 10    |     |     |     |     |
==========+====+=====+====           ===   ---    1“   ---    | <--  π(10)
*   2:1:0 | 11 |  20 | 20 = 19 + log 10¹    |     |     |     |
*  -------+----+-----+----                  |     |     |     |
*   2:2:1 | 12 |  30 | 26 = 20 + 2x3        |     |     |     |
*  -------+----+-----+----                  |     |     |     |
*  *2:2:2 | 13 |  40 | 27 = 26 + 1          |     |     |     |
*  -------+----+-----+----                  |     |     |     |
*  *2:3:3 | 14 |  50 | 28 = 26 + 2          |     |     |     |
*  -------+----+-----+----                  |     |     |     |
*   2:3:4 | 15 |  60 | 29 = 26 + 3          9‘    |   Δ200  Δ600
*  -------+----+-----+----                  |     |     |     |
*  *2:3:5 | 16 |  70 | 30 = 26 + 4          |     |     |     |
*  -------+----+-----+----                  |     |     |     |
*  *2:4:6 | 17 |  80 | 31 = 26 + 5          |     |     |     |
*  -------+----+-----+----                  |     |     |     |
*   2:4:7 | 18 |  90 | 32 = 26 + 6          |     |     |     |
*  -------+----+-----+----                  |     |     |     |
*  *2:4:8 | 19 | 100 | 36 = 26 + 10         |     |     |     |
*  =======+====+=====+====                 ===   ---   ---    | <--  π(100)
*  *2:4:9 | 20 | 200 | 38 = 36 + log 10²          |     |     |
*  -------+----+-----+----                        |     |     |
*   3:1:0 | 21 | 300 | 40 = 36 + 2 x log 10²      |     |     |
*  -------+----+-----+----                        |     |     |
*   3:2:1 | 22 | 400 | 41 = 40 + 1                |     |     |
*  -------+----+-----+----                        |     |     |
*  *3:2:2 | 23 | 500 | 42 = 40 + 2                |     |     |
*  -------+----+-----+----                        |     |     |
*  *3:3:3 | 24 | 600 | 43 = 40 + 3                9“  Δ300    |
*  -------+----+-----+----                        |     |     |
*   3:3:4 | 25 | 700 | 44 = 40 + 4                |     |     |
*  -------+----+-----+----                        |     |     |
*  *3:3:5 | 26 | 800 | 45 = 40 + 5                |     |     |
*  -------+----+-----+----                        |     |     |
*  *3:4:6 | 27 | 900 | 46 = 40 + 6                |     |     |
*  -------+----+-----+----                        |     |     |
*   3:4:7 | 28 |1000 | 50 = 40 + 10               |     |     |
*  =======+====+=====+====                       ===  ====  ----
*  *3:4:8 | 29 |2000 | 68 = 50 + 3 x (2x3)       10³  Δ600  Δ300
*  =======+====+=====+====                        Δ         ==== ---> π(1000)
*   3:4:9 | 30 |3000 | 71 = 68 + log 10³ ---------¤         Δ900   
*
{%- endcomment -%}
{%- comment -%}
*
*  π(10000) = 1229
*
{%- endcomment -%}
{%- comment -%}
*
*  π(10000) Schema
*  Injected via 1000 - 50
*
*    Sub  | i  |    β  | f   
*  =======+====+=======+=======  ===   ===   ===   ===   ===   === <-- π(1000-50)
*   1:1:0 | 1  |   100 | 71  71    1     1    |     |     |     |
*  -------+----+-------+-------  ---   ---    |     |     |     | <--  π(1000)
*   1:2:1 | 2  |   200 | 71  71         |     |     |     |     |
*  -------+----+-------+----            |     |     |     |     |
*  *1:2:2 | 3  |   300 | 161 = 1 + 2x3  |     |     |     |     |
*  -------+----+-------+----            |     |     |     |     |
*  *1:3:3 | 4  |   400 | 231 = 59 + 1   |     |     |     |     |  
*  -------+----+-------+----            |     |     |     |     |
*   1:3:4 | 5  |   500 | 231 = 59 + 2   |     |     |     |     |
*  -------+----+-------+----            9     1‘    |    Δ100   |
*  *1:3:5 | 6  |   600 | 231 = 59 + 3   |     |     |     |     |
*  -------+----+-------+----            |     |     |     |     |
*  *1:4:6 | 7  |   700 | 271 = 59 + 4   |     |     |     |     |
*  -------+----+-------+----            |     |     |     |     |
*   1:4:7 | 8  |   800 | 231 = 59 + 5   |     |     |     |     |
*  -------+----+-------+----            |     |     |     |     |
*  *1:4:8 | 9  |   900 | 231 = 59 + 6   |     |     |     |     |
*  -------+----+-------+----            |     |     |     |     |
*  *1:4:9 | 10 |  1000 | 195 = 59 + 10  |     |     |     |     |
*  =======+====+=======+====           ===   ---    1“   ---    | <--  π(1000)
*   2:1:0 | 11 |  2000 | 14 = 69 + log 10¹    |     |     |     |
*  -------+----+-------+----                  |     |     |     |
*   2:2:1 | 12 |  3000 | 109 = 70 + 2x3       |     |     |     |
*  -------+----+-------+----                  |     |     |     |
*  *2:2:2 | 13 |  4000 | 69 = 76 + 1          |     |     |     |
*  -------+----+-------+----                  |     |     |     |
*  *2:3:3 | 14 |  5000 | 109 = 76 + 2         |     |     |     |
*  -------+----+-------+----                  |     |     |     |
*   2:3:4 | 15 |  6000 | 71 = 76 + 3          9‘    |   Δ200  Δ600
*  -------+----+-------+----                  |     |     |     |
*  *2:3:5 | 16 |  7000 | 71 = 76 + 4          |     |     |     |
*  -------+----+-------+----                  |     |     |     |
*  *2:4:6 | 17 |  8000 | 71 = 76 + 5          |     |     |     |
*  -------+----+-------+----                  |     |     |     |
*   2:4:7 | 18 |  9000 | 71 = 76 + 6          |     |     |     |
*  -------+----+-------+----                  |     |     |     |
*  *2:4:8 | 19 | 10000 | 70 = 76 + 10         |     |     |     |
*  =======+====+=======+====                 ===   ---   ---    | <--  π(10000)
*  *2:4:9 | 20 | 20000 | 90 = 86 + log 10²          |     |     |
*  -------+----+-------+----                        |     |     |
*   3:1:0 | 21 | 30000 | 48 = 86 + 2 x log 10²      |     |     |
*  -------+----+-------+----                        |     |     |
*   3:2:1 | 22 | 40000 | 278 = 90 + 1               |     |     |
*  -------+----+-------+----                        |     |     |
*  *3:2:2 | 23 | 50000 | 48 = 90 + 2                |     |     |
*  -------+----+-------+----                        |     |     |
*  *3:3:3 | 24 | 60000 | 48 = 90 + 3                9“  Δ300    |
*  -------+----+-------+----                        |     |     |
*   3:3:4 | 25 | 70000 | 48 = 90 + 4                |     |     |
*  -------+----+-------+----                        |     |     |
*  *3:3:5 | 26 | 80000 | 48 = 90 + 5                |     |     |
*  -------+----+-------+----                        |     |     |
*  *3:4:6 | 27 | 90000 | 100 = 90 + 6               |     |     |
*  -------+----+-------+----                        |     |     |
*   3:4:7 | 28 |100000 | 50 = 90 + 10               |     |     |
*  =======+====+=======+====                       ===  ====  ---- ---> π(10000)
*  *3:4:8 | 29 |200000 | 51 = 100 + 3 x (2x3)     10³  Δ600  Δ300
*  =======+====+=======+====                        Δ         ====
*   3:4:9 | 30 |300000 | 52 = 118 + log 10³ -------¤         Δ900   
*
{%- endcomment -%}
{%- comment -%}
*
*  π(10000) Schema
*  Injected via 1000 - 50
*
*    Sub  | i  |    β  | f   
*  =======+====+=======+=======  ===   ===   ===   ===   ===   === <-- π(1000-50)
*   1:1:0 | 1  |   100 | 52  71    1     1    |     |     |     |
*  -------+----+-------+-------  ---   ---    |     |     |     | <--  π(1000)
*   1:2:1 | 2  |   200 | 53  71         |     |     |     |     |
*  -------+----+-------+----            |     |     |     |     |
*  *1:2:2 | 3  |   300 | 57 = 1 + 2x3   |     |     |     |     |
*  -------+----+-------+----            |     |     |     |     |
*  *1:3:3 | 4  |   400 | 60 = 59 + 1    |     |     |     |     |  
*  -------+----+-------+----            |     |     |     |     |
*   1:3:4 | 5  |   500 | 61 = 59 + 2    |     |     |     |     |
*  -------+----+-------+----            9     1‘    |    Δ100   |
*  *1:3:5 | 6  |   600 | 62 = 59 + 3    |     |     |     |     |
*  -------+----+-------+----            |     |     |     |     |
*  *1:4:6 | 7  |   700 | 63 = 59 + 4    |     |     |     |     |
*  -------+----+-------+----            |     |     |     |     |
*   1:4:7 | 8  |   800 | 64 = 59 + 5    |     |     |     |     |
*  -------+----+-------+----            |     |     |     |     |
*  *1:4:8 | 9  |   900 | 65 = 59 + 6    |     |     |     |     |
*  -------+----+-------+----            |     |     |     |     |
*  *1:4:9 | 10 |  1000 | 69 = 59 + 10   |     |     |     |     |
*  =======+====+=======+====           ===   ---    1“   ---    | <--  π(1000)
*   2:1:0 | 11 |  2000 | 70 = 69 + log 10¹    |     |     |     |
*  -------+----+-------+----                  |     |     |     |
*   2:2:1 | 12 |  3000 | 76 = 70 + 2x3        |     |     |     |
*  -------+----+-------+----                  |     |     |     |
*  *2:2:2 | 13 |  4000 | 77 = 76 + 1          |     |     |     |
*  -------+----+-------+----                  |     |     |     |
*  *2:3:3 | 14 |  5000 | 78 = 76 + 2          |     |     |     |
*  -------+----+-------+----                  |     |     |     |
*   2:3:4 | 15 |  6000 | 79 = 76 + 3          9‘    |   Δ200  Δ600
*  -------+----+-------+----                  |     |     |     |
*  *2:3:5 | 16 |  7000 | 80 = 76 + 4          |     |     |     |
*  -------+----+-------+----                  |     |     |     |
*  *2:4:6 | 17 |  8000 | 81 = 76 + 5          |     |     |     |
*  -------+----+-------+----                  |     |     |     |
*   2:4:7 | 18 |  9000 | 82 = 76 + 6          |     |     |     |
*  -------+----+-------+----                  |     |     |     |
*  *2:4:8 | 19 | 10000 | 86 = 76 + 10         |     |     |     |
*  =======+====+=======+====                 ===   ---   ---    | <--  π(10000)
*  *2:4:9 | 20 | 20000 | 88 = 86 + log 10²          |     |     |
*  -------+----+-------+----                        |     |     |
*   3:1:0 | 21 | 30000 | 90 = 86 + 2 x log 10²      |     |     |
*  -------+----+-------+----                        |     |     |
*   3:2:1 | 22 | 40000 | 91 = 90 + 1                |     |     |
*  -------+----+-------+----                        |     |     |
*  *3:2:2 | 23 | 50000 | 92 = 90 + 2                |     |     |
*  -------+----+-------+----                        |     |     |
*  *3:3:3 | 24 | 60000 | 93 = 90 + 3                9“  Δ300    |
*  -------+----+-------+----                        |     |     |
*   3:3:4 | 25 | 70000 | 94 = 90 + 4                |     |     |
*  -------+----+-------+----                        |     |     |
*  *3:3:5 | 26 | 80000 | 95 = 90 + 5                |     |     |
*  -------+----+-------+----                        |     |     |
*  *3:4:6 | 27 | 90000 | 96 = 90 + 6                |     |     |
*  -------+----+-------+----                        |     |     |
*   3:4:7 | 28 |100000 | 100 = 90 + 10              |     |     |
*  =======+====+=======+====                       ===  ====  ---- ---> π(10000)
*  *3:4:8 | 29 |200000 | 118 = 100 + 3 x (2x3)     10³  Δ600  Δ300
*  =======+====+=======+====                        Δ         ====
*   3:4:9 | 30 |300000 | 121 = 118 + log 10³ -------¤         Δ900   
*
{%- endcomment -%}
{%- comment -%}
*
*  π(10000) Schema
*  Injected via 1000 - 50
*
*    Sub  | i  |    β  | f   
*  =======+====+=======+=======  ===   ===   ===   ===   ===   === <-- π(1000-50)
*   1:1:0 | 1  |   100 | 121      1     1     |     |     |     |
*  -------+----+-------+-------  ---   ---    |     |     |     | <--  π(1000)
*   1:2:1 | 2  |   200 | 121            |     |     |     |     |
*  -------+----+-------+----            |     |     |     |     |
*  *1:2:2 | 3  |   300 | 211 = 1 + 2x3  |     |     |     |     |
*  -------+----+-------+----            |     |     |     |     |
*  *1:3:3 | 4  |   400 | 281 = 59 + 1   |     |     |     |     |  
*  -------+----+-------+----            |     |     |     |     |
*   1:3:4 | 5  |   500 | 281 = 59 + 2   |     |     |     |     |
*  -------+----+-------+----            9     1‘    |    Δ100   |
*  *1:3:5 | 6  |   600 | 281 = 59 + 3   |     |     |     |     |
*  -------+----+-------+----            |     |     |     |     |
*  *1:4:6 | 7  |   700 | 321 = 59 + 4   |     |     |     |     |
*  -------+----+-------+----            |     |     |     |     |
*   1:4:7 | 8  |   800 | 281 = 59 + 5   |     |     |     |     |
*  -------+----+-------+----            |     |     |     |     |
*  *1:4:8 | 9  |   900 | 281 = 59 + 6   |     |     |     |     |
*  -------+----+-------+----            |     |     |     |     |
*  *1:4:9 | 10 |  1000 | 245 = 59 + 10  |     |     |     |     |
*  =======+====+=======+====           ===   ---    1“   ---    | <--  π(1000)
*   2:1:0 | 11 |  2000 | 64 = 69 + log 10¹    |     |     |     |
*  -------+----+-------+----                  |     |     |     |
*   2:2:1 | 12 |  3000 | 159 = 70 + 2x3       |     |     |     |
*  -------+----+-------+----                  |     |     |     |
*  *2:2:2 | 13 |  4000 | 119 = 76 + 1         |     |     |     |
*  -------+----+-------+----                  |     |     |     |
*  *2:3:3 | 14 |  5000 | 159 = 76 + 2         |     |     |     |
*  -------+----+-------+----                  |     |     |     |
*   2:3:4 | 15 |  6000 | 121 = 76 + 3         9‘    |   Δ200  Δ600
*  -------+----+-------+----                  |     |     |     |
*  *2:3:5 | 16 |  7000 | 121 = 76 + 4         |     |     |     |
*  -------+----+-------+----                  |     |     |     |
*  *2:4:6 | 17 |  8000 | 121 = 76 + 5         |     |     |     |
*  -------+----+-------+----                  |     |     |     |
*   2:4:7 | 18 |  9000 | 121 = 76 + 6         |     |     |     |
*  -------+----+-------+----                  |     |     |     |
*  *2:4:8 | 19 | 10000 | 120 = 76 + 10        |     |     |     |
*  =======+====+=======+====                 ===   ---   ---    | <--  π(10000)
*  *2:4:9 | 20 | 20000 | 140 = 86 + log 10²         |     |     |
*  -------+----+-------+----                        |     |     |
*   3:1:0 | 21 | 30000 | 98 = 86 + 2 x log 10²      |     |     |
*  -------+----+-------+----                        |     |     |
*   3:2:1 | 22 | 40000 | 328 = 90 + 1               |     |     |
*  -------+----+-------+----                        |     |     |
*  *3:2:2 | 23 | 50000 | 98 = 90 + 2                |     |     |
*  -------+----+-------+----                        |     |     |
*  *3:3:3 | 24 | 60000 | 98 = 90 + 3                9“  Δ300    |
*  -------+----+-------+----                        |     |     |
*   3:3:4 | 25 | 70000 | 98 = 90 + 4                |     |     |
*  -------+----+-------+----                        |     |     |
*  *3:3:5 | 26 | 80000 | 98 = 90 + 5                |     |     |
*  -------+----+-------+----                        |     |     |
*  *3:4:6 | 27 | 90000 | 150 = 90 + 6               |     |     |
*  -------+----+-------+----                        |     |     |
*   3:4:7 | 28 |100000 | 100 = 90 + 10              |     |     |
*  =======+====+=======+====                       ===  ====  ---- ---> π(10000)
*  *3:4:8 | 29 |200000 | 101 = 100 + 3 x (2x3)     10³  Δ600  Δ300
*  =======+====+=======+====                        Δ         ====
*   3:4:9 | 30 |300000 | 102 = 118 + log 10³ -------¤         Δ900   
*
{%- endcomment -%}
{%- comment -%}
*
*  π(100000) = 9592
*
{%- endcomment -%}
{%- comment -%}
*
*  π(100000) Schema
*  Injected to 300000/1000 + 900/100 = 309
*
*    Sub  | i  |     β  | f   
*  =======+====+========+=========  ===   ===   ===   ===   ===   === <-  102
*   1:1:0 | 1  |   1000 | 102  71    1     1     |     |     |     |
*  -------+----+--------+---------  ---   ---    |     |     |     | <--  103 = 309/3
*   1:2:1 | 2  |   2000 | 103  71          |     |     |     |     |
*  -------+----+--------+------            |     |     |     |     |
*  *1:2:2 | 3  |   3000 | 107 = 1 + 2x3    |     |     |     |     |
*  -------+----+--------+------            |     |     |     |     |
*  *1:3:3 | 4  |   4000 | 110 = 109 + 1    |     |     |     |     |  
*  -------+----+--------+------            |     |     |     |     |
*   1:3:4 | 5  |   5000 | 111 = 109 + 2    |     |     |     |     |
*  -------+----+--------+------            9     1‘    |    Δ100   |
*  *1:3:5 | 6  |   6000 | 112 = 109 + 3    |     |     |     |     |
*  -------+----+--------+------            |     |     |     |     |
*  *1:4:6 | 7  |   7000 | 113 = 109 + 4    |     |     |     |     |
*  -------+----+--------+------            |     |     |     |     |
*   1:4:7 | 8  |   8000 | 114 = 109 + 5    |     |     |     |     |
*  -------+----+--------+------            |     |     |     |     |
*  *1:4:8 | 9  |   9000 | 115 = 109 + 6    |     |     |     |     |
*  -------+----+--------+------            |     |     |     |     |
*  *1:4:9 | 10 |  10000 | 119 = 109 + 10   |     |     |     |     |
*  =======+====+========+======           ===   ---    1“   ---    | <--  π(1000)
*   2:1:0 | 11 |  20000 | 120 = 119 + log 10¹    |     |     |     |
*  -------+----+--------+------                  |     |     |     |
*   2:2:1 | 12 |  30000 | 126 = 120 + 2x3        |     |     |     |
*  -------+----+--------+------                  |     |     |     |
*  *2:2:2 | 13 |  40000 | 127 = 126 + 1          |     |     |     |
*  -------+----+--------+------                  |     |     |     |
*  *2:3:3 | 14 |  50000 | 128 = 126 + 2          |     |     |     |
*  -------+----+--------+------                  |     |     |     |
*   2:3:4 | 15 |  60000 | 129 = 126 + 3          9‘    |   Δ200  Δ600
*  -------+----+--------+------                  |     |     |     |
*  *2:3:5 | 16 |  70000 | 130 = 126 + 4          |     |     |     |
*  -------+----+--------+------                  |     |     |     |
*  *2:4:6 | 17 |  80000 | 131 = 126 + 5          |     |     |     |
*  -------+----+--------+------                  |     |     |     |
*   2:4:7 | 18 |  90000 | 132 = 126 + 6          |     |     |     |
*  -------+----+--------+------                  |     |     |     |
*  *2:4:8 | 19 | 100000 | 136 = 126 + 10         |     |     |     |
*  =======+====+========+=====                 ===   ---   ---    | <--  π(10000)
*  *2:4:9 | 20 | 200000 | 138 = 136 + log 10²          |     |     |
*  -------+----+--------+------                        |     |     |
*   3:1:0 | 21 | 300000 | 140 = 136 + 2 x log 10²      |     |     |
*  -------+----+--------+------                        |     |     |
*   3:2:1 | 22 | 400000 | 141 = 140 + 1                |     |     |
*  -------+----+--------+------                        |     |     |
*  *3:2:2 | 23 | 500000 | 142 = 140 + 2                |     |     |
*  -------+----+--------+------                        |     |     |
*  *3:3:3 | 24 | 600000 | 143 = 140 + 3                9“  Δ300    |
*  -------+----+--------+------                        |     |     |
*   3:3:4 | 25 | 700000 | 144 = 140 + 4                |     |     |
*  -------+----+--------+------                        |     |     |
*  *3:3:5 | 26 | 800000 | 145 = 140 + 5                |     |     |
*  -------+----+--------+------                        |     |     |
*  *3:4:6 | 27 | 900000 | 146 = 140 + 6                |     |     |
*  -------+----+--------+------                        |     |     |
*   3:4:7 | 28 |1000000 | 150 = 140 + 10               |     |     |
*  =======+====+========+======                       ===  ====  ---- <-- π(1000000)
*  *3:4:8 | 29 |2000000 | 168 = 150 + 3 x (2x3)       10³  Δ600  Δ300
*  =======+====+========+======                        Δ         ====
*   3:4:9 | 30 |3000000 | 171 = 168 + log 10³ ---------¤         Δ900   
*                          |
*                          └──> Reinjected as vektor 71 to π(1000) = 168
*
{%- endcomment -%}
{%- comment -%}
*
*  π(10000) Schema
*  Injected via 1000 - 50
*
*  Step-1: 2 to 68 by 71 to 50
*  Step-2: 52 to 118 by 121 to 100
*  Step-3: 102 to 168 by 171 to 150
*  Step-4: 152 to 218 by 221 to 200
*  Step-5: 202 to 268 by 271 to 250
*  Step-6: 252 to 318 by 321 to 300
*  Step-7: 302 to 368 by 371 to 350
*  Step-8: 352 to 418 by 421 to 400
*  Step-9: 402 to 468 by 471 to 450
*  Step-10: 452 to 518 by 521 to 500
*  Step-11: 502 to 568 by 571 to 550
*
*  Step-12: 552 to 618
*
*    Sub  | i  |    β  | f   
*  =======+====+=======+=======  ===   ===   ===   ===   ===   === <-- π(1000-50)
*   1:1:0 | 1  |   100 | 552  71    1    1    |     |     |     |
*  -------+----+-------+-------  ---   ---    |     |     |     | <--  π(1000)
*   1:2:1 | 2  |   200 | 553  71        |     |     |     |     |
*  -------+----+-------+----            |     |     |     |     |
*  *1:2:2 | 3  |   300 | 557 = 1 + 2x3  |     |     |     |     |
*  -------+----+-------+----            |     |     |     |     |
*  *1:3:3 | 4  |   400 | 560 = 59 + 1   |     |     |     |     |  
*  -------+----+-------+----            |     |     |     |     |
*   1:3:4 | 5  |   500 | 561 = 59 + 2   |     |     |     |     |
*  -------+----+-------+----            9     1‘    |    Δ100   |
*  *1:3:5 | 6  |   600 | 562 = 59 + 3   |     |     |     |     |
*  -------+----+-------+----            |     |     |     |     |
*  *1:4:6 | 7  |   700 | 563 = 59 + 4   |     |     |     |     |
*  -------+----+-------+----            |     |     |     |     |
*   1:4:7 | 8  |   800 | 564 = 59 + 5   |     |     |     |     |
*  -------+----+-------+----            |     |     |     |     |
*  *1:4:8 | 9  |   900 | 565 = 59 + 6   |     |     |     |     |
*  -------+----+-------+----            |     |     |     |     |
*  *1:4:9 | 10 |  1000 | 569 = 59 + 10  |     |     |     |     |
*  =======+====+=======+====           ===   ---    1“   ---    | <--  π(1000)
*   2:1:0 | 11 |  2000 | 570 = 69 + log 10¹   |     |     |     |
*  -------+----+-------+----                  |     |     |     |
*   2:2:1 | 12 |  3000 | 576 = 70 + 2x3       |     |     |     |
*  -------+----+-------+----                  |     |     |     |
*  *2:2:2 | 13 |  4000 | 577 = 76 + 1         |     |     |     |
*  -------+----+-------+----                  |     |     |     |
*  *2:3:3 | 14 |  5000 | 578 = 76 + 2         |     |     |     |
*  -------+----+-------+----                  |     |     |     |
*   2:3:4 | 15 |  6000 | 579 = 76 + 3         9‘    |   Δ200  Δ600
*  -------+----+-------+----                  |     |     |     |
*  *2:3:5 | 16 |  7000 | 580 = 76 + 4         |     |     |     |
*  -------+----+-------+----                  |     |     |     |
*  *2:4:6 | 17 |  8000 | 581 = 76 + 5         |     |     |     |
*  -------+----+-------+----                  |     |     |     |
*   2:4:7 | 18 |  9000 | 582 = 76 + 6         |     |     |     |
*  -------+----+-------+----                  |     |     |     |
*  *2:4:8 | 19 | 10000 | 586 = 76 + 10        |     |     |     |
*  =======+====+=======+====                 ===   ---   ---    | <--  π(10000)
*  *2:4:9 | 20 | 20000 | 588 = 86 + log 10²         |     |     |
*  -------+----+-------+----                        |     |     |
*   3:1:0 | 21 | 30000 | 590 = 86 + 2 x log 10²     |     |     |
*  -------+----+-------+----                        |     |     |
*   3:2:1 | 22 | 40000 | 591 = 90 + 1               |     |     |
*  -------+----+-------+----                        |     |     |
*  *3:2:2 | 23 | 50000 | 592 = 90 + 2               |     |     |
*  -------+----+-------+----                        |     |     |
*  *3:3:3 | 24 | 60000 | 593 = 90 + 3               9“  Δ300    |
*  -------+----+-------+----                        |     |     |
*   3:3:4 | 25 | 70000 | 594 = 90 + 4               |     |     |
*  -------+----+-------+----                        |     |     |
*  *3:3:5 | 26 | 80000 | 595 = 90 + 5               |     |     |
*  -------+----+-------+----                        |     |     |
*  *3:4:6 | 27 | 90000 | 596 = 90 + 6               |     |     |
*  -------+----+-------+----                        |     |     |
*   3:4:7 | 28 |100000 | 600 = 90 + 10              |     |     |
*  =======+====+=======+====                       ===  ====  ---- ---> π(10000)
*  *3:4:8 | 29 |200000 | 618 = 100 + 3 x (2x3)     10³  Δ600  Δ300
*  =======+====+=======+====                        Δ         ====
*   3:4:9 | 30 |300000 | 619 = 118 + log 10³ -------¤         Δ900   
*
{%- endcomment -%}
{%- comment -%}
*
*  Tabulate Prime Vektors ζ(s). Reference:
*  https://medium.com/cantors-paradise/the-riemann-hypothesis-explained-fa01c1f75d3f
*  
*  ----------------------+-----+-----+-----+                                    ---
*       7 --------- 1,2:1|   1 |  30 |  40 | 71 (2,3) ‹-------------@----        |
*       |                +-----+-----+-----+-----+                        |      |
*       |  8 ‹------  3:2|   1 |  30 |  40 |  90 | 161 (7) ‹---           |      5¨
*       |  |             +-----+-----+-----+-----+             |          |      |
*       |  |  6 ‹-- 4,6:3|   1 |  30 | 200 | 231 (10,11,12) ‹--|---       |      |
*       |  |  |          +-----+-----+-----+-----+             |   |      |     ---
*        --|--|-----» 7:4|   1 |  30 |  40 | 200 | 271 (13) --›    | 5®   |      |
*          |  |          +-----+-----+-----+-----+                 |      |      |
*           --|---› 8,9:5|   1 |  30 | 200 | 231 (14,15) ---------›       |      7¨
*  289        |          +-----+-----+-----+-----+-----+                  |      |
*   |          ----› 10:6|  20 |   5 |  10 |  70 |  90 | 195 (19) --› Φ   | 6®   |
*    --------------------+-----+-----+-----+-----+-----+                  |     ---
*       67 --------› 11:7|   5 |   9 |  14 (20) --------› ¤               |      |
*       |                +-----+-----+-----+                              |      |
*       |  78 ‹----- 12:8|   9 |  60 |  40 | 109 (26) «------------       |     11¨
*       |  |             +-----+-----+-----+                       |      |      |
*       |  |  86‹--- 13:9|   9 |  60 |  69 (27) «--- Δ (Rep Fork)  | 2®   |      |
*       |  |  |          +-----+-----+-----+                       |      |     ---
*       |  |   ---› 14:10|   9 |  60 |  40 | 109 (28) -------------       |      |
*       |  |             +-----+-----+-----+                              |      |
*       |   ---› 15,18:11|   1 |  30 |  40 | 71 (29,30,31,32) ----------        13¨
*  329  |                +-----+-----+-----+                                     |
*    |   ‹--------- 19:12|  10 |  60 | 70 (36) ‹--------------------- Φ          |
*     -------------------+-----+-----+                                          ---
*      786 ‹------- 20:13|  90 |  90 (38) ‹-------------- ¤                      |
*       |                +-----+-----+                                           |
*       | 618 ‹- 21,22:14|   8 |  40 |  48 (40,41) ‹----------------------      17¨
*       |  |             +-----+-----+-----+-----+-----+                  |      |
*       |  | 594 ‹- 23:15|   8 |  40 |  70 |  60 | 100 | 278 (42) «--     | 6®   |
*       |  |  |          +-----+-----+-----+-----+-----+             |    |     ---
*        --|--|-»24,27:16|   8 |  40 |  48 (43,44,45,46) ------------|----       |
*          |  |          +-----+-----+                               |           |
*           --|---› 28:17| 100 | 100   (50) ------------------------»           19¨
*  168        |          +-----+                                                 |
*  |         102 -› 29:18| 50  | 50(68) ---------> Δ                             |
*  ----------------------+-----+                                                ---
*
*
{%- endcomment -%}
{%- comment -%}
*
*  Tabulate Prime Hexagon in 18 vs 19. Reference:
*  https://www.hexspin.com/defining-the-prime-hexagon/
*
*       |         1st (Form)          |         2nd (Route)         |         3rd (Channel)         |
*  -----+----+----+----+----+----+----+----+----+----+----+----+----+----+----+-----+-----+----+----+
*    1  | 19 |  - | 31 | 37 |  - |  - |  - |  - |  - |  - |  - |  - |  - |  - | 103 |  -  |  - |  - |
*       +----+----+----+----+----+----+----+----+----+----+----+----+----+----+-----+-----+----+----+
*    2  | 20 | 26*|  - | 38 |  - |  - |  - |  - |  - | 74*|  - |  - |  - | 98*| 104*|  -  |  - |  - |
*  -----+----+----+----+----+----+----+----+----+----+----+----+----+----+----+-----+-----+----+----+ 
*    3  | 21 | 27*|  - | 39 |  - |  - |  - |  - |  - | 75*|  - |  - |  - | 99*| 105*|  -  |  - |  - |
*       +----+----+----+----+----+----+----+----+----+----+----+----+----+----+-----+-----+----+----+
*    4  | 22 | 28 |  - | 40 |  - |  - |  - |  - |  - | 76 |  - |  - |  - |100 |  -  |  -  |  - |  - |
*  -----+----+----+----+----+----+----+----+----+----+----+----+----+----+----+-----+-----+----+----+
*    5  | 23 | 29 |  - | 41 |  - |  - |  - |  - |  - | 77 |  - |  - |  - |101 |  -  |  -  |  - |  - | 
*       +----+----+----+----+----+----+----+----+----+----+----+----+----+----+-----+-----+----+----+
*    6  | 24 |  - |  - | 42 |  - | 54 |  - |  - | 72 | 78 |  - | 90 | 96 |  - |  -  |  -  |  - | 114|
*  =====+====+====+====+====+====+====+====+====+====+====+====+====+====+====+=====+=====+====+====+
*    7  | 25 |  - |  - | 43 |  - | 55 |  - |  - | 73 | 79 |  - | 91 | 97 |  - |  -  |  -  |  - |  - |
*       +----+----+----+----+----+----+----+----+----+----+----+----+----+----+-----+-----+----+----+
*    8  |  - |  - |  - | 44 |  - | 56 |  - |  - |  - | 80 |  - | 92 |  - |  - |  -  |  -  |  - |  - |
*  -----+----+----+----+----+----+----+----+----+----+----+----+----+----+----+-----+-----+----+----+
*    9  |  - |  - |  - | 45 |  - | 57 |  - |  - |  - | 81 |  - | 93 |  - |  - |  -  |  -  |  - |  - |
*       +----+----+----+----+----+----+----+----+----+----+----+----+----+----+-----+-----+----+----+
*   10  |  - |  - |  - | 46 | 52 | 58 |  - | 70 |  - | 82 | 88 | 94 |  - |  - |  -  |  -  | 112|  - |
*  -----+----+----+----+----+----+----+----+----+----+----+----+----+----+----+-----+-----+----+----+
*   11  |  - |  - |  - | 47 | 53 | 59 |  - | 71 |  - | 83 | 89 | 95 |  - |  - |  -  |  -  | 113|  - |
*       +----+----+----+----+----+----+----+----+----+----+----+----+----+----+-----+-----+----+----+
*   12  |  - |  - |  - | 48 |  - | 60 | 66 |  - |  - | 84 |  - |  - |  - |  - |  -  | 108 |  - |  - | 
*  =====+====+====+====+====+====+====+====+====+====+====+====+====+====+====+=====+=====+====+====+
*   13  |  - |  - |  - | 49 |  - | 61 | 67 |  - |  - | 85 |  - |  - |  - |  - |  -  | 109 |  - |  - | 
*       +----+----+----+----+----+----+----+----+----+----+----+----+----+----+-----+-----+----+----+
*   14  |  - |  - | 32*| 50*|  - | 62 | 68*|  - |  - | 86*|  - |  - |  - |  - |  -  | 110*|  - |  - | 
*  -----+----+----+----+----+----+----+----+----+----+----+----+----+----+----+-----+-----+----+----+
*   15  |  - |  - | 33*| 51*|  - | 63 | 69*|  - |  - | 87*|  - |  - |  - |  - |  -  | 111*|  - |  - | 
*       +----+----+----+----+----+----+----+----+----+----+----+----+----+----+-----+-----+----+----+
*   16  |  - |  - | 34 |  - |  - | 64 |  - |  - |  - |  - |  - |  - |  - | -  | 106 |  -  |  - |  - | 
*  -----+----+----+----+----+----+----+----+----+----+----+----+----+----+----+-----+-----+----+----+
*   17  |  - |  - | 35 |  - |  - | 65 |  - |  - |  - |  - |  - |  - |  - | -  | 107 |  -  |  - |  - | 
*       +----+----+----+----+----+----+----+----+----+----+----+----+----+----+-----+-----+----+----+
*   18  |  - | 30 | 36 |  - |  - |  - |  - |  - |  - |  - |  - |  - | -  | 102|   - |  -  |  - |  - | <- ∑=168
*  =====+====+====+====+====+====+====+====+====+====+====+====+====+====+====+=====+=====+====+====+
*    1  |  2 |  3 |  4 |  5 |  6 |  7 |  8 |  9 | 10 | 11 | 12 | 13 | 14 | 15 |  16 |  17 | 18 | 19 |
*               Δ    Δ                                                     Δ
*
* Note:
* - The marked number with * are outside of group 18 vs 19 
* - Number 68 is in the same hexagon along with 50
* - Reinject number are excatly 102 to 103
*
{%- endcomment -%}
{%- comment -%}
*
*  π(100th layers) = π(10^11) = 4,118,054,813
*
*  1:1
*  2:2   11:20   20:200   29:2000   38:20000   47:2x10^5  56:2x10^6  65:2x10^7  74:2x10^8  83:2x10^9   92:2x10^10
*  3:3   12:30   21:300   30:3000   39:30000   48:3x10^5  57:3x10^6  66:3x10^7  75:3x10^8  84:3x10^9   93:3x10^10
*  4:4   13:40   22:400   31:4000   40:40000   49:4x10^5  58:4x10^6  67:4x10^7  76:4x10^8  85:4x10^9   94:4x10^10
*  5:5   14:50   23:500   32:5000   41:50000   50:5x10^5  59:5x10^6  68:5x10^7  77:5x10^8  86:5x10^9   95:5x10^10
*  6:6   15:60   24:600   33:6000   42:60000   51:6x10^5  60:6x10^6  69:6x10^7  78:6x10^8  87:6x10^9   96:6x10^10
*  7:7   16:70   25:700   34:7000   43:70000   52:7x10^5  61:7x10^6  70:7x10^7  79:7x10^8  88:7x10^9   97:7x10^10
*  8:8   17:80   26:800   35:8000   44:80000   53:8x10^5  62:8x10^6  71:8x10^7  80:8x10^8  86:8x10^9   98:8x10^10
*  9:9   18:90   27:900   36:9000   45:90000   54:9x10^5  63:9x10^6  72:9x10^7  81:9x10^8  90:9x10^9   99:9x10^10
*  10:10 19:100  28:1000  37:10000  46:100000  55:10^6    64:10^7    73:10^8    82:10^9    91:10^10   100:10^11
*
* For more primes see:
* https://primes.utm.edu/howmany.html
*
{%- endcomment -%}
{%- comment -%}
*
* Here is my quote about prime numbers:
* Finding the way of ‘how they presence’ is far more important
* than trying to find ‘how many all of them’ are exactly exist.
*
{%- endcomment -%}
