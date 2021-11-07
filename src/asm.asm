
test.o:     формат файла elf64-x86-64


Дизассемблирование раздела .init:

0000000000002000 <_init>:
    2000:	f3 0f 1e fa          	endbr64 
    2004:	48 83 ec 08          	sub    $0x8,%rsp
    2008:	48 8b 05 d9 4f 00 00 	mov    0x4fd9(%rip),%rax        # 6fe8 <__gmon_start__>
    200f:	48 85 c0             	test   %rax,%rax
    2012:	74 02                	je     2016 <_init+0x16>
    2014:	ff d0                	callq  *%rax
    2016:	48 83 c4 08          	add    $0x8,%rsp
    201a:	c3                   	retq   

Дизассемблирование раздела .plt:

0000000000002020 <.plt>:
    2020:	ff 35 62 4e 00 00    	pushq  0x4e62(%rip)        # 6e88 <_GLOBAL_OFFSET_TABLE_+0x8>
    2026:	f2 ff 25 63 4e 00 00 	bnd jmpq *0x4e63(%rip)        # 6e90 <_GLOBAL_OFFSET_TABLE_+0x10>
    202d:	0f 1f 00             	nopl   (%rax)
    2030:	f3 0f 1e fa          	endbr64 
    2034:	68 00 00 00 00       	pushq  $0x0
    2039:	f2 e9 e1 ff ff ff    	bnd jmpq 2020 <.plt>
    203f:	90                   	nop
    2040:	f3 0f 1e fa          	endbr64 
    2044:	68 01 00 00 00       	pushq  $0x1
    2049:	f2 e9 d1 ff ff ff    	bnd jmpq 2020 <.plt>
    204f:	90                   	nop
    2050:	f3 0f 1e fa          	endbr64 
    2054:	68 02 00 00 00       	pushq  $0x2
    2059:	f2 e9 c1 ff ff ff    	bnd jmpq 2020 <.plt>
    205f:	90                   	nop
    2060:	f3 0f 1e fa          	endbr64 
    2064:	68 03 00 00 00       	pushq  $0x3
    2069:	f2 e9 b1 ff ff ff    	bnd jmpq 2020 <.plt>
    206f:	90                   	nop
    2070:	f3 0f 1e fa          	endbr64 
    2074:	68 04 00 00 00       	pushq  $0x4
    2079:	f2 e9 a1 ff ff ff    	bnd jmpq 2020 <.plt>
    207f:	90                   	nop
    2080:	f3 0f 1e fa          	endbr64 
    2084:	68 05 00 00 00       	pushq  $0x5
    2089:	f2 e9 91 ff ff ff    	bnd jmpq 2020 <.plt>
    208f:	90                   	nop
    2090:	f3 0f 1e fa          	endbr64 
    2094:	68 06 00 00 00       	pushq  $0x6
    2099:	f2 e9 81 ff ff ff    	bnd jmpq 2020 <.plt>
    209f:	90                   	nop
    20a0:	f3 0f 1e fa          	endbr64 
    20a4:	68 07 00 00 00       	pushq  $0x7
    20a9:	f2 e9 71 ff ff ff    	bnd jmpq 2020 <.plt>
    20af:	90                   	nop
    20b0:	f3 0f 1e fa          	endbr64 
    20b4:	68 08 00 00 00       	pushq  $0x8
    20b9:	f2 e9 61 ff ff ff    	bnd jmpq 2020 <.plt>
    20bf:	90                   	nop
    20c0:	f3 0f 1e fa          	endbr64 
    20c4:	68 09 00 00 00       	pushq  $0x9
    20c9:	f2 e9 51 ff ff ff    	bnd jmpq 2020 <.plt>
    20cf:	90                   	nop
    20d0:	f3 0f 1e fa          	endbr64 
    20d4:	68 0a 00 00 00       	pushq  $0xa
    20d9:	f2 e9 41 ff ff ff    	bnd jmpq 2020 <.plt>
    20df:	90                   	nop
    20e0:	f3 0f 1e fa          	endbr64 
    20e4:	68 0b 00 00 00       	pushq  $0xb
    20e9:	f2 e9 31 ff ff ff    	bnd jmpq 2020 <.plt>
    20ef:	90                   	nop
    20f0:	f3 0f 1e fa          	endbr64 
    20f4:	68 0c 00 00 00       	pushq  $0xc
    20f9:	f2 e9 21 ff ff ff    	bnd jmpq 2020 <.plt>
    20ff:	90                   	nop
    2100:	f3 0f 1e fa          	endbr64 
    2104:	68 0d 00 00 00       	pushq  $0xd
    2109:	f2 e9 11 ff ff ff    	bnd jmpq 2020 <.plt>
    210f:	90                   	nop
    2110:	f3 0f 1e fa          	endbr64 
    2114:	68 0e 00 00 00       	pushq  $0xe
    2119:	f2 e9 01 ff ff ff    	bnd jmpq 2020 <.plt>
    211f:	90                   	nop
    2120:	f3 0f 1e fa          	endbr64 
    2124:	68 0f 00 00 00       	pushq  $0xf
    2129:	f2 e9 f1 fe ff ff    	bnd jmpq 2020 <.plt>
    212f:	90                   	nop
    2130:	f3 0f 1e fa          	endbr64 
    2134:	68 10 00 00 00       	pushq  $0x10
    2139:	f2 e9 e1 fe ff ff    	bnd jmpq 2020 <.plt>
    213f:	90                   	nop
    2140:	f3 0f 1e fa          	endbr64 
    2144:	68 11 00 00 00       	pushq  $0x11
    2149:	f2 e9 d1 fe ff ff    	bnd jmpq 2020 <.plt>
    214f:	90                   	nop
    2150:	f3 0f 1e fa          	endbr64 
    2154:	68 12 00 00 00       	pushq  $0x12
    2159:	f2 e9 c1 fe ff ff    	bnd jmpq 2020 <.plt>
    215f:	90                   	nop
    2160:	f3 0f 1e fa          	endbr64 
    2164:	68 13 00 00 00       	pushq  $0x13
    2169:	f2 e9 b1 fe ff ff    	bnd jmpq 2020 <.plt>
    216f:	90                   	nop
    2170:	f3 0f 1e fa          	endbr64 
    2174:	68 14 00 00 00       	pushq  $0x14
    2179:	f2 e9 a1 fe ff ff    	bnd jmpq 2020 <.plt>
    217f:	90                   	nop
    2180:	f3 0f 1e fa          	endbr64 
    2184:	68 15 00 00 00       	pushq  $0x15
    2189:	f2 e9 91 fe ff ff    	bnd jmpq 2020 <.plt>
    218f:	90                   	nop
    2190:	f3 0f 1e fa          	endbr64 
    2194:	68 16 00 00 00       	pushq  $0x16
    2199:	f2 e9 81 fe ff ff    	bnd jmpq 2020 <.plt>
    219f:	90                   	nop
    21a0:	f3 0f 1e fa          	endbr64 
    21a4:	68 17 00 00 00       	pushq  $0x17
    21a9:	f2 e9 71 fe ff ff    	bnd jmpq 2020 <.plt>
    21af:	90                   	nop
    21b0:	f3 0f 1e fa          	endbr64 
    21b4:	68 18 00 00 00       	pushq  $0x18
    21b9:	f2 e9 61 fe ff ff    	bnd jmpq 2020 <.plt>
    21bf:	90                   	nop
    21c0:	f3 0f 1e fa          	endbr64 
    21c4:	68 19 00 00 00       	pushq  $0x19
    21c9:	f2 e9 51 fe ff ff    	bnd jmpq 2020 <.plt>
    21cf:	90                   	nop
    21d0:	f3 0f 1e fa          	endbr64 
    21d4:	68 1a 00 00 00       	pushq  $0x1a
    21d9:	f2 e9 41 fe ff ff    	bnd jmpq 2020 <.plt>
    21df:	90                   	nop
    21e0:	f3 0f 1e fa          	endbr64 
    21e4:	68 1b 00 00 00       	pushq  $0x1b
    21e9:	f2 e9 31 fe ff ff    	bnd jmpq 2020 <.plt>
    21ef:	90                   	nop
    21f0:	f3 0f 1e fa          	endbr64 
    21f4:	68 1c 00 00 00       	pushq  $0x1c
    21f9:	f2 e9 21 fe ff ff    	bnd jmpq 2020 <.plt>
    21ff:	90                   	nop
    2200:	f3 0f 1e fa          	endbr64 
    2204:	68 1d 00 00 00       	pushq  $0x1d
    2209:	f2 e9 11 fe ff ff    	bnd jmpq 2020 <.plt>
    220f:	90                   	nop
    2210:	f3 0f 1e fa          	endbr64 
    2214:	68 1e 00 00 00       	pushq  $0x1e
    2219:	f2 e9 01 fe ff ff    	bnd jmpq 2020 <.plt>
    221f:	90                   	nop
    2220:	f3 0f 1e fa          	endbr64 
    2224:	68 1f 00 00 00       	pushq  $0x1f
    2229:	f2 e9 f1 fd ff ff    	bnd jmpq 2020 <.plt>
    222f:	90                   	nop
    2230:	f3 0f 1e fa          	endbr64 
    2234:	68 20 00 00 00       	pushq  $0x20
    2239:	f2 e9 e1 fd ff ff    	bnd jmpq 2020 <.plt>
    223f:	90                   	nop
    2240:	f3 0f 1e fa          	endbr64 
    2244:	68 21 00 00 00       	pushq  $0x21
    2249:	f2 e9 d1 fd ff ff    	bnd jmpq 2020 <.plt>
    224f:	90                   	nop
    2250:	f3 0f 1e fa          	endbr64 
    2254:	68 22 00 00 00       	pushq  $0x22
    2259:	f2 e9 c1 fd ff ff    	bnd jmpq 2020 <.plt>
    225f:	90                   	nop
    2260:	f3 0f 1e fa          	endbr64 
    2264:	68 23 00 00 00       	pushq  $0x23
    2269:	f2 e9 b1 fd ff ff    	bnd jmpq 2020 <.plt>
    226f:	90                   	nop
    2270:	f3 0f 1e fa          	endbr64 
    2274:	68 24 00 00 00       	pushq  $0x24
    2279:	f2 e9 a1 fd ff ff    	bnd jmpq 2020 <.plt>
    227f:	90                   	nop
    2280:	f3 0f 1e fa          	endbr64 
    2284:	68 25 00 00 00       	pushq  $0x25
    2289:	f2 e9 91 fd ff ff    	bnd jmpq 2020 <.plt>
    228f:	90                   	nop

Дизассемблирование раздела .plt.got:

0000000000002290 <__cxa_finalize@plt>:
    2290:	f3 0f 1e fa          	endbr64 
    2294:	f2 ff 25 2d 4d 00 00 	bnd jmpq *0x4d2d(%rip)        # 6fc8 <__cxa_finalize@GLIBC_2.2.5>
    229b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Дизассемблирование раздела .plt.sec:

00000000000022a0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv@plt>:
    22a0:	f3 0f 1e fa          	endbr64 
    22a4:	f2 ff 25 ed 4b 00 00 	bnd jmpq *0x4bed(%rip)        # 6e98 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv@GLIBCXX_3.4.21>
    22ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000022b0 <_ZNSt6chrono3_V212system_clock3nowEv@plt>:
    22b0:	f3 0f 1e fa          	endbr64 
    22b4:	f2 ff 25 e5 4b 00 00 	bnd jmpq *0x4be5(%rip)        # 6ea0 <_ZNSt6chrono3_V212system_clock3nowEv@GLIBCXX_3.4.19>
    22bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000022c0 <_ZNSaIcED2Ev@plt>:
    22c0:	f3 0f 1e fa          	endbr64 
    22c4:	f2 ff 25 dd 4b 00 00 	bnd jmpq *0x4bdd(%rip)        # 6ea8 <_ZNSaIcED2Ev@GLIBCXX_3.4>
    22cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000022d0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcS5_S5_@plt>:
    22d0:	f3 0f 1e fa          	endbr64 
    22d4:	f2 ff 25 d5 4b 00 00 	bnd jmpq *0x4bd5(%rip)        # 6eb0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcS5_S5_@GLIBCXX_3.4.21>
    22db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000022e0 <__cxa_begin_catch@plt>:
    22e0:	f3 0f 1e fa          	endbr64 
    22e4:	f2 ff 25 cd 4b 00 00 	bnd jmpq *0x4bcd(%rip)        # 6eb8 <__cxa_begin_catch@CXXABI_1.3>
    22eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000022f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_@plt>:
    22f0:	f3 0f 1e fa          	endbr64 
    22f4:	f2 ff 25 c5 4b 00 00 	bnd jmpq *0x4bc5(%rip)        # 6ec0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_@GLIBCXX_3.4.21>
    22fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002300 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_@plt>:
    2300:	f3 0f 1e fa          	endbr64 
    2304:	f2 ff 25 bd 4b 00 00 	bnd jmpq *0x4bbd(%rip)        # 6ec8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_@GLIBCXX_3.4.21>
    230b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>:
    2310:	f3 0f 1e fa          	endbr64 
    2314:	f2 ff 25 b5 4b 00 00 	bnd jmpq *0x4bb5(%rip)        # 6ed0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@GLIBCXX_3.4.21>
    231b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002320 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EmcRKS3_@plt>:
    2320:	f3 0f 1e fa          	endbr64 
    2324:	f2 ff 25 ad 4b 00 00 	bnd jmpq *0x4bad(%rip)        # 6ed8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EmcRKS3_@GLIBCXX_3.4.21>
    232b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002330 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm@plt>:
    2330:	f3 0f 1e fa          	endbr64 
    2334:	f2 ff 25 a5 4b 00 00 	bnd jmpq *0x4ba5(%rip)        # 6ee0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm@GLIBCXX_3.4.21>
    233b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002340 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv@plt>:
    2340:	f3 0f 1e fa          	endbr64 
    2344:	f2 ff 25 9d 4b 00 00 	bnd jmpq *0x4b9d(%rip)        # 6ee8 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv@GLIBCXX_3.4.21>
    234b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002350 <_ZSt19__throw_logic_errorPKc@plt>:
    2350:	f3 0f 1e fa          	endbr64 
    2354:	f2 ff 25 95 4b 00 00 	bnd jmpq *0x4b95(%rip)        # 6ef0 <_ZSt19__throw_logic_errorPKc@GLIBCXX_3.4>
    235b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002360 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv@plt>:
    2360:	f3 0f 1e fa          	endbr64 
    2364:	f2 ff 25 8d 4b 00 00 	bnd jmpq *0x4b8d(%rip)        # 6ef8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv@GLIBCXX_3.4.21>
    236b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002370 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc@plt>:
    2370:	f3 0f 1e fa          	endbr64 
    2374:	f2 ff 25 85 4b 00 00 	bnd jmpq *0x4b85(%rip)        # 6f00 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc@GLIBCXX_3.4.21>
    237b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002380 <__cxa_atexit@plt>:
    2380:	f3 0f 1e fa          	endbr64 
    2384:	f2 ff 25 7d 4b 00 00 	bnd jmpq *0x4b7d(%rip)        # 6f08 <__cxa_atexit@GLIBC_2.2.5>
    238b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002390 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@plt>:
    2390:	f3 0f 1e fa          	endbr64 
    2394:	f2 ff 25 75 4b 00 00 	bnd jmpq *0x4b75(%rip)        # 6f10 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@GLIBCXX_3.4.21>
    239b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000023a0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>:
    23a0:	f3 0f 1e fa          	endbr64 
    23a4:	f2 ff 25 6d 4b 00 00 	bnd jmpq *0x4b6d(%rip)        # 6f18 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@GLIBCXX_3.4>
    23ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000023b0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_@plt>:
    23b0:	f3 0f 1e fa          	endbr64 
    23b4:	f2 ff 25 65 4b 00 00 	bnd jmpq *0x4b65(%rip)        # 6f20 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_@GLIBCXX_3.4.21>
    23bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000023c0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc@plt>:
    23c0:	f3 0f 1e fa          	endbr64 
    23c4:	f2 ff 25 5d 4b 00 00 	bnd jmpq *0x4b5d(%rip)        # 6f28 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc@GLIBCXX_3.4.21>
    23cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000023d0 <_ZNSaIcED1Ev@plt>:
    23d0:	f3 0f 1e fa          	endbr64 
    23d4:	f2 ff 25 55 4b 00 00 	bnd jmpq *0x4b55(%rip)        # 6f30 <_ZNSaIcED1Ev@GLIBCXX_3.4>
    23db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000023e0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv@plt>:
    23e0:	f3 0f 1e fa          	endbr64 
    23e4:	f2 ff 25 4d 4b 00 00 	bnd jmpq *0x4b4d(%rip)        # 6f38 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv@GLIBCXX_3.4.21>
    23eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000023f0 <__stack_chk_fail@plt>:
    23f0:	f3 0f 1e fa          	endbr64 
    23f4:	f2 ff 25 45 4b 00 00 	bnd jmpq *0x4b45(%rip)        # 6f40 <__stack_chk_fail@GLIBC_2.4>
    23fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002400 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@plt>:
    2400:	f3 0f 1e fa          	endbr64 
    2404:	f2 ff 25 3d 4b 00 00 	bnd jmpq *0x4b3d(%rip)        # 6f48 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@GLIBCXX_3.4>
    240b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002410 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@plt>:
    2410:	f3 0f 1e fa          	endbr64 
    2414:	f2 ff 25 35 4b 00 00 	bnd jmpq *0x4b35(%rip)        # 6f50 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@GLIBCXX_3.4.21>
    241b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002420 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_@plt>:
    2420:	f3 0f 1e fa          	endbr64 
    2424:	f2 ff 25 2d 4b 00 00 	bnd jmpq *0x4b2d(%rip)        # 6f58 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_@GLIBCXX_3.4.21>
    242b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002430 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@plt>:
    2430:	f3 0f 1e fa          	endbr64 
    2434:	f2 ff 25 25 4b 00 00 	bnd jmpq *0x4b25(%rip)        # 6f60 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@GLIBCXX_3.4.21>
    243b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002440 <__cxa_rethrow@plt>:
    2440:	f3 0f 1e fa          	endbr64 
    2444:	f2 ff 25 1d 4b 00 00 	bnd jmpq *0x4b1d(%rip)        # 6f68 <__cxa_rethrow@CXXABI_1.3>
    244b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002450 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv@plt>:
    2450:	f3 0f 1e fa          	endbr64 
    2454:	f2 ff 25 15 4b 00 00 	bnd jmpq *0x4b15(%rip)        # 6f70 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv@GLIBCXX_3.4.21>
    245b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002460 <_ZNSt8ios_base4InitC1Ev@plt>:
    2460:	f3 0f 1e fa          	endbr64 
    2464:	f2 ff 25 0d 4b 00 00 	bnd jmpq *0x4b0d(%rip)        # 6f78 <_ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4>
    246b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002470 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmRKS4_@plt>:
    2470:	f3 0f 1e fa          	endbr64 
    2474:	f2 ff 25 05 4b 00 00 	bnd jmpq *0x4b05(%rip)        # 6f80 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmRKS4_@GLIBCXX_3.4.21>
    247b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002480 <__cxa_end_catch@plt>:
    2480:	f3 0f 1e fa          	endbr64 
    2484:	f2 ff 25 fd 4a 00 00 	bnd jmpq *0x4afd(%rip)        # 6f88 <__cxa_end_catch@CXXABI_1.3>
    248b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002490 <_Unwind_Resume@plt>:
    2490:	f3 0f 1e fa          	endbr64 
    2494:	f2 ff 25 f5 4a 00 00 	bnd jmpq *0x4af5(%rip)        # 6f90 <_Unwind_Resume@GCC_3.0>
    249b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000024a0 <_ZNSaIcEC1Ev@plt>:
    24a0:	f3 0f 1e fa          	endbr64 
    24a4:	f2 ff 25 ed 4a 00 00 	bnd jmpq *0x4aed(%rip)        # 6f98 <_ZNSaIcEC1Ev@GLIBCXX_3.4>
    24ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000024b0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>:
    24b0:	f3 0f 1e fa          	endbr64 
    24b4:	f2 ff 25 e5 4a 00 00 	bnd jmpq *0x4ae5(%rip)        # 6fa0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@GLIBCXX_3.4.21>
    24bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000024c0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc@plt>:
    24c0:	f3 0f 1e fa          	endbr64 
    24c4:	f2 ff 25 dd 4a 00 00 	bnd jmpq *0x4add(%rip)        # 6fa8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc@GLIBCXX_3.4.21>
    24cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000024d0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_@plt>:
    24d0:	f3 0f 1e fa          	endbr64 
    24d4:	f2 ff 25 d5 4a 00 00 	bnd jmpq *0x4ad5(%rip)        # 6fb0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_@GLIBCXX_3.4.21>
    24db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000024e0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm@plt>:
    24e0:	f3 0f 1e fa          	endbr64 
    24e4:	f2 ff 25 cd 4a 00 00 	bnd jmpq *0x4acd(%rip)        # 6fb8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm@GLIBCXX_3.4.21>
    24eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000024f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmmc@plt>:
    24f0:	f3 0f 1e fa          	endbr64 
    24f4:	f2 ff 25 c5 4a 00 00 	bnd jmpq *0x4ac5(%rip)        # 6fc0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmmc@GLIBCXX_3.4.21>
    24fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Дизассемблирование раздела .text:

0000000000002500 <_start>:
    2500:	f3 0f 1e fa          	endbr64 
    2504:	31 ed                	xor    %ebp,%ebp
    2506:	49 89 d1             	mov    %rdx,%r9
    2509:	5e                   	pop    %rsi
    250a:	48 89 e2             	mov    %rsp,%rdx
    250d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    2511:	50                   	push   %rax
    2512:	54                   	push   %rsp
    2513:	4c 8d 05 e6 29 00 00 	lea    0x29e6(%rip),%r8        # 4f00 <__libc_csu_fini>
    251a:	48 8d 0d 6f 29 00 00 	lea    0x296f(%rip),%rcx        # 4e90 <__libc_csu_init>
    2521:	48 8d 3d 15 07 00 00 	lea    0x715(%rip),%rdi        # 2c3d <main>
    2528:	ff 15 b2 4a 00 00    	callq  *0x4ab2(%rip)        # 6fe0 <__libc_start_main@GLIBC_2.2.5>
    252e:	f4                   	hlt    
    252f:	90                   	nop

0000000000002530 <deregister_tm_clones>:
    2530:	48 8d 3d e1 4a 00 00 	lea    0x4ae1(%rip),%rdi        # 7018 <__TMC_END__>
    2537:	48 8d 05 da 4a 00 00 	lea    0x4ada(%rip),%rax        # 7018 <__TMC_END__>
    253e:	48 39 f8             	cmp    %rdi,%rax
    2541:	74 15                	je     2558 <deregister_tm_clones+0x28>
    2543:	48 8b 05 8e 4a 00 00 	mov    0x4a8e(%rip),%rax        # 6fd8 <_ITM_deregisterTMCloneTable>
    254a:	48 85 c0             	test   %rax,%rax
    254d:	74 09                	je     2558 <deregister_tm_clones+0x28>
    254f:	ff e0                	jmpq   *%rax
    2551:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2558:	c3                   	retq   
    2559:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000002560 <register_tm_clones>:
    2560:	48 8d 3d b1 4a 00 00 	lea    0x4ab1(%rip),%rdi        # 7018 <__TMC_END__>
    2567:	48 8d 35 aa 4a 00 00 	lea    0x4aaa(%rip),%rsi        # 7018 <__TMC_END__>
    256e:	48 29 fe             	sub    %rdi,%rsi
    2571:	48 89 f0             	mov    %rsi,%rax
    2574:	48 c1 ee 3f          	shr    $0x3f,%rsi
    2578:	48 c1 f8 03          	sar    $0x3,%rax
    257c:	48 01 c6             	add    %rax,%rsi
    257f:	48 d1 fe             	sar    %rsi
    2582:	74 14                	je     2598 <register_tm_clones+0x38>
    2584:	48 8b 05 65 4a 00 00 	mov    0x4a65(%rip),%rax        # 6ff0 <_ITM_registerTMCloneTable>
    258b:	48 85 c0             	test   %rax,%rax
    258e:	74 08                	je     2598 <register_tm_clones+0x38>
    2590:	ff e0                	jmpq   *%rax
    2592:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    2598:	c3                   	retq   
    2599:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000025a0 <__do_global_dtors_aux>:
    25a0:	f3 0f 1e fa          	endbr64 
    25a4:	80 3d a5 4b 00 00 00 	cmpb   $0x0,0x4ba5(%rip)        # 7150 <completed.8060>
    25ab:	75 2b                	jne    25d8 <__do_global_dtors_aux+0x38>
    25ad:	55                   	push   %rbp
    25ae:	48 83 3d 12 4a 00 00 	cmpq   $0x0,0x4a12(%rip)        # 6fc8 <__cxa_finalize@GLIBC_2.2.5>
    25b5:	00 
    25b6:	48 89 e5             	mov    %rsp,%rbp
    25b9:	74 0c                	je     25c7 <__do_global_dtors_aux+0x27>
    25bb:	48 8b 3d 46 4a 00 00 	mov    0x4a46(%rip),%rdi        # 7008 <__dso_handle>
    25c2:	e8 c9 fc ff ff       	callq  2290 <__cxa_finalize@plt>
    25c7:	e8 64 ff ff ff       	callq  2530 <deregister_tm_clones>
    25cc:	c6 05 7d 4b 00 00 01 	movb   $0x1,0x4b7d(%rip)        # 7150 <completed.8060>
    25d3:	5d                   	pop    %rbp
    25d4:	c3                   	retq   
    25d5:	0f 1f 00             	nopl   (%rax)
    25d8:	c3                   	retq   
    25d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000025e0 <frame_dummy>:
    25e0:	f3 0f 1e fa          	endbr64 
    25e4:	e9 77 ff ff ff       	jmpq   2560 <register_tm_clones>

00000000000025e9 <_Z5rdtscv>:
#include "format.hpp"

using namespace hse::parallel::lab1;


std::uint64_t rdtsc() {
    25e9:	f3 0f 1e fa          	endbr64 
    25ed:	55                   	push   %rbp
    25ee:	48 89 e5             	mov    %rsp,%rbp
    unsigned int lo, hi;
    __asm__ __volatile__ ("rdtsc" : "=a" (lo), "=d" (hi));
    25f1:	0f 31                	rdtsc  
    25f3:	89 45 f8             	mov    %eax,-0x8(%rbp)
    25f6:	89 55 fc             	mov    %edx,-0x4(%rbp)
    return ((std::uint64_t) hi << 32) | lo;
    25f9:	8b 45 fc             	mov    -0x4(%rbp),%eax
    25fc:	48 c1 e0 20          	shl    $0x20,%rax
    2600:	48 89 c2             	mov    %rax,%rdx
    2603:	8b 45 f8             	mov    -0x8(%rbp),%eax
    2606:	48 09 d0             	or     %rdx,%rax
}
    2609:	5d                   	pop    %rbp
    260a:	c3                   	retq   

000000000000260b <_ZL10simple_mulR9Mul_state>:
	std::size_t operations;
	std::int32_t value1[4];
	std::int32_t value2[4];
};

static void simple_mul(Mul_state& state) {
    260b:	f3 0f 1e fa          	endbr64 
    260f:	55                   	push   %rbp
    2610:	48 89 e5             	mov    %rsp,%rbp
    2613:	48 81 ec d0 00 00 00 	sub    $0xd0,%rsp
    261a:	48 89 bd 38 ff ff ff 	mov    %rdi,-0xc8(%rbp)
    2621:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2628:	00 00 
    262a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    262e:	31 c0                	xor    %eax,%eax
  double instructions_per_operation = 8; // from asm.asm
    2630:	c5 fb 10 05 10 2a 00 	vmovsd 0x2a10(%rip),%xmm0        # 5048 <_ZStL19piecewise_construct+0x40>
    2637:	00 
    2638:	c5 fb 11 85 70 ff ff 	vmovsd %xmm0,-0x90(%rbp)
    263f:	ff 
  std::size_t operations = state.operations;
    2640:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
    2647:	48 8b 00             	mov    (%rax),%rax
    264a:	48 89 85 78 ff ff ff 	mov    %rax,-0x88(%rbp)
  std::int32_t value1 = state.value1[0];
    2651:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
    2658:	8b 40 08             	mov    0x8(%rax),%eax
    265b:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%rbp)
  std::int32_t value2 = state.value2[0];
    2661:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
    2668:	8b 40 18             	mov    0x18(%rax),%eax
    266b:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%rbp)
  std::size_t iterator = 0;
    2671:	48 c7 85 68 ff ff ff 	movq   $0x0,-0x98(%rbp)
    2678:	00 00 00 00 
  
  auto start = std::chrono::system_clock::now();
    267c:	e8 2f fc ff ff       	callq  22b0 <_ZNSt6chrono3_V212system_clock3nowEv@plt>
    2681:	48 89 85 50 ff ff ff 	mov    %rax,-0xb0(%rbp)
  std::uint64_t tact_start = rdtsc();
    2688:	e8 5c ff ff ff       	callq  25e9 <_Z5rdtscv>
    268d:	48 89 45 80          	mov    %rax,-0x80(%rbp)
  
  for (;iterator < operations; iterator++)
    2691:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
    2698:	48 3b 85 78 ff ff ff 	cmp    -0x88(%rbp),%rax
    269f:	73 1c                	jae    26bd <_ZL10simple_mulR9Mul_state+0xb2>
  	value1 *= value2; // зависимые операции
    26a1:	8b 85 48 ff ff ff    	mov    -0xb8(%rbp),%eax
    26a7:	0f af 85 4c ff ff ff 	imul   -0xb4(%rbp),%eax
    26ae:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%rbp)
  for (;iterator < operations; iterator++)
    26b4:	48 ff 85 68 ff ff ff 	incq   -0x98(%rbp)
    26bb:	eb d4                	jmp    2691 <_ZL10simple_mulR9Mul_state+0x86>
  	
  std::uint64_t tact_end = rdtsc();
    26bd:	e8 27 ff ff ff       	callq  25e9 <_Z5rdtscv>
    26c2:	48 89 45 88          	mov    %rax,-0x78(%rbp)
  auto end = std::chrono::system_clock::now();
    26c6:	e8 e5 fb ff ff       	callq  22b0 <_ZNSt6chrono3_V212system_clock3nowEv@plt>
    26cb:	48 89 85 58 ff ff ff 	mov    %rax,-0xa8(%rbp)
  
  std::chrono::duration<double> duration = end - start;
    26d2:	48 8d 95 50 ff ff ff 	lea    -0xb0(%rbp),%rdx
    26d9:	48 8d 85 58 ff ff ff 	lea    -0xa8(%rbp),%rax
    26e0:	48 89 d6             	mov    %rdx,%rsi
    26e3:	48 89 c7             	mov    %rax,%rdi
    26e6:	e8 84 08 00 00       	callq  2f6f <_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE>
    26eb:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
    26ef:	48 8d 55 b0          	lea    -0x50(%rbp),%rdx
    26f3:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
    26fa:	48 89 d6             	mov    %rdx,%rsi
    26fd:	48 89 c7             	mov    %rax,%rdi
    2700:	e8 fd 07 00 00       	callq  2f02 <_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE>
  double secs = duration.count();
    2705:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
    270c:	48 89 c7             	mov    %rax,%rdi
    270f:	e8 6e 09 00 00       	callq  3082 <_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv>
    2714:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
    2719:	48 89 45 90          	mov    %rax,-0x70(%rbp)
  auto tacts = tact_end - tact_start;
    271d:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    2721:	48 2b 45 80          	sub    -0x80(%rbp),%rax
    2725:	48 89 45 98          	mov    %rax,-0x68(%rbp)
  double IPC = operations*instructions_per_operation/tacts;
    2729:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    2730:	48 85 c0             	test   %rax,%rax
    2733:	78 07                	js     273c <_ZL10simple_mulR9Mul_state+0x131>
    2735:	c4 e1 fb 2a c0       	vcvtsi2sd %rax,%xmm0,%xmm0
    273a:	eb 15                	jmp    2751 <_ZL10simple_mulR9Mul_state+0x146>
    273c:	48 89 c2             	mov    %rax,%rdx
    273f:	48 d1 ea             	shr    %rdx
    2742:	83 e0 01             	and    $0x1,%eax
    2745:	48 09 c2             	or     %rax,%rdx
    2748:	c4 e1 fb 2a c2       	vcvtsi2sd %rdx,%xmm0,%xmm0
    274d:	c5 fb 58 c0          	vaddsd %xmm0,%xmm0,%xmm0
    2751:	c5 fb 59 8d 70 ff ff 	vmulsd -0x90(%rbp),%xmm0,%xmm1
    2758:	ff 
    2759:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    275d:	48 85 c0             	test   %rax,%rax
    2760:	78 07                	js     2769 <_ZL10simple_mulR9Mul_state+0x15e>
    2762:	c4 e1 fb 2a c0       	vcvtsi2sd %rax,%xmm0,%xmm0
    2767:	eb 15                	jmp    277e <_ZL10simple_mulR9Mul_state+0x173>
    2769:	48 89 c2             	mov    %rax,%rdx
    276c:	48 d1 ea             	shr    %rdx
    276f:	83 e0 01             	and    $0x1,%eax
    2772:	48 09 c2             	or     %rax,%rdx
    2775:	c4 e1 fb 2a c2       	vcvtsi2sd %rdx,%xmm0,%xmm0
    277a:	c5 fb 58 c0          	vaddsd %xmm0,%xmm0,%xmm0
    277e:	c5 f3 5e c0          	vdivsd %xmm0,%xmm1,%xmm0
    2782:	c5 fb 11 45 a0       	vmovsd %xmm0,-0x60(%rbp)
  double IPS = IPC*(tacts/secs);
    2787:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    278b:	48 85 c0             	test   %rax,%rax
    278e:	78 07                	js     2797 <_ZL10simple_mulR9Mul_state+0x18c>
    2790:	c4 e1 fb 2a c0       	vcvtsi2sd %rax,%xmm0,%xmm0
    2795:	eb 15                	jmp    27ac <_ZL10simple_mulR9Mul_state+0x1a1>
    2797:	48 89 c2             	mov    %rax,%rdx
    279a:	48 d1 ea             	shr    %rdx
    279d:	83 e0 01             	and    $0x1,%eax
    27a0:	48 09 c2             	or     %rax,%rdx
    27a3:	c4 e1 fb 2a c2       	vcvtsi2sd %rdx,%xmm0,%xmm0
    27a8:	c5 fb 58 c0          	vaddsd %xmm0,%xmm0,%xmm0
    27ac:	c5 fb 5e 45 90       	vdivsd -0x70(%rbp),%xmm0,%xmm0
    27b1:	c5 fb 10 4d a0       	vmovsd -0x60(%rbp),%xmm1
    27b6:	c5 f3 59 c0          	vmulsd %xmm0,%xmm1,%xmm0
    27ba:	c5 fb 11 45 a8       	vmovsd %xmm0,-0x58(%rbp)
  Line_state line_state {operations, secs, operations/secs, tacts, tacts/secs, IPC, IPS, value1};
    27bf:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    27c6:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
    27ca:	c5 fb 10 45 90       	vmovsd -0x70(%rbp),%xmm0
    27cf:	c5 fb 11 45 b8       	vmovsd %xmm0,-0x48(%rbp)
    27d4:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    27db:	48 85 c0             	test   %rax,%rax
    27de:	78 07                	js     27e7 <_ZL10simple_mulR9Mul_state+0x1dc>
    27e0:	c4 e1 fb 2a c0       	vcvtsi2sd %rax,%xmm0,%xmm0
    27e5:	eb 15                	jmp    27fc <_ZL10simple_mulR9Mul_state+0x1f1>
    27e7:	48 89 c2             	mov    %rax,%rdx
    27ea:	48 d1 ea             	shr    %rdx
    27ed:	83 e0 01             	and    $0x1,%eax
    27f0:	48 09 c2             	or     %rax,%rdx
    27f3:	c4 e1 fb 2a c2       	vcvtsi2sd %rdx,%xmm0,%xmm0
    27f8:	c5 fb 58 c0          	vaddsd %xmm0,%xmm0,%xmm0
    27fc:	c5 fb 5e 45 90       	vdivsd -0x70(%rbp),%xmm0,%xmm0
    2801:	c5 fb 11 45 c0       	vmovsd %xmm0,-0x40(%rbp)
    2806:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    280a:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    280e:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    2812:	48 85 c0             	test   %rax,%rax
    2815:	78 07                	js     281e <_ZL10simple_mulR9Mul_state+0x213>
    2817:	c4 e1 fb 2a c0       	vcvtsi2sd %rax,%xmm0,%xmm0
    281c:	eb 15                	jmp    2833 <_ZL10simple_mulR9Mul_state+0x228>
    281e:	48 89 c2             	mov    %rax,%rdx
    2821:	48 d1 ea             	shr    %rdx
    2824:	83 e0 01             	and    $0x1,%eax
    2827:	48 09 c2             	or     %rax,%rdx
    282a:	c4 e1 fb 2a c2       	vcvtsi2sd %rdx,%xmm0,%xmm0
    282f:	c5 fb 58 c0          	vaddsd %xmm0,%xmm0,%xmm0
    2833:	c5 fb 5e 45 90       	vdivsd -0x70(%rbp),%xmm0,%xmm0
    2838:	c5 fb 11 45 d0       	vmovsd %xmm0,-0x30(%rbp)
    283d:	c5 fb 10 45 a0       	vmovsd -0x60(%rbp),%xmm0
    2842:	c5 fb 11 45 d8       	vmovsd %xmm0,-0x28(%rbp)
    2847:	c5 fb 10 45 a8       	vmovsd -0x58(%rbp),%xmm0
    284c:	c5 fb 11 45 e0       	vmovsd %xmm0,-0x20(%rbp)
    2851:	8b 85 48 ff ff ff    	mov    -0xb8(%rbp),%eax
    2857:	89 45 e8             	mov    %eax,-0x18(%rbp)
  std::cout << line_state;
    285a:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
    285e:	48 89 c6             	mov    %rax,%rsi
    2861:	48 8d 3d d8 47 00 00 	lea    0x47d8(%rip),%rdi        # 7040 <_ZSt4cout@@GLIBCXX_3.4>
    2868:	e8 20 17 00 00       	callq  3f8d <_ZN3hse8parallel4lab1lsERSoRKNS1_10Line_stateE>
  
}
    286d:	90                   	nop
    286e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2872:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    2879:	00 00 
    287b:	74 05                	je     2882 <_ZL10simple_mulR9Mul_state+0x277>
    287d:	e8 6e fb ff ff       	callq  23f0 <__stack_chk_fail@plt>
    2882:	c9                   	leaveq 
    2883:	c3                   	retq   

0000000000002884 <_ZL7sse_mulR9Mul_state>:

static void sse_mul(Mul_state& state) {
    2884:	f3 0f 1e fa          	endbr64 
    2888:	55                   	push   %rbp
    2889:	48 89 e5             	mov    %rsp,%rbp
    288c:	48 81 ec 30 01 00 00 	sub    $0x130,%rsp
    2893:	48 89 bd d8 fe ff ff 	mov    %rdi,-0x128(%rbp)
    289a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    28a1:	00 00 
    28a3:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    28a7:	31 c0                	xor    %eax,%eax
  double instructions_per_operation = 14; // from asm.asm
    28a9:	c5 fb 10 05 9f 27 00 	vmovsd 0x279f(%rip),%xmm0        # 5050 <_ZStL19piecewise_construct+0x48>
    28b0:	00 
    28b1:	c5 fb 11 85 30 ff ff 	vmovsd %xmm0,-0xd0(%rbp)
    28b8:	ff 
  std::size_t operations = state.operations/4;
    28b9:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
    28c0:	48 8b 00             	mov    (%rax),%rax
    28c3:	48 c1 e8 02          	shr    $0x2,%rax
    28c7:	48 89 85 38 ff ff ff 	mov    %rax,-0xc8(%rbp)
  __m128i val1 = _mm_set_epi32 (state.value1[0], state.value1[1], state.value1[2], state.value1[3]);
    28ce:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
    28d5:	8b 40 14             	mov    0x14(%rax),%eax
    28d8:	48 8b 95 d8 fe ff ff 	mov    -0x128(%rbp),%rdx
    28df:	8b 52 10             	mov    0x10(%rdx),%edx
    28e2:	48 8b 8d d8 fe ff ff 	mov    -0x128(%rbp),%rcx
    28e9:	8b 49 0c             	mov    0xc(%rcx),%ecx
    28ec:	48 8b b5 d8 fe ff ff 	mov    -0x128(%rbp),%rsi
    28f3:	8b 76 08             	mov    0x8(%rsi),%esi
    28f6:	89 b5 00 ff ff ff    	mov    %esi,-0x100(%rbp)
    28fc:	89 8d 04 ff ff ff    	mov    %ecx,-0xfc(%rbp)
    2902:	89 95 08 ff ff ff    	mov    %edx,-0xf8(%rbp)
    2908:	89 85 0c ff ff ff    	mov    %eax,-0xf4(%rbp)
}

extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_set_epi32 (int __q3, int __q2, int __q1, int __q0)
{
  return __extension__ (__m128i)(__v4si){ __q0, __q1, __q2, __q3 };
    290e:	8b 85 00 ff ff ff    	mov    -0x100(%rbp),%eax
    2914:	8b 95 04 ff ff ff    	mov    -0xfc(%rbp),%edx
    291a:	c5 f9 6e d2          	vmovd  %edx,%xmm2
    291e:	c4 e3 69 22 c8 01    	vpinsrd $0x1,%eax,%xmm2,%xmm1
    2924:	8b 85 08 ff ff ff    	mov    -0xf8(%rbp),%eax
    292a:	8b 95 0c ff ff ff    	mov    -0xf4(%rbp),%edx
    2930:	c5 f9 6e da          	vmovd  %edx,%xmm3
    2934:	c4 e3 61 22 c0 01    	vpinsrd $0x1,%eax,%xmm3,%xmm0
    293a:	c5 f9 6c c1          	vpunpcklqdq %xmm1,%xmm0,%xmm0
    293e:	c5 f8 29 85 70 ff ff 	vmovaps %xmm0,-0x90(%rbp)
    2945:	ff 
  __m128i val2 = _mm_set_epi32 (state.value2[0], state.value2[1], state.value2[2], state.value2[3]);
    2946:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
    294d:	8b 40 24             	mov    0x24(%rax),%eax
    2950:	48 8b 95 d8 fe ff ff 	mov    -0x128(%rbp),%rdx
    2957:	8b 52 20             	mov    0x20(%rdx),%edx
    295a:	48 8b 8d d8 fe ff ff 	mov    -0x128(%rbp),%rcx
    2961:	8b 49 1c             	mov    0x1c(%rcx),%ecx
    2964:	48 8b b5 d8 fe ff ff 	mov    -0x128(%rbp),%rsi
    296b:	8b 76 18             	mov    0x18(%rsi),%esi
    296e:	89 b5 f0 fe ff ff    	mov    %esi,-0x110(%rbp)
    2974:	89 8d f4 fe ff ff    	mov    %ecx,-0x10c(%rbp)
    297a:	89 95 f8 fe ff ff    	mov    %edx,-0x108(%rbp)
    2980:	89 85 fc fe ff ff    	mov    %eax,-0x104(%rbp)
    2986:	8b 85 f0 fe ff ff    	mov    -0x110(%rbp),%eax
    298c:	8b 95 f4 fe ff ff    	mov    -0x10c(%rbp),%edx
    2992:	c5 f9 6e e2          	vmovd  %edx,%xmm4
    2996:	c4 e3 59 22 c8 01    	vpinsrd $0x1,%eax,%xmm4,%xmm1
    299c:	8b 85 f8 fe ff ff    	mov    -0x108(%rbp),%eax
    29a2:	8b 95 fc fe ff ff    	mov    -0x104(%rbp),%edx
    29a8:	c5 f9 6e ea          	vmovd  %edx,%xmm5
    29ac:	c4 e3 51 22 c0 01    	vpinsrd $0x1,%eax,%xmm5,%xmm0
    29b2:	c5 f9 6c c1          	vpunpcklqdq %xmm1,%xmm0,%xmm0
    29b6:	c5 f8 29 45 80       	vmovaps %xmm0,-0x80(%rbp)
  
  std::size_t iterator = 0;
    29bb:	48 c7 85 28 ff ff ff 	movq   $0x0,-0xd8(%rbp)
    29c2:	00 00 00 00 
  
  auto start = std::chrono::system_clock::now();
    29c6:	e8 e5 f8 ff ff       	callq  22b0 <_ZNSt6chrono3_V212system_clock3nowEv@plt>
    29cb:	48 89 85 10 ff ff ff 	mov    %rax,-0xf0(%rbp)
  std::uint64_t tact_start = rdtsc();
    29d2:	e8 12 fc ff ff       	callq  25e9 <_Z5rdtscv>
    29d7:	48 89 85 40 ff ff ff 	mov    %rax,-0xc0(%rbp)
  
  for (;iterator < operations; iterator++)
    29de:	48 8b 85 28 ff ff ff 	mov    -0xd8(%rbp),%rax
    29e5:	48 3b 85 38 ff ff ff 	cmp    -0xc8(%rbp),%rax
    29ec:	73 38                	jae    2a26 <_ZL7sse_mulR9Mul_state+0x1a2>
    29ee:	c5 f9 6f 85 70 ff ff 	vmovdqa -0x90(%rbp),%xmm0
    29f5:	ff 
    29f6:	c5 f8 29 45 90       	vmovaps %xmm0,-0x70(%rbp)
    29fb:	c5 f9 6f 45 80       	vmovdqa -0x80(%rbp),%xmm0
    2a00:	c5 f8 29 45 a0       	vmovaps %xmm0,-0x60(%rbp)
/* Packed integer 32-bit multiplication with truncation of upper
   halves of results.  */
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_mullo_epi32 (__m128i __X, __m128i __Y)
{
  return (__m128i) ((__v4su)__X * (__v4su)__Y);
    2a05:	c5 f9 6f 4d 90       	vmovdqa -0x70(%rbp),%xmm1
    2a0a:	c5 f9 6f 45 a0       	vmovdqa -0x60(%rbp),%xmm0
    2a0f:	c4 e2 71 40 c0       	vpmulld %xmm0,%xmm1,%xmm0
    2a14:	90                   	nop
  	val1 = _mm_mullo_epi32(val1, val2); 
    2a15:	c5 f8 29 85 70 ff ff 	vmovaps %xmm0,-0x90(%rbp)
    2a1c:	ff 
  for (;iterator < operations; iterator++)
    2a1d:	48 ff 85 28 ff ff ff 	incq   -0xd8(%rbp)
    2a24:	eb b8                	jmp    29de <_ZL7sse_mulR9Mul_state+0x15a>
  
  std::uint64_t tact_end = rdtsc();
    2a26:	e8 be fb ff ff       	callq  25e9 <_Z5rdtscv>
    2a2b:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  auto end = std::chrono::system_clock::now();
    2a32:	e8 79 f8 ff ff       	callq  22b0 <_ZNSt6chrono3_V212system_clock3nowEv@plt>
    2a37:	48 89 85 18 ff ff ff 	mov    %rax,-0xe8(%rbp)
  operations *= 4;
    2a3e:	48 c1 a5 38 ff ff ff 	shlq   $0x2,-0xc8(%rbp)
    2a45:	02 
  std::int32_t res = _mm_extract_epi32(val1, 0);//*_mm_extract_epi32(val1, 1)*_mm_extract_epi32(val1, 2)*_mm_extract_epi32(val1, 3);
    2a46:	c5 f9 6f 85 70 ff ff 	vmovdqa -0x90(%rbp),%xmm0
    2a4d:	ff 
    2a4e:	c5 f9 7e c0          	vmovd  %xmm0,%eax
    2a52:	89 85 ec fe ff ff    	mov    %eax,-0x114(%rbp)
  std::chrono::duration<double> duration = end - start;
    2a58:	48 8d 95 10 ff ff ff 	lea    -0xf0(%rbp),%rdx
    2a5f:	48 8d 85 18 ff ff ff 	lea    -0xe8(%rbp),%rax
    2a66:	48 89 d6             	mov    %rdx,%rsi
    2a69:	48 89 c7             	mov    %rax,%rdi
    2a6c:	e8 fe 04 00 00       	callq  2f6f <_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE>
    2a71:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
    2a75:	48 8d 55 b0          	lea    -0x50(%rbp),%rdx
    2a79:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
    2a80:	48 89 d6             	mov    %rdx,%rsi
    2a83:	48 89 c7             	mov    %rax,%rdi
    2a86:	e8 77 04 00 00       	callq  2f02 <_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE>
  double secs = duration.count();
    2a8b:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
    2a92:	48 89 c7             	mov    %rax,%rdi
    2a95:	e8 e8 05 00 00       	callq  3082 <_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv>
    2a9a:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
    2a9f:	48 89 85 50 ff ff ff 	mov    %rax,-0xb0(%rbp)
  auto tacts = tact_end - tact_start;
    2aa6:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
    2aad:	48 2b 85 40 ff ff ff 	sub    -0xc0(%rbp),%rax
    2ab4:	48 89 85 58 ff ff ff 	mov    %rax,-0xa8(%rbp)
  double IPC = operations*instructions_per_operation/tacts;
    2abb:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
    2ac2:	48 85 c0             	test   %rax,%rax
    2ac5:	78 07                	js     2ace <_ZL7sse_mulR9Mul_state+0x24a>
    2ac7:	c4 e1 fb 2a c0       	vcvtsi2sd %rax,%xmm0,%xmm0
    2acc:	eb 15                	jmp    2ae3 <_ZL7sse_mulR9Mul_state+0x25f>
    2ace:	48 89 c2             	mov    %rax,%rdx
    2ad1:	48 d1 ea             	shr    %rdx
    2ad4:	83 e0 01             	and    $0x1,%eax
    2ad7:	48 09 c2             	or     %rax,%rdx
    2ada:	c4 e1 fb 2a c2       	vcvtsi2sd %rdx,%xmm0,%xmm0
    2adf:	c5 fb 58 c0          	vaddsd %xmm0,%xmm0,%xmm0
    2ae3:	c5 fb 59 8d 30 ff ff 	vmulsd -0xd0(%rbp),%xmm0,%xmm1
    2aea:	ff 
    2aeb:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
    2af2:	48 85 c0             	test   %rax,%rax
    2af5:	78 07                	js     2afe <_ZL7sse_mulR9Mul_state+0x27a>
    2af7:	c4 e1 fb 2a c0       	vcvtsi2sd %rax,%xmm0,%xmm0
    2afc:	eb 15                	jmp    2b13 <_ZL7sse_mulR9Mul_state+0x28f>
    2afe:	48 89 c2             	mov    %rax,%rdx
    2b01:	48 d1 ea             	shr    %rdx
    2b04:	83 e0 01             	and    $0x1,%eax
    2b07:	48 09 c2             	or     %rax,%rdx
    2b0a:	c4 e1 fb 2a c2       	vcvtsi2sd %rdx,%xmm0,%xmm0
    2b0f:	c5 fb 58 c0          	vaddsd %xmm0,%xmm0,%xmm0
    2b13:	c5 f3 5e c0          	vdivsd %xmm0,%xmm1,%xmm0
    2b17:	c5 fb 11 85 60 ff ff 	vmovsd %xmm0,-0xa0(%rbp)
    2b1e:	ff 
  double IPS = IPC*(tacts/secs);
    2b1f:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
    2b26:	48 85 c0             	test   %rax,%rax
    2b29:	78 07                	js     2b32 <_ZL7sse_mulR9Mul_state+0x2ae>
    2b2b:	c4 e1 fb 2a c0       	vcvtsi2sd %rax,%xmm0,%xmm0
    2b30:	eb 15                	jmp    2b47 <_ZL7sse_mulR9Mul_state+0x2c3>
    2b32:	48 89 c2             	mov    %rax,%rdx
    2b35:	48 d1 ea             	shr    %rdx
    2b38:	83 e0 01             	and    $0x1,%eax
    2b3b:	48 09 c2             	or     %rax,%rdx
    2b3e:	c4 e1 fb 2a c2       	vcvtsi2sd %rdx,%xmm0,%xmm0
    2b43:	c5 fb 58 c0          	vaddsd %xmm0,%xmm0,%xmm0
    2b47:	c5 fb 5e 85 50 ff ff 	vdivsd -0xb0(%rbp),%xmm0,%xmm0
    2b4e:	ff 
    2b4f:	c5 fb 10 8d 60 ff ff 	vmovsd -0xa0(%rbp),%xmm1
    2b56:	ff 
    2b57:	c5 f3 59 c0          	vmulsd %xmm0,%xmm1,%xmm0
    2b5b:	c5 fb 11 85 68 ff ff 	vmovsd %xmm0,-0x98(%rbp)
    2b62:	ff 
  Line_state line_state {operations, secs, operations/secs, tacts, tacts/secs, IPC, IPS, res};
    2b63:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
    2b6a:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
    2b6e:	c5 fb 10 85 50 ff ff 	vmovsd -0xb0(%rbp),%xmm0
    2b75:	ff 
    2b76:	c5 fb 11 45 b8       	vmovsd %xmm0,-0x48(%rbp)
    2b7b:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
    2b82:	48 85 c0             	test   %rax,%rax
    2b85:	78 07                	js     2b8e <_ZL7sse_mulR9Mul_state+0x30a>
    2b87:	c4 e1 fb 2a c0       	vcvtsi2sd %rax,%xmm0,%xmm0
    2b8c:	eb 15                	jmp    2ba3 <_ZL7sse_mulR9Mul_state+0x31f>
    2b8e:	48 89 c2             	mov    %rax,%rdx
    2b91:	48 d1 ea             	shr    %rdx
    2b94:	83 e0 01             	and    $0x1,%eax
    2b97:	48 09 c2             	or     %rax,%rdx
    2b9a:	c4 e1 fb 2a c2       	vcvtsi2sd %rdx,%xmm0,%xmm0
    2b9f:	c5 fb 58 c0          	vaddsd %xmm0,%xmm0,%xmm0
    2ba3:	c5 fb 5e 85 50 ff ff 	vdivsd -0xb0(%rbp),%xmm0,%xmm0
    2baa:	ff 
    2bab:	c5 fb 11 45 c0       	vmovsd %xmm0,-0x40(%rbp)
    2bb0:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
    2bb7:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    2bbb:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
    2bc2:	48 85 c0             	test   %rax,%rax
    2bc5:	78 07                	js     2bce <_ZL7sse_mulR9Mul_state+0x34a>
    2bc7:	c4 e1 fb 2a c0       	vcvtsi2sd %rax,%xmm0,%xmm0
    2bcc:	eb 15                	jmp    2be3 <_ZL7sse_mulR9Mul_state+0x35f>
    2bce:	48 89 c2             	mov    %rax,%rdx
    2bd1:	48 d1 ea             	shr    %rdx
    2bd4:	83 e0 01             	and    $0x1,%eax
    2bd7:	48 09 c2             	or     %rax,%rdx
    2bda:	c4 e1 fb 2a c2       	vcvtsi2sd %rdx,%xmm0,%xmm0
    2bdf:	c5 fb 58 c0          	vaddsd %xmm0,%xmm0,%xmm0
    2be3:	c5 fb 5e 85 50 ff ff 	vdivsd -0xb0(%rbp),%xmm0,%xmm0
    2bea:	ff 
    2beb:	c5 fb 11 45 d0       	vmovsd %xmm0,-0x30(%rbp)
    2bf0:	c5 fb 10 85 60 ff ff 	vmovsd -0xa0(%rbp),%xmm0
    2bf7:	ff 
    2bf8:	c5 fb 11 45 d8       	vmovsd %xmm0,-0x28(%rbp)
    2bfd:	c5 fb 10 85 68 ff ff 	vmovsd -0x98(%rbp),%xmm0
    2c04:	ff 
    2c05:	c5 fb 11 45 e0       	vmovsd %xmm0,-0x20(%rbp)
    2c0a:	8b 85 ec fe ff ff    	mov    -0x114(%rbp),%eax
    2c10:	89 45 e8             	mov    %eax,-0x18(%rbp)
  std::cout << line_state;
    2c13:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
    2c17:	48 89 c6             	mov    %rax,%rsi
    2c1a:	48 8d 3d 1f 44 00 00 	lea    0x441f(%rip),%rdi        # 7040 <_ZSt4cout@@GLIBCXX_3.4>
    2c21:	e8 67 13 00 00       	callq  3f8d <_ZN3hse8parallel4lab1lsERSoRKNS1_10Line_stateE>
  
}
    2c26:	90                   	nop
    2c27:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2c2b:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    2c32:	00 00 
    2c34:	74 05                	je     2c3b <_ZL7sse_mulR9Mul_state+0x3b7>
    2c36:	e8 b5 f7 ff ff       	callq  23f0 <__stack_chk_fail@plt>
    2c3b:	c9                   	leaveq 
    2c3c:	c3                   	retq   

0000000000002c3d <main>:

int main()
{
    2c3d:	f3 0f 1e fa          	endbr64 
    2c41:	55                   	push   %rbp
    2c42:	48 89 e5             	mov    %rsp,%rbp
    2c45:	53                   	push   %rbx
    2c46:	48 83 ec 58          	sub    $0x58,%rsp
    2c4a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2c51:	00 00 
    2c53:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    2c57:	31 c0                	xor    %eax,%eax
	std::size_t max_op = pow(10,8);
    2c59:	48 c7 45 b8 00 e1 f5 	movq   $0x5f5e100,-0x48(%rbp)
    2c60:	05 
	std::cout << "### SIMPLE MULTIPLICATION\n" << make_header();
    2c61:	48 8d 35 a1 23 00 00 	lea    0x23a1(%rip),%rsi        # 5009 <_ZStL19piecewise_construct+0x1>
    2c68:	48 8d 3d d1 43 00 00 	lea    0x43d1(%rip),%rdi        # 7040 <_ZSt4cout@@GLIBCXX_3.4>
    2c6f:	e8 2c f7 ff ff       	callq  23a0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    2c74:	48 89 c3             	mov    %rax,%rbx
    2c77:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    2c7b:	48 89 c7             	mov    %rax,%rdi
    2c7e:	e8 94 08 00 00       	callq  3517 <_ZN3hse8parallel4lab111make_headerB5cxx11Ev>
    2c83:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    2c87:	48 89 c6             	mov    %rax,%rsi
    2c8a:	48 89 df             	mov    %rbx,%rdi
    2c8d:	e8 fe f6 ff ff       	callq  2390 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@plt>
    2c92:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    2c96:	48 89 c7             	mov    %rax,%rdi
    2c99:	e8 72 f6 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
	for(std::size_t operations = pow(10,4); operations <= max_op; operations *= 10)
    2c9e:	48 c7 45 a8 10 27 00 	movq   $0x2710,-0x58(%rbp)
    2ca5:	00 
    2ca6:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    2caa:	48 3b 45 b8          	cmp    -0x48(%rbp),%rax
    2cae:	77 61                	ja     2d11 <main+0xd4>
	{
		Mul_state state {operations, {5}, {3}};
    2cb0:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
    2cb7:	00 
    2cb8:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
    2cbf:	00 
    2cc0:	48 c7 45 d0 00 00 00 	movq   $0x0,-0x30(%rbp)
    2cc7:	00 
    2cc8:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
    2ccf:	00 
    2cd0:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
    2cd7:	00 
    2cd8:	c7 45 c8 05 00 00 00 	movl   $0x5,-0x38(%rbp)
    2cdf:	c7 45 d8 03 00 00 00 	movl   $0x3,-0x28(%rbp)
    2ce6:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    2cea:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
		simple_mul(state);
    2cee:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    2cf2:	48 89 c7             	mov    %rax,%rdi
    2cf5:	e8 11 f9 ff ff       	callq  260b <_ZL10simple_mulR9Mul_state>
	for(std::size_t operations = pow(10,4); operations <= max_op; operations *= 10)
    2cfa:	48 8b 55 a8          	mov    -0x58(%rbp),%rdx
    2cfe:	48 89 d0             	mov    %rdx,%rax
    2d01:	48 c1 e0 02          	shl    $0x2,%rax
    2d05:	48 01 d0             	add    %rdx,%rax
    2d08:	48 01 c0             	add    %rax,%rax
    2d0b:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
    2d0f:	eb 95                	jmp    2ca6 <main+0x69>
	}
	std::cout << "\n\n";
    2d11:	48 8d 35 0c 23 00 00 	lea    0x230c(%rip),%rsi        # 5024 <_ZStL19piecewise_construct+0x1c>
    2d18:	48 8d 3d 21 43 00 00 	lea    0x4321(%rip),%rdi        # 7040 <_ZSt4cout@@GLIBCXX_3.4>
    2d1f:	e8 7c f6 ff ff       	callq  23a0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
	std::cout << "### SSE4.1 MULTIPLICATION\n" << make_header();
    2d24:	48 8d 35 fc 22 00 00 	lea    0x22fc(%rip),%rsi        # 5027 <_ZStL19piecewise_construct+0x1f>
    2d2b:	48 8d 3d 0e 43 00 00 	lea    0x430e(%rip),%rdi        # 7040 <_ZSt4cout@@GLIBCXX_3.4>
    2d32:	e8 69 f6 ff ff       	callq  23a0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    2d37:	48 89 c3             	mov    %rax,%rbx
    2d3a:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    2d3e:	48 89 c7             	mov    %rax,%rdi
    2d41:	e8 d1 07 00 00       	callq  3517 <_ZN3hse8parallel4lab111make_headerB5cxx11Ev>
    2d46:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    2d4a:	48 89 c6             	mov    %rax,%rsi
    2d4d:	48 89 df             	mov    %rbx,%rdi
    2d50:	e8 3b f6 ff ff       	callq  2390 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@plt>
    2d55:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    2d59:	48 89 c7             	mov    %rax,%rdi
    2d5c:	e8 af f5 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
	for(std::size_t operations = pow(10,4); operations <= max_op; operations *= 10)
    2d61:	48 c7 45 b0 10 27 00 	movq   $0x2710,-0x50(%rbp)
    2d68:	00 
    2d69:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    2d6d:	48 3b 45 b8          	cmp    -0x48(%rbp),%rax
    2d71:	0f 87 8e 00 00 00    	ja     2e05 <main+0x1c8>
	{
		Mul_state state {operations, {5, 5, 5, 5}, {3, 3, 3, 3}};
    2d77:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
    2d7e:	00 
    2d7f:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
    2d86:	00 
    2d87:	48 c7 45 d0 00 00 00 	movq   $0x0,-0x30(%rbp)
    2d8e:	00 
    2d8f:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
    2d96:	00 
    2d97:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
    2d9e:	00 
    2d9f:	c7 45 c8 05 00 00 00 	movl   $0x5,-0x38(%rbp)
    2da6:	c7 45 cc 05 00 00 00 	movl   $0x5,-0x34(%rbp)
    2dad:	c7 45 d0 05 00 00 00 	movl   $0x5,-0x30(%rbp)
    2db4:	c7 45 d4 05 00 00 00 	movl   $0x5,-0x2c(%rbp)
    2dbb:	c7 45 d8 03 00 00 00 	movl   $0x3,-0x28(%rbp)
    2dc2:	c7 45 dc 03 00 00 00 	movl   $0x3,-0x24(%rbp)
    2dc9:	c7 45 e0 03 00 00 00 	movl   $0x3,-0x20(%rbp)
    2dd0:	c7 45 e4 03 00 00 00 	movl   $0x3,-0x1c(%rbp)
    2dd7:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    2ddb:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
		sse_mul(state);
    2ddf:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    2de3:	48 89 c7             	mov    %rax,%rdi
    2de6:	e8 99 fa ff ff       	callq  2884 <_ZL7sse_mulR9Mul_state>
	for(std::size_t operations = pow(10,4); operations <= max_op; operations *= 10)
    2deb:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
    2def:	48 89 d0             	mov    %rdx,%rax
    2df2:	48 c1 e0 02          	shl    $0x2,%rax
    2df6:	48 01 d0             	add    %rdx,%rax
    2df9:	48 01 c0             	add    %rax,%rax
    2dfc:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
    2e00:	e9 64 ff ff ff       	jmpq   2d69 <main+0x12c>
	}
	return 0;
    2e05:	b8 00 00 00 00       	mov    $0x0,%eax
}
    2e0a:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    2e0e:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    2e15:	00 00 
    2e17:	74 43                	je     2e5c <main+0x21f>
    2e19:	eb 3c                	jmp    2e57 <main+0x21a>
    2e1b:	f3 0f 1e fa          	endbr64 
    2e1f:	48 89 c3             	mov    %rax,%rbx
	std::cout << "### SIMPLE MULTIPLICATION\n" << make_header();
    2e22:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    2e26:	48 89 c7             	mov    %rax,%rdi
    2e29:	e8 e2 f4 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    2e2e:	48 89 d8             	mov    %rbx,%rax
    2e31:	48 89 c7             	mov    %rax,%rdi
    2e34:	e8 57 f6 ff ff       	callq  2490 <_Unwind_Resume@plt>
    2e39:	f3 0f 1e fa          	endbr64 
    2e3d:	48 89 c3             	mov    %rax,%rbx
	std::cout << "### SSE4.1 MULTIPLICATION\n" << make_header();
    2e40:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    2e44:	48 89 c7             	mov    %rax,%rdi
    2e47:	e8 c4 f4 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    2e4c:	48 89 d8             	mov    %rbx,%rax
    2e4f:	48 89 c7             	mov    %rax,%rdi
    2e52:	e8 39 f6 ff ff       	callq  2490 <_Unwind_Resume@plt>
}
    2e57:	e8 94 f5 ff ff       	callq  23f0 <__stack_chk_fail@plt>
    2e5c:	48 83 c4 58          	add    $0x58,%rsp
    2e60:	5b                   	pop    %rbx
    2e61:	5d                   	pop    %rbp
    2e62:	c3                   	retq   

0000000000002e63 <_Z41__static_initialization_and_destruction_0ii>:
    2e63:	f3 0f 1e fa          	endbr64 
    2e67:	55                   	push   %rbp
    2e68:	48 89 e5             	mov    %rsp,%rbp
    2e6b:	48 83 ec 10          	sub    $0x10,%rsp
    2e6f:	89 7d fc             	mov    %edi,-0x4(%rbp)
    2e72:	89 75 f8             	mov    %esi,-0x8(%rbp)
    2e75:	83 7d fc 01          	cmpl   $0x1,-0x4(%rbp)
    2e79:	75 32                	jne    2ead <_Z41__static_initialization_and_destruction_0ii+0x4a>
    2e7b:	81 7d f8 ff ff 00 00 	cmpl   $0xffff,-0x8(%rbp)
    2e82:	75 29                	jne    2ead <_Z41__static_initialization_and_destruction_0ii+0x4a>
  extern wostream wclog;	/// Linked to standard error (buffered)
#endif
  //@}

  // For construction of filebuffers for cout, cin, cerr, clog et. al.
  static ios_base::Init __ioinit;
    2e84:	48 8d 3d c6 42 00 00 	lea    0x42c6(%rip),%rdi        # 7151 <_ZStL8__ioinit>
    2e8b:	e8 d0 f5 ff ff       	callq  2460 <_ZNSt8ios_base4InitC1Ev@plt>
    2e90:	48 8d 15 71 41 00 00 	lea    0x4171(%rip),%rdx        # 7008 <__dso_handle>
    2e97:	48 8d 35 b3 42 00 00 	lea    0x42b3(%rip),%rsi        # 7151 <_ZStL8__ioinit>
    2e9e:	48 8b 05 53 41 00 00 	mov    0x4153(%rip),%rax        # 6ff8 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
    2ea5:	48 89 c7             	mov    %rax,%rdi
    2ea8:	e8 d3 f4 ff ff       	callq  2380 <__cxa_atexit@plt>
    2ead:	90                   	nop
    2eae:	c9                   	leaveq 
    2eaf:	c3                   	retq   

0000000000002eb0 <_GLOBAL__sub_I__Z5rdtscv>:
    2eb0:	f3 0f 1e fa          	endbr64 
    2eb4:	55                   	push   %rbp
    2eb5:	48 89 e5             	mov    %rsp,%rbp
    2eb8:	be ff ff 00 00       	mov    $0xffff,%esi
    2ebd:	bf 01 00 00 00       	mov    $0x1,%edi
    2ec2:	e8 9c ff ff ff       	callq  2e63 <_Z41__static_initialization_and_destruction_0ii>
    2ec7:	5d                   	pop    %rbp
    2ec8:	c3                   	retq   
    2ec9:	90                   	nop

0000000000002eca <_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv>:
	~duration() = default;
	duration& operator=(const duration&) = default;

	// 20.11.5.2 observer
	constexpr rep
	count() const
    2eca:	f3 0f 1e fa          	endbr64 
    2ece:	55                   	push   %rbp
    2ecf:	48 89 e5             	mov    %rsp,%rbp
    2ed2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
	{ return __r; }
    2ed6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2eda:	48 8b 00             	mov    (%rax),%rax
    2edd:	5d                   	pop    %rbp
    2ede:	c3                   	retq   
    2edf:	90                   	nop

0000000000002ee0 <_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_>:
	  constexpr explicit duration(const _Rep2& __rep)
    2ee0:	f3 0f 1e fa          	endbr64 
    2ee4:	55                   	push   %rbp
    2ee5:	48 89 e5             	mov    %rsp,%rbp
    2ee8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    2eec:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
	  : __r(static_cast<rep>(__rep)) { }
    2ef0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    2ef4:	48 8b 10             	mov    (%rax),%rdx
    2ef7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2efb:	48 89 10             	mov    %rdx,(%rax)
    2efe:	90                   	nop
    2eff:	5d                   	pop    %rbp
    2f00:	c3                   	retq   
    2f01:	90                   	nop

0000000000002f02 <_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE>:
	  constexpr duration(const duration<_Rep2, _Period2>& __d)
    2f02:	f3 0f 1e fa          	endbr64 
    2f06:	55                   	push   %rbp
    2f07:	48 89 e5             	mov    %rsp,%rbp
    2f0a:	48 83 ec 20          	sub    $0x20,%rsp
    2f0e:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    2f12:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    2f16:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2f1d:	00 00 
    2f1f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    2f23:	31 c0                	xor    %eax,%eax
	  : __r(duration_cast<duration>(__d).count()) { }
    2f25:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    2f29:	48 89 c7             	mov    %rax,%rdi
    2f2c:	e8 67 01 00 00       	callq  3098 <_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE>
    2f31:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
    2f36:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
    2f3b:	c5 fb 11 45 f0       	vmovsd %xmm0,-0x10(%rbp)
    2f40:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
    2f44:	48 89 c7             	mov    %rax,%rdi
    2f47:	e8 36 01 00 00       	callq  3082 <_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv>
    2f4c:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
    2f51:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    2f55:	48 89 02             	mov    %rax,(%rdx)
    2f58:	90                   	nop
    2f59:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2f5d:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    2f64:	00 00 
    2f66:	74 05                	je     2f6d <_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE+0x6b>
    2f68:	e8 83 f4 ff ff       	callq  23f0 <__stack_chk_fail@plt>
    2f6d:	c9                   	leaveq 
    2f6e:	c3                   	retq   

0000000000002f6f <_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE>:
	return __time_point(__lhs.time_since_epoch() -__rhs);
      }

    template<typename _Clock, typename _Dur1, typename _Dur2>
      constexpr typename common_type<_Dur1, _Dur2>::type
      operator-(const time_point<_Clock, _Dur1>& __lhs,
    2f6f:	f3 0f 1e fa          	endbr64 
    2f73:	55                   	push   %rbp
    2f74:	48 89 e5             	mov    %rsp,%rbp
    2f77:	48 83 ec 30          	sub    $0x30,%rsp
    2f7b:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    2f7f:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    2f83:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2f8a:	00 00 
    2f8c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    2f90:	31 c0                	xor    %eax,%eax
		const time_point<_Clock, _Dur2>& __rhs)
      { return __lhs.time_since_epoch() - __rhs.time_since_epoch(); }
    2f92:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    2f96:	48 89 c7             	mov    %rax,%rdi
    2f99:	e8 ce 00 00 00       	callq  306c <_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv>
    2f9e:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    2fa2:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2fa6:	48 89 c7             	mov    %rax,%rdi
    2fa9:	e8 be 00 00 00       	callq  306c <_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv>
    2fae:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    2fb2:	48 8d 55 f0          	lea    -0x10(%rbp),%rdx
    2fb6:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
    2fba:	48 89 d6             	mov    %rdx,%rsi
    2fbd:	48 89 c7             	mov    %rax,%rdi
    2fc0:	e8 16 00 00 00       	callq  2fdb <_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_>
    2fc5:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    2fc9:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    2fd0:	00 00 
    2fd2:	74 05                	je     2fd9 <_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE+0x6a>
    2fd4:	e8 17 f4 ff ff       	callq  23f0 <__stack_chk_fail@plt>
    2fd9:	c9                   	leaveq 
    2fda:	c3                   	retq   

0000000000002fdb <_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_>:
      operator-(const duration<_Rep1, _Period1>& __lhs,
    2fdb:	f3 0f 1e fa          	endbr64 
    2fdf:	55                   	push   %rbp
    2fe0:	48 89 e5             	mov    %rsp,%rbp
    2fe3:	53                   	push   %rbx
    2fe4:	48 83 ec 48          	sub    $0x48,%rsp
    2fe8:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
    2fec:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
    2ff0:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2ff7:	00 00 
    2ff9:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    2ffd:	31 c0                	xor    %eax,%eax
	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
    2fff:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    3003:	48 8b 00             	mov    (%rax),%rax
    3006:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    300a:	48 8d 45 c8          	lea    -0x38(%rbp),%rax
    300e:	48 89 c7             	mov    %rax,%rdi
    3011:	e8 b4 fe ff ff       	callq  2eca <_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv>
    3016:	48 89 c3             	mov    %rax,%rbx
    3019:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    301d:	48 8b 00             	mov    (%rax),%rax
    3020:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    3024:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    3028:	48 89 c7             	mov    %rax,%rdi
    302b:	e8 9a fe ff ff       	callq  2eca <_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv>
    3030:	48 29 c3             	sub    %rax,%rbx
    3033:	48 89 d8             	mov    %rbx,%rax
    3036:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    303a:	48 8d 55 d8          	lea    -0x28(%rbp),%rdx
    303e:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    3042:	48 89 d6             	mov    %rdx,%rsi
    3045:	48 89 c7             	mov    %rax,%rdi
    3048:	e8 93 fe ff ff       	callq  2ee0 <_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_>
    304d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
      }
    3051:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    3055:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    305c:	00 00 
    305e:	74 05                	je     3065 <_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_+0x8a>
    3060:	e8 8b f3 ff ff       	callq  23f0 <__stack_chk_fail@plt>
    3065:	48 83 c4 48          	add    $0x48,%rsp
    3069:	5b                   	pop    %rbx
    306a:	5d                   	pop    %rbp
    306b:	c3                   	retq   

000000000000306c <_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv>:
	time_since_epoch() const
    306c:	f3 0f 1e fa          	endbr64 
    3070:	55                   	push   %rbp
    3071:	48 89 e5             	mov    %rsp,%rbp
    3074:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
	{ return __d; }
    3078:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    307c:	48 8b 00             	mov    (%rax),%rax
    307f:	5d                   	pop    %rbp
    3080:	c3                   	retq   
    3081:	90                   	nop

0000000000003082 <_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv>:
	count() const
    3082:	f3 0f 1e fa          	endbr64 
    3086:	55                   	push   %rbp
    3087:	48 89 e5             	mov    %rsp,%rbp
    308a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
	{ return __r; }
    308e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3092:	c5 fb 10 00          	vmovsd (%rax),%xmm0
    3096:	5d                   	pop    %rbp
    3097:	c3                   	retq   

0000000000003098 <_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE>:
      duration_cast(const duration<_Rep, _Period>& __d)
    3098:	f3 0f 1e fa          	endbr64 
    309c:	55                   	push   %rbp
    309d:	48 89 e5             	mov    %rsp,%rbp
    30a0:	48 83 ec 10          	sub    $0x10,%rsp
    30a4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
	return __dc::__cast(__d);
    30a8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    30ac:	48 89 c7             	mov    %rax,%rdi
    30af:	e8 0c 00 00 00       	callq  30c0 <_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE>
    30b4:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
    30b9:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
      }
    30be:	c9                   	leaveq 
    30bf:	c3                   	retq   

00000000000030c0 <_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE>:
	  __cast(const duration<_Rep, _Period>& __d)
    30c0:	f3 0f 1e fa          	endbr64 
    30c4:	55                   	push   %rbp
    30c5:	48 89 e5             	mov    %rsp,%rbp
    30c8:	48 83 ec 30          	sub    $0x30,%rsp
    30cc:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    30d0:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    30d7:	00 00 
    30d9:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    30dd:	31 c0                	xor    %eax,%eax
	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
    30df:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    30e3:	48 89 c7             	mov    %rax,%rdi
    30e6:	e8 df fd ff ff       	callq  2eca <_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv>
    30eb:	c4 e1 fb 2a c0       	vcvtsi2sd %rax,%xmm0,%xmm0
    30f0:	c5 fb 10 0d 60 1f 00 	vmovsd 0x1f60(%rip),%xmm1        # 5058 <_ZStL19piecewise_construct+0x50>
    30f7:	00 
    30f8:	c5 fb 5e c1          	vdivsd %xmm1,%xmm0,%xmm0
    30fc:	c5 fb 11 45 e8       	vmovsd %xmm0,-0x18(%rbp)
    3101:	48 8d 55 e8          	lea    -0x18(%rbp),%rdx
    3105:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
    3109:	48 89 d6             	mov    %rdx,%rsi
    310c:	48 89 c7             	mov    %rax,%rdi
    310f:	e8 1c 00 00 00       	callq  3130 <_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IdvEERKT_>
    3114:	c5 fb 10 45 f0       	vmovsd -0x10(%rbp),%xmm0
	  }
    3119:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    311d:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    3124:	00 00 
    3126:	74 05                	je     312d <_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE+0x6d>
    3128:	e8 c3 f2 ff ff       	callq  23f0 <__stack_chk_fail@plt>
    312d:	c9                   	leaveq 
    312e:	c3                   	retq   
    312f:	90                   	nop

0000000000003130 <_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IdvEERKT_>:
	  constexpr explicit duration(const _Rep2& __rep)
    3130:	f3 0f 1e fa          	endbr64 
    3134:	55                   	push   %rbp
    3135:	48 89 e5             	mov    %rsp,%rbp
    3138:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    313c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
	  : __r(static_cast<rep>(__rep)) { }
    3140:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3144:	c5 fb 10 00          	vmovsd (%rax),%xmm0
    3148:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    314c:	c5 fb 11 00          	vmovsd %xmm0,(%rax)
    3150:	90                   	nop
    3151:	5d                   	pop    %rbp
    3152:	c3                   	retq   

0000000000003153 <_ZN3hse8parallel4lab110make_breakB5cxx11Ev>:
#include <iostream>

namespace hse::parallel::lab1
{
	std::string make_break()
	{
    3153:	f3 0f 1e fa          	endbr64 
    3157:	55                   	push   %rbp
    3158:	48 89 e5             	mov    %rsp,%rbp
    315b:	53                   	push   %rbx
    315c:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
    3163:	48 89 bd 68 ff ff ff 	mov    %rdi,-0x98(%rbp)
    316a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    3171:	00 00 
    3173:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    3177:	31 c0                	xor    %eax,%eax
		std::string header = "";
    3179:	48 8d 85 7b ff ff ff 	lea    -0x85(%rbp),%rax
    3180:	48 89 c7             	mov    %rax,%rdi
    3183:	e8 18 f3 ff ff       	callq  24a0 <_ZNSaIcEC1Ev@plt>
    3188:	48 8d 95 7b ff ff ff 	lea    -0x85(%rbp),%rdx
    318f:	48 8d 45 80          	lea    -0x80(%rbp),%rax
    3193:	48 8d 35 d1 1e 00 00 	lea    0x1ed1(%rip),%rsi        # 506b <_ZStL19piecewise_construct+0xb>
    319a:	48 89 c7             	mov    %rax,%rdi
    319d:	e8 8e f2 ff ff       	callq  2430 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@plt>
    31a2:	48 8d 85 7b ff ff ff 	lea    -0x85(%rbp),%rax
    31a9:	48 89 c7             	mov    %rax,%rdi
    31ac:	e8 1f f2 ff ff       	callq  23d0 <_ZNSaIcED1Ev@plt>
		for (int i = 0; i < COL_NUM; i++)
    31b1:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%rbp)
    31b8:	00 00 00 
    31bb:	83 bd 7c ff ff ff 07 	cmpl   $0x7,-0x84(%rbp)
    31c2:	0f 8f 89 00 00 00    	jg     3251 <_ZN3hse8parallel4lab110make_breakB5cxx11Ev+0xfe>
		{
			header += '|' + std::string(CELL_WIDTH, '-');
    31c8:	48 8d 85 7b ff ff ff 	lea    -0x85(%rbp),%rax
    31cf:	48 89 c7             	mov    %rax,%rdi
    31d2:	e8 c9 f2 ff ff       	callq  24a0 <_ZNSaIcEC1Ev@plt>
    31d7:	48 8d 95 7b ff ff ff 	lea    -0x85(%rbp),%rdx
    31de:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    31e2:	48 89 d1             	mov    %rdx,%rcx
    31e5:	ba 2d 00 00 00       	mov    $0x2d,%edx
    31ea:	be 19 00 00 00       	mov    $0x19,%esi
    31ef:	48 89 c7             	mov    %rax,%rdi
    31f2:	e8 29 f1 ff ff       	callq  2320 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EmcRKS3_@plt>
    31f7:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    31fb:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
    31ff:	be 7c 00 00 00       	mov    $0x7c,%esi
    3204:	48 89 c7             	mov    %rax,%rdi
    3207:	e8 2c 18 00 00       	callq  4a38 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_OS8_>
    320c:	48 8d 55 c0          	lea    -0x40(%rbp),%rdx
    3210:	48 8d 45 80          	lea    -0x80(%rbp),%rax
    3214:	48 89 d6             	mov    %rdx,%rsi
    3217:	48 89 c7             	mov    %rax,%rdi
    321a:	e8 01 f2 ff ff       	callq  2420 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_@plt>
    321f:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    3223:	48 89 c7             	mov    %rax,%rdi
    3226:	e8 e5 f0 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    322b:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    322f:	48 89 c7             	mov    %rax,%rdi
    3232:	e8 d9 f0 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3237:	48 8d 85 7b ff ff ff 	lea    -0x85(%rbp),%rax
    323e:	48 89 c7             	mov    %rax,%rdi
    3241:	e8 8a f1 ff ff       	callq  23d0 <_ZNSaIcED1Ev@plt>
		for (int i = 0; i < COL_NUM; i++)
    3246:	ff 85 7c ff ff ff    	incl   -0x84(%rbp)
    324c:	e9 6a ff ff ff       	jmpq   31bb <_ZN3hse8parallel4lab110make_breakB5cxx11Ev+0x68>
		}
		return header + "|\n";
    3251:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
    3258:	48 8d 4d 80          	lea    -0x80(%rbp),%rcx
    325c:	48 8d 15 09 1e 00 00 	lea    0x1e09(%rip),%rdx        # 506c <_ZStL19piecewise_construct+0xc>
    3263:	48 89 ce             	mov    %rcx,%rsi
    3266:	48 89 c7             	mov    %rax,%rdi
    3269:	e8 75 16 00 00       	callq  48e3 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_>
    326e:	90                   	nop
		std::string header = "";
    326f:	48 8d 45 80          	lea    -0x80(%rbp),%rax
    3273:	48 89 c7             	mov    %rax,%rdi
    3276:	e8 95 f0 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
		return header + "|\n";
    327b:	90                   	nop
	}
    327c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    3280:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    3287:	00 00 
    3289:	0f 84 8b 00 00 00    	je     331a <_ZN3hse8parallel4lab110make_breakB5cxx11Ev+0x1c7>
    328f:	e9 81 00 00 00       	jmpq   3315 <_ZN3hse8parallel4lab110make_breakB5cxx11Ev+0x1c2>
    3294:	f3 0f 1e fa          	endbr64 
    3298:	48 89 c3             	mov    %rax,%rbx
    329b:	48 8d 85 7b ff ff ff 	lea    -0x85(%rbp),%rax
    32a2:	48 89 c7             	mov    %rax,%rdi
    32a5:	e8 26 f1 ff ff       	callq  23d0 <_ZNSaIcED1Ev@plt>
    32aa:	48 89 d8             	mov    %rbx,%rax
    32ad:	48 89 c7             	mov    %rax,%rdi
    32b0:	e8 db f1 ff ff       	callq  2490 <_Unwind_Resume@plt>
    32b5:	f3 0f 1e fa          	endbr64 
    32b9:	48 89 c3             	mov    %rax,%rbx
			header += '|' + std::string(CELL_WIDTH, '-');
    32bc:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    32c0:	48 89 c7             	mov    %rax,%rdi
    32c3:	e8 48 f0 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    32c8:	eb 07                	jmp    32d1 <_ZN3hse8parallel4lab110make_breakB5cxx11Ev+0x17e>
    32ca:	f3 0f 1e fa          	endbr64 
    32ce:	48 89 c3             	mov    %rax,%rbx
    32d1:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    32d5:	48 89 c7             	mov    %rax,%rdi
    32d8:	e8 33 f0 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    32dd:	eb 07                	jmp    32e6 <_ZN3hse8parallel4lab110make_breakB5cxx11Ev+0x193>
    32df:	f3 0f 1e fa          	endbr64 
    32e3:	48 89 c3             	mov    %rax,%rbx
    32e6:	48 8d 85 7b ff ff ff 	lea    -0x85(%rbp),%rax
    32ed:	48 89 c7             	mov    %rax,%rdi
    32f0:	e8 db f0 ff ff       	callq  23d0 <_ZNSaIcED1Ev@plt>
    32f5:	eb 07                	jmp    32fe <_ZN3hse8parallel4lab110make_breakB5cxx11Ev+0x1ab>
    32f7:	f3 0f 1e fa          	endbr64 
    32fb:	48 89 c3             	mov    %rax,%rbx
		std::string header = "";
    32fe:	48 8d 45 80          	lea    -0x80(%rbp),%rax
    3302:	48 89 c7             	mov    %rax,%rdi
    3305:	e8 06 f0 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    330a:	48 89 d8             	mov    %rbx,%rax
    330d:	48 89 c7             	mov    %rax,%rdi
    3310:	e8 7b f1 ff ff       	callq  2490 <_Unwind_Resume@plt>
	}
    3315:	e8 d6 f0 ff ff       	callq  23f0 <__stack_chk_fail@plt>
    331a:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
    3321:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
    3328:	5b                   	pop    %rbx
    3329:	5d                   	pop    %rbp
    332a:	c3                   	retq   

000000000000332b <_ZN3hse8parallel4lab19make_cellERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>:
	
	std::string make_cell(const std::string& content)
	{
    332b:	f3 0f 1e fa          	endbr64 
    332f:	55                   	push   %rbp
    3330:	48 89 e5             	mov    %rsp,%rbp
    3333:	53                   	push   %rbx
    3334:	48 81 ec a8 00 00 00 	sub    $0xa8,%rsp
    333b:	48 89 bd 58 ff ff ff 	mov    %rdi,-0xa8(%rbp)
    3342:	48 89 b5 50 ff ff ff 	mov    %rsi,-0xb0(%rbp)
    3349:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    3350:	00 00 
    3352:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    3356:	31 c0                	xor    %eax,%eax
		std::size_t len = content.length();
    3358:	48 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%rax
    335f:	48 89 c7             	mov    %rax,%rdi
    3362:	e8 e9 f0 ff ff       	callq  2450 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv@plt>
    3367:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
		std::size_t left_len = (CELL_WIDTH-len)/2;
    336e:	b8 19 00 00 00       	mov    $0x19,%eax
    3373:	48 2b 85 68 ff ff ff 	sub    -0x98(%rbp),%rax
    337a:	48 d1 e8             	shr    %rax
    337d:	48 89 85 70 ff ff ff 	mov    %rax,-0x90(%rbp)
		std::size_t right_len = (CELL_WIDTH-len) - left_len;
    3384:	48 8b 95 68 ff ff ff 	mov    -0x98(%rbp),%rdx
    338b:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
    3392:	48 01 d0             	add    %rdx,%rax
    3395:	ba 19 00 00 00       	mov    $0x19,%edx
    339a:	48 29 c2             	sub    %rax,%rdx
    339d:	48 89 d0             	mov    %rdx,%rax
    33a0:	48 89 85 78 ff ff ff 	mov    %rax,-0x88(%rbp)
		return std::string(left_len, ' ') + content + std::string(right_len, ' ');
    33a7:	48 8d 85 67 ff ff ff 	lea    -0x99(%rbp),%rax
    33ae:	48 89 c7             	mov    %rax,%rdi
    33b1:	e8 ea f0 ff ff       	callq  24a0 <_ZNSaIcEC1Ev@plt>
    33b6:	48 8d 95 67 ff ff ff 	lea    -0x99(%rbp),%rdx
    33bd:	48 8b b5 78 ff ff ff 	mov    -0x88(%rbp),%rsi
    33c4:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    33c8:	48 89 d1             	mov    %rdx,%rcx
    33cb:	ba 20 00 00 00       	mov    $0x20,%edx
    33d0:	48 89 c7             	mov    %rax,%rdi
    33d3:	e8 48 ef ff ff       	callq  2320 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EmcRKS3_@plt>
    33d8:	48 8d 85 66 ff ff ff 	lea    -0x9a(%rbp),%rax
    33df:	48 89 c7             	mov    %rax,%rdi
    33e2:	e8 b9 f0 ff ff       	callq  24a0 <_ZNSaIcEC1Ev@plt>
    33e7:	48 8d 95 66 ff ff ff 	lea    -0x9a(%rbp),%rdx
    33ee:	48 8b b5 70 ff ff ff 	mov    -0x90(%rbp),%rsi
    33f5:	48 8d 45 80          	lea    -0x80(%rbp),%rax
    33f9:	48 89 d1             	mov    %rdx,%rcx
    33fc:	ba 20 00 00 00       	mov    $0x20,%edx
    3401:	48 89 c7             	mov    %rax,%rdi
    3404:	e8 17 ef ff ff       	callq  2320 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EmcRKS3_@plt>
    3409:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    340d:	48 8b 95 50 ff ff ff 	mov    -0xb0(%rbp),%rdx
    3414:	48 8d 4d 80          	lea    -0x80(%rbp),%rcx
    3418:	48 89 ce             	mov    %rcx,%rsi
    341b:	48 89 c7             	mov    %rax,%rdi
    341e:	e8 6a 16 00 00       	callq  4a8d <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_>
    3423:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
    342a:	48 8d 55 c0          	lea    -0x40(%rbp),%rdx
    342e:	48 8d 4d a0          	lea    -0x60(%rbp),%rcx
    3432:	48 89 ce             	mov    %rcx,%rsi
    3435:	48 89 c7             	mov    %rax,%rdi
    3438:	e8 33 15 00 00       	callq  4970 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_>
    343d:	90                   	nop
    343e:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    3442:	48 89 c7             	mov    %rax,%rdi
    3445:	e8 c6 ee ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    344a:	48 8d 45 80          	lea    -0x80(%rbp),%rax
    344e:	48 89 c7             	mov    %rax,%rdi
    3451:	e8 ba ee ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3456:	48 8d 85 66 ff ff ff 	lea    -0x9a(%rbp),%rax
    345d:	48 89 c7             	mov    %rax,%rdi
    3460:	e8 6b ef ff ff       	callq  23d0 <_ZNSaIcED1Ev@plt>
    3465:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    3469:	48 89 c7             	mov    %rax,%rdi
    346c:	e8 9f ee ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3471:	48 8d 85 67 ff ff ff 	lea    -0x99(%rbp),%rax
    3478:	48 89 c7             	mov    %rax,%rdi
    347b:	e8 50 ef ff ff       	callq  23d0 <_ZNSaIcED1Ev@plt>
    3480:	90                   	nop
	}
    3481:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    3485:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    348c:	00 00 
    348e:	74 76                	je     3506 <_ZN3hse8parallel4lab19make_cellERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x1db>
    3490:	eb 6f                	jmp    3501 <_ZN3hse8parallel4lab19make_cellERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x1d6>
    3492:	f3 0f 1e fa          	endbr64 
    3496:	48 89 c3             	mov    %rax,%rbx
		return std::string(left_len, ' ') + content + std::string(right_len, ' ');
    3499:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    349d:	48 89 c7             	mov    %rax,%rdi
    34a0:	e8 6b ee ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    34a5:	eb 07                	jmp    34ae <_ZN3hse8parallel4lab19make_cellERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x183>
    34a7:	f3 0f 1e fa          	endbr64 
    34ab:	48 89 c3             	mov    %rax,%rbx
    34ae:	48 8d 45 80          	lea    -0x80(%rbp),%rax
    34b2:	48 89 c7             	mov    %rax,%rdi
    34b5:	e8 56 ee ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    34ba:	eb 07                	jmp    34c3 <_ZN3hse8parallel4lab19make_cellERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x198>
    34bc:	f3 0f 1e fa          	endbr64 
    34c0:	48 89 c3             	mov    %rax,%rbx
    34c3:	48 8d 85 66 ff ff ff 	lea    -0x9a(%rbp),%rax
    34ca:	48 89 c7             	mov    %rax,%rdi
    34cd:	e8 fe ee ff ff       	callq  23d0 <_ZNSaIcED1Ev@plt>
    34d2:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    34d6:	48 89 c7             	mov    %rax,%rdi
    34d9:	e8 32 ee ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    34de:	eb 07                	jmp    34e7 <_ZN3hse8parallel4lab19make_cellERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x1bc>
    34e0:	f3 0f 1e fa          	endbr64 
    34e4:	48 89 c3             	mov    %rax,%rbx
    34e7:	48 8d 85 67 ff ff ff 	lea    -0x99(%rbp),%rax
    34ee:	48 89 c7             	mov    %rax,%rdi
    34f1:	e8 da ee ff ff       	callq  23d0 <_ZNSaIcED1Ev@plt>
    34f6:	48 89 d8             	mov    %rbx,%rax
    34f9:	48 89 c7             	mov    %rax,%rdi
    34fc:	e8 8f ef ff ff       	callq  2490 <_Unwind_Resume@plt>
	}
    3501:	e8 ea ee ff ff       	callq  23f0 <__stack_chk_fail@plt>
    3506:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
    350d:	48 81 c4 a8 00 00 00 	add    $0xa8,%rsp
    3514:	5b                   	pop    %rbx
    3515:	5d                   	pop    %rbp
    3516:	c3                   	retq   

0000000000003517 <_ZN3hse8parallel4lab111make_headerB5cxx11Ev>:

	std::string make_header()
	{
    3517:	f3 0f 1e fa          	endbr64 
    351b:	55                   	push   %rbp
    351c:	48 89 e5             	mov    %rsp,%rbp
    351f:	53                   	push   %rbx
    3520:	48 81 ec 58 04 00 00 	sub    $0x458,%rsp
    3527:	48 89 bd a8 fb ff ff 	mov    %rdi,-0x458(%rbp)
    352e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    3535:	00 00 
    3537:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    353b:	31 c0                	xor    %eax,%eax
			'|' + make_cell("OPERATIONS / SECOND")+
			'|' + make_cell("PROCESSOR CLOCKS")+
			'|' + make_cell("PROCESSOR CLOCKS / SECOND") +
			'|' + make_cell("IPC") +
			'|' + make_cell("IPS") +
			'|' + make_cell("OPERATION RESULT")+ "|\n" + make_break();
    353d:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    3541:	48 89 c7             	mov    %rax,%rdi
    3544:	e8 0a fc ff ff       	callq  3153 <_ZN3hse8parallel4lab110make_breakB5cxx11Ev>
    3549:	48 8d 85 bf fb ff ff 	lea    -0x441(%rbp),%rax
    3550:	48 89 c7             	mov    %rax,%rdi
    3553:	e8 48 ef ff ff       	callq  24a0 <_ZNSaIcEC1Ev@plt>
    3558:	48 8d 95 bf fb ff ff 	lea    -0x441(%rbp),%rdx
    355f:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
    3566:	48 8d 35 02 1b 00 00 	lea    0x1b02(%rip),%rsi        # 506f <_ZStL19piecewise_construct+0xf>
    356d:	48 89 c7             	mov    %rax,%rdi
    3570:	e8 bb ee ff ff       	callq  2430 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@plt>
    3575:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
    357c:	48 8d 95 40 ff ff ff 	lea    -0xc0(%rbp),%rdx
    3583:	48 89 d6             	mov    %rdx,%rsi
    3586:	48 89 c7             	mov    %rax,%rdi
    3589:	e8 9d fd ff ff       	callq  332b <_ZN3hse8parallel4lab19make_cellERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>
			'|' + make_cell("IPS") +
    358e:	48 8d 85 be fb ff ff 	lea    -0x442(%rbp),%rax
    3595:	48 89 c7             	mov    %rax,%rdi
    3598:	e8 03 ef ff ff       	callq  24a0 <_ZNSaIcEC1Ev@plt>
    359d:	48 8d 95 be fb ff ff 	lea    -0x442(%rbp),%rdx
    35a4:	48 8d 85 c0 fe ff ff 	lea    -0x140(%rbp),%rax
    35ab:	48 8d 35 ce 1a 00 00 	lea    0x1ace(%rip),%rsi        # 5080 <_ZStL19piecewise_construct+0x20>
    35b2:	48 89 c7             	mov    %rax,%rdi
    35b5:	e8 76 ee ff ff       	callq  2430 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@plt>
    35ba:	48 8d 85 e0 fe ff ff 	lea    -0x120(%rbp),%rax
    35c1:	48 8d 95 c0 fe ff ff 	lea    -0x140(%rbp),%rdx
    35c8:	48 89 d6             	mov    %rdx,%rsi
    35cb:	48 89 c7             	mov    %rax,%rdi
    35ce:	e8 58 fd ff ff       	callq  332b <_ZN3hse8parallel4lab19make_cellERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>
			'|' + make_cell("IPC") +
    35d3:	48 8d 85 bd fb ff ff 	lea    -0x443(%rbp),%rax
    35da:	48 89 c7             	mov    %rax,%rdi
    35dd:	e8 be ee ff ff       	callq  24a0 <_ZNSaIcEC1Ev@plt>
    35e2:	48 8d 95 bd fb ff ff 	lea    -0x443(%rbp),%rdx
    35e9:	48 8d 85 40 fe ff ff 	lea    -0x1c0(%rbp),%rax
    35f0:	48 8d 35 8d 1a 00 00 	lea    0x1a8d(%rip),%rsi        # 5084 <_ZStL19piecewise_construct+0x24>
    35f7:	48 89 c7             	mov    %rax,%rdi
    35fa:	e8 31 ee ff ff       	callq  2430 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@plt>
    35ff:	48 8d 85 60 fe ff ff 	lea    -0x1a0(%rbp),%rax
    3606:	48 8d 95 40 fe ff ff 	lea    -0x1c0(%rbp),%rdx
    360d:	48 89 d6             	mov    %rdx,%rsi
    3610:	48 89 c7             	mov    %rax,%rdi
    3613:	e8 13 fd ff ff       	callq  332b <_ZN3hse8parallel4lab19make_cellERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>
			'|' + make_cell("PROCESSOR CLOCKS / SECOND") +
    3618:	48 8d 85 bc fb ff ff 	lea    -0x444(%rbp),%rax
    361f:	48 89 c7             	mov    %rax,%rdi
    3622:	e8 79 ee ff ff       	callq  24a0 <_ZNSaIcEC1Ev@plt>
    3627:	48 8d 95 bc fb ff ff 	lea    -0x444(%rbp),%rdx
    362e:	48 8d 85 c0 fd ff ff 	lea    -0x240(%rbp),%rax
    3635:	48 8d 35 4c 1a 00 00 	lea    0x1a4c(%rip),%rsi        # 5088 <_ZStL19piecewise_construct+0x28>
    363c:	48 89 c7             	mov    %rax,%rdi
    363f:	e8 ec ed ff ff       	callq  2430 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@plt>
    3644:	48 8d 85 e0 fd ff ff 	lea    -0x220(%rbp),%rax
    364b:	48 8d 95 c0 fd ff ff 	lea    -0x240(%rbp),%rdx
    3652:	48 89 d6             	mov    %rdx,%rsi
    3655:	48 89 c7             	mov    %rax,%rdi
    3658:	e8 ce fc ff ff       	callq  332b <_ZN3hse8parallel4lab19make_cellERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>
			'|' + make_cell("PROCESSOR CLOCKS")+
    365d:	48 8d 85 bb fb ff ff 	lea    -0x445(%rbp),%rax
    3664:	48 89 c7             	mov    %rax,%rdi
    3667:	e8 34 ee ff ff       	callq  24a0 <_ZNSaIcEC1Ev@plt>
    366c:	48 8d 95 bb fb ff ff 	lea    -0x445(%rbp),%rdx
    3673:	48 8d 85 40 fd ff ff 	lea    -0x2c0(%rbp),%rax
    367a:	48 8d 35 21 1a 00 00 	lea    0x1a21(%rip),%rsi        # 50a2 <_ZStL19piecewise_construct+0x42>
    3681:	48 89 c7             	mov    %rax,%rdi
    3684:	e8 a7 ed ff ff       	callq  2430 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@plt>
    3689:	48 8d 85 60 fd ff ff 	lea    -0x2a0(%rbp),%rax
    3690:	48 8d 95 40 fd ff ff 	lea    -0x2c0(%rbp),%rdx
    3697:	48 89 d6             	mov    %rdx,%rsi
    369a:	48 89 c7             	mov    %rax,%rdi
    369d:	e8 89 fc ff ff       	callq  332b <_ZN3hse8parallel4lab19make_cellERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>
			'|' + make_cell("OPERATIONS / SECOND")+
    36a2:	48 8d 85 ba fb ff ff 	lea    -0x446(%rbp),%rax
    36a9:	48 89 c7             	mov    %rax,%rdi
    36ac:	e8 ef ed ff ff       	callq  24a0 <_ZNSaIcEC1Ev@plt>
    36b1:	48 8d 95 ba fb ff ff 	lea    -0x446(%rbp),%rdx
    36b8:	48 8d 85 c0 fc ff ff 	lea    -0x340(%rbp),%rax
    36bf:	48 8d 35 ed 19 00 00 	lea    0x19ed(%rip),%rsi        # 50b3 <_ZStL19piecewise_construct+0x53>
    36c6:	48 89 c7             	mov    %rax,%rdi
    36c9:	e8 62 ed ff ff       	callq  2430 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@plt>
    36ce:	48 8d 85 e0 fc ff ff 	lea    -0x320(%rbp),%rax
    36d5:	48 8d 95 c0 fc ff ff 	lea    -0x340(%rbp),%rdx
    36dc:	48 89 d6             	mov    %rdx,%rsi
    36df:	48 89 c7             	mov    %rax,%rdi
    36e2:	e8 44 fc ff ff       	callq  332b <_ZN3hse8parallel4lab19make_cellERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>
			'|' + make_cell("TIME")+ 
    36e7:	48 8d 85 b9 fb ff ff 	lea    -0x447(%rbp),%rax
    36ee:	48 89 c7             	mov    %rax,%rdi
    36f1:	e8 aa ed ff ff       	callq  24a0 <_ZNSaIcEC1Ev@plt>
    36f6:	48 8d 95 b9 fb ff ff 	lea    -0x447(%rbp),%rdx
    36fd:	48 8d 85 40 fc ff ff 	lea    -0x3c0(%rbp),%rax
    3704:	48 8d 35 bc 19 00 00 	lea    0x19bc(%rip),%rsi        # 50c7 <_ZStL19piecewise_construct+0x67>
    370b:	48 89 c7             	mov    %rax,%rdi
    370e:	e8 1d ed ff ff       	callq  2430 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@plt>
    3713:	48 8d 85 60 fc ff ff 	lea    -0x3a0(%rbp),%rax
    371a:	48 8d 95 40 fc ff ff 	lea    -0x3c0(%rbp),%rdx
    3721:	48 89 d6             	mov    %rdx,%rsi
    3724:	48 89 c7             	mov    %rax,%rdi
    3727:	e8 ff fb ff ff       	callq  332b <_ZN3hse8parallel4lab19make_cellERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>
		return  '|' + make_cell("OPERATIONS")+
    372c:	48 8d 85 b8 fb ff ff 	lea    -0x448(%rbp),%rax
    3733:	48 89 c7             	mov    %rax,%rdi
    3736:	e8 65 ed ff ff       	callq  24a0 <_ZNSaIcEC1Ev@plt>
    373b:	48 8d 95 b8 fb ff ff 	lea    -0x448(%rbp),%rdx
    3742:	48 8d 85 c0 fb ff ff 	lea    -0x440(%rbp),%rax
    3749:	48 8d 35 7c 19 00 00 	lea    0x197c(%rip),%rsi        # 50cc <_ZStL19piecewise_construct+0x6c>
    3750:	48 89 c7             	mov    %rax,%rdi
    3753:	e8 d8 ec ff ff       	callq  2430 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@plt>
    3758:	48 8d 85 e0 fb ff ff 	lea    -0x420(%rbp),%rax
    375f:	48 8d 95 c0 fb ff ff 	lea    -0x440(%rbp),%rdx
    3766:	48 89 d6             	mov    %rdx,%rsi
    3769:	48 89 c7             	mov    %rax,%rdi
    376c:	e8 ba fb ff ff       	callq  332b <_ZN3hse8parallel4lab19make_cellERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>
    3771:	48 8d 85 00 fc ff ff 	lea    -0x400(%rbp),%rax
    3778:	48 8d 95 e0 fb ff ff 	lea    -0x420(%rbp),%rdx
    377f:	be 7c 00 00 00       	mov    $0x7c,%esi
    3784:	48 89 c7             	mov    %rax,%rdi
    3787:	e8 ac 12 00 00       	callq  4a38 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_OS8_>
    378c:	48 8d 85 20 fc ff ff 	lea    -0x3e0(%rbp),%rax
    3793:	48 8d 8d 00 fc ff ff 	lea    -0x400(%rbp),%rcx
    379a:	ba 7c 00 00 00       	mov    $0x7c,%edx
    379f:	48 89 ce             	mov    %rcx,%rsi
    37a2:	48 89 c7             	mov    %rax,%rdi
    37a5:	e8 2e 13 00 00       	callq  4ad8 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_>
			'|' + make_cell("TIME")+ 
    37aa:	48 8d 85 80 fc ff ff 	lea    -0x380(%rbp),%rax
    37b1:	48 8d 95 60 fc ff ff 	lea    -0x3a0(%rbp),%rdx
    37b8:	48 8d 8d 20 fc ff ff 	lea    -0x3e0(%rbp),%rcx
    37bf:	48 89 ce             	mov    %rcx,%rsi
    37c2:	48 89 c7             	mov    %rax,%rdi
    37c5:	e8 a6 11 00 00       	callq  4970 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_>
    37ca:	48 8d 85 a0 fc ff ff 	lea    -0x360(%rbp),%rax
    37d1:	48 8d 8d 80 fc ff ff 	lea    -0x380(%rbp),%rcx
    37d8:	ba 7c 00 00 00       	mov    $0x7c,%edx
    37dd:	48 89 ce             	mov    %rcx,%rsi
    37e0:	48 89 c7             	mov    %rax,%rdi
    37e3:	e8 f0 12 00 00       	callq  4ad8 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_>
			'|' + make_cell("OPERATIONS / SECOND")+
    37e8:	48 8d 85 00 fd ff ff 	lea    -0x300(%rbp),%rax
    37ef:	48 8d 95 e0 fc ff ff 	lea    -0x320(%rbp),%rdx
    37f6:	48 8d 8d a0 fc ff ff 	lea    -0x360(%rbp),%rcx
    37fd:	48 89 ce             	mov    %rcx,%rsi
    3800:	48 89 c7             	mov    %rax,%rdi
    3803:	e8 68 11 00 00       	callq  4970 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_>
    3808:	48 8d 85 20 fd ff ff 	lea    -0x2e0(%rbp),%rax
    380f:	48 8d 8d 00 fd ff ff 	lea    -0x300(%rbp),%rcx
    3816:	ba 7c 00 00 00       	mov    $0x7c,%edx
    381b:	48 89 ce             	mov    %rcx,%rsi
    381e:	48 89 c7             	mov    %rax,%rdi
    3821:	e8 b2 12 00 00       	callq  4ad8 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_>
			'|' + make_cell("PROCESSOR CLOCKS")+
    3826:	48 8d 85 80 fd ff ff 	lea    -0x280(%rbp),%rax
    382d:	48 8d 95 60 fd ff ff 	lea    -0x2a0(%rbp),%rdx
    3834:	48 8d 8d 20 fd ff ff 	lea    -0x2e0(%rbp),%rcx
    383b:	48 89 ce             	mov    %rcx,%rsi
    383e:	48 89 c7             	mov    %rax,%rdi
    3841:	e8 2a 11 00 00       	callq  4970 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_>
    3846:	48 8d 85 a0 fd ff ff 	lea    -0x260(%rbp),%rax
    384d:	48 8d 8d 80 fd ff ff 	lea    -0x280(%rbp),%rcx
    3854:	ba 7c 00 00 00       	mov    $0x7c,%edx
    3859:	48 89 ce             	mov    %rcx,%rsi
    385c:	48 89 c7             	mov    %rax,%rdi
    385f:	e8 74 12 00 00       	callq  4ad8 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_>
			'|' + make_cell("PROCESSOR CLOCKS / SECOND") +
    3864:	48 8d 85 00 fe ff ff 	lea    -0x200(%rbp),%rax
    386b:	48 8d 95 e0 fd ff ff 	lea    -0x220(%rbp),%rdx
    3872:	48 8d 8d a0 fd ff ff 	lea    -0x260(%rbp),%rcx
    3879:	48 89 ce             	mov    %rcx,%rsi
    387c:	48 89 c7             	mov    %rax,%rdi
    387f:	e8 ec 10 00 00       	callq  4970 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_>
    3884:	48 8d 85 20 fe ff ff 	lea    -0x1e0(%rbp),%rax
    388b:	48 8d 8d 00 fe ff ff 	lea    -0x200(%rbp),%rcx
    3892:	ba 7c 00 00 00       	mov    $0x7c,%edx
    3897:	48 89 ce             	mov    %rcx,%rsi
    389a:	48 89 c7             	mov    %rax,%rdi
    389d:	e8 36 12 00 00       	callq  4ad8 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_>
			'|' + make_cell("IPC") +
    38a2:	48 8d 85 80 fe ff ff 	lea    -0x180(%rbp),%rax
    38a9:	48 8d 95 60 fe ff ff 	lea    -0x1a0(%rbp),%rdx
    38b0:	48 8d 8d 20 fe ff ff 	lea    -0x1e0(%rbp),%rcx
    38b7:	48 89 ce             	mov    %rcx,%rsi
    38ba:	48 89 c7             	mov    %rax,%rdi
    38bd:	e8 ae 10 00 00       	callq  4970 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_>
    38c2:	48 8d 85 a0 fe ff ff 	lea    -0x160(%rbp),%rax
    38c9:	48 8d 8d 80 fe ff ff 	lea    -0x180(%rbp),%rcx
    38d0:	ba 7c 00 00 00       	mov    $0x7c,%edx
    38d5:	48 89 ce             	mov    %rcx,%rsi
    38d8:	48 89 c7             	mov    %rax,%rdi
    38db:	e8 f8 11 00 00       	callq  4ad8 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_>
			'|' + make_cell("IPS") +
    38e0:	48 8d 85 00 ff ff ff 	lea    -0x100(%rbp),%rax
    38e7:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
    38ee:	48 8d 8d a0 fe ff ff 	lea    -0x160(%rbp),%rcx
    38f5:	48 89 ce             	mov    %rcx,%rsi
    38f8:	48 89 c7             	mov    %rax,%rdi
    38fb:	e8 70 10 00 00       	callq  4970 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_>
    3900:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
    3907:	48 8d 8d 00 ff ff ff 	lea    -0x100(%rbp),%rcx
    390e:	ba 7c 00 00 00       	mov    $0x7c,%edx
    3913:	48 89 ce             	mov    %rcx,%rsi
    3916:	48 89 c7             	mov    %rax,%rdi
    3919:	e8 ba 11 00 00       	callq  4ad8 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_>
			'|' + make_cell("OPERATION RESULT")+ "|\n" + make_break();
    391e:	48 8d 45 80          	lea    -0x80(%rbp),%rax
    3922:	48 8d 95 60 ff ff ff 	lea    -0xa0(%rbp),%rdx
    3929:	48 8d 8d 20 ff ff ff 	lea    -0xe0(%rbp),%rcx
    3930:	48 89 ce             	mov    %rcx,%rsi
    3933:	48 89 c7             	mov    %rax,%rdi
    3936:	e8 35 10 00 00       	callq  4970 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_>
    393b:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    393f:	48 8d 4d 80          	lea    -0x80(%rbp),%rcx
    3943:	48 8d 15 22 17 00 00 	lea    0x1722(%rip),%rdx        # 506c <_ZStL19piecewise_construct+0xc>
    394a:	48 89 ce             	mov    %rcx,%rsi
    394d:	48 89 c7             	mov    %rax,%rdi
    3950:	e8 d1 11 00 00       	callq  4b26 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_>
    3955:	48 8b 85 a8 fb ff ff 	mov    -0x458(%rbp),%rax
    395c:	48 8d 55 c0          	lea    -0x40(%rbp),%rdx
    3960:	48 8d 4d a0          	lea    -0x60(%rbp),%rcx
    3964:	48 89 ce             	mov    %rcx,%rsi
    3967:	48 89 c7             	mov    %rax,%rdi
    396a:	e8 01 10 00 00       	callq  4970 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_>
    396f:	90                   	nop
    3970:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    3974:	48 89 c7             	mov    %rax,%rdi
    3977:	e8 94 e9 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    397c:	48 8d 45 80          	lea    -0x80(%rbp),%rax
    3980:	48 89 c7             	mov    %rax,%rdi
    3983:	e8 88 e9 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
			'|' + make_cell("IPS") +
    3988:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
    398f:	48 89 c7             	mov    %rax,%rdi
    3992:	e8 79 e9 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3997:	48 8d 85 00 ff ff ff 	lea    -0x100(%rbp),%rax
    399e:	48 89 c7             	mov    %rax,%rdi
    39a1:	e8 6a e9 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
			'|' + make_cell("IPC") +
    39a6:	48 8d 85 a0 fe ff ff 	lea    -0x160(%rbp),%rax
    39ad:	48 89 c7             	mov    %rax,%rdi
    39b0:	e8 5b e9 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    39b5:	48 8d 85 80 fe ff ff 	lea    -0x180(%rbp),%rax
    39bc:	48 89 c7             	mov    %rax,%rdi
    39bf:	e8 4c e9 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
			'|' + make_cell("PROCESSOR CLOCKS / SECOND") +
    39c4:	48 8d 85 20 fe ff ff 	lea    -0x1e0(%rbp),%rax
    39cb:	48 89 c7             	mov    %rax,%rdi
    39ce:	e8 3d e9 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    39d3:	48 8d 85 00 fe ff ff 	lea    -0x200(%rbp),%rax
    39da:	48 89 c7             	mov    %rax,%rdi
    39dd:	e8 2e e9 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
			'|' + make_cell("PROCESSOR CLOCKS")+
    39e2:	48 8d 85 a0 fd ff ff 	lea    -0x260(%rbp),%rax
    39e9:	48 89 c7             	mov    %rax,%rdi
    39ec:	e8 1f e9 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    39f1:	48 8d 85 80 fd ff ff 	lea    -0x280(%rbp),%rax
    39f8:	48 89 c7             	mov    %rax,%rdi
    39fb:	e8 10 e9 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
			'|' + make_cell("OPERATIONS / SECOND")+
    3a00:	48 8d 85 20 fd ff ff 	lea    -0x2e0(%rbp),%rax
    3a07:	48 89 c7             	mov    %rax,%rdi
    3a0a:	e8 01 e9 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3a0f:	48 8d 85 00 fd ff ff 	lea    -0x300(%rbp),%rax
    3a16:	48 89 c7             	mov    %rax,%rdi
    3a19:	e8 f2 e8 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
			'|' + make_cell("TIME")+ 
    3a1e:	48 8d 85 a0 fc ff ff 	lea    -0x360(%rbp),%rax
    3a25:	48 89 c7             	mov    %rax,%rdi
    3a28:	e8 e3 e8 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3a2d:	48 8d 85 80 fc ff ff 	lea    -0x380(%rbp),%rax
    3a34:	48 89 c7             	mov    %rax,%rdi
    3a37:	e8 d4 e8 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
		return  '|' + make_cell("OPERATIONS")+
    3a3c:	48 8d 85 20 fc ff ff 	lea    -0x3e0(%rbp),%rax
    3a43:	48 89 c7             	mov    %rax,%rdi
    3a46:	e8 c5 e8 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3a4b:	48 8d 85 00 fc ff ff 	lea    -0x400(%rbp),%rax
    3a52:	48 89 c7             	mov    %rax,%rdi
    3a55:	e8 b6 e8 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3a5a:	48 8d 85 e0 fb ff ff 	lea    -0x420(%rbp),%rax
    3a61:	48 89 c7             	mov    %rax,%rdi
    3a64:	e8 a7 e8 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3a69:	48 8d 85 c0 fb ff ff 	lea    -0x440(%rbp),%rax
    3a70:	48 89 c7             	mov    %rax,%rdi
    3a73:	e8 98 e8 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3a78:	48 8d 85 b8 fb ff ff 	lea    -0x448(%rbp),%rax
    3a7f:	48 89 c7             	mov    %rax,%rdi
    3a82:	e8 49 e9 ff ff       	callq  23d0 <_ZNSaIcED1Ev@plt>
			'|' + make_cell("TIME")+ 
    3a87:	48 8d 85 60 fc ff ff 	lea    -0x3a0(%rbp),%rax
    3a8e:	48 89 c7             	mov    %rax,%rdi
    3a91:	e8 7a e8 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3a96:	48 8d 85 40 fc ff ff 	lea    -0x3c0(%rbp),%rax
    3a9d:	48 89 c7             	mov    %rax,%rdi
    3aa0:	e8 6b e8 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3aa5:	48 8d 85 b9 fb ff ff 	lea    -0x447(%rbp),%rax
    3aac:	48 89 c7             	mov    %rax,%rdi
    3aaf:	e8 1c e9 ff ff       	callq  23d0 <_ZNSaIcED1Ev@plt>
			'|' + make_cell("OPERATIONS / SECOND")+
    3ab4:	48 8d 85 e0 fc ff ff 	lea    -0x320(%rbp),%rax
    3abb:	48 89 c7             	mov    %rax,%rdi
    3abe:	e8 4d e8 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3ac3:	48 8d 85 c0 fc ff ff 	lea    -0x340(%rbp),%rax
    3aca:	48 89 c7             	mov    %rax,%rdi
    3acd:	e8 3e e8 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3ad2:	48 8d 85 ba fb ff ff 	lea    -0x446(%rbp),%rax
    3ad9:	48 89 c7             	mov    %rax,%rdi
    3adc:	e8 ef e8 ff ff       	callq  23d0 <_ZNSaIcED1Ev@plt>
			'|' + make_cell("PROCESSOR CLOCKS")+
    3ae1:	48 8d 85 60 fd ff ff 	lea    -0x2a0(%rbp),%rax
    3ae8:	48 89 c7             	mov    %rax,%rdi
    3aeb:	e8 20 e8 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3af0:	48 8d 85 40 fd ff ff 	lea    -0x2c0(%rbp),%rax
    3af7:	48 89 c7             	mov    %rax,%rdi
    3afa:	e8 11 e8 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3aff:	48 8d 85 bb fb ff ff 	lea    -0x445(%rbp),%rax
    3b06:	48 89 c7             	mov    %rax,%rdi
    3b09:	e8 c2 e8 ff ff       	callq  23d0 <_ZNSaIcED1Ev@plt>
			'|' + make_cell("PROCESSOR CLOCKS / SECOND") +
    3b0e:	48 8d 85 e0 fd ff ff 	lea    -0x220(%rbp),%rax
    3b15:	48 89 c7             	mov    %rax,%rdi
    3b18:	e8 f3 e7 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3b1d:	48 8d 85 c0 fd ff ff 	lea    -0x240(%rbp),%rax
    3b24:	48 89 c7             	mov    %rax,%rdi
    3b27:	e8 e4 e7 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3b2c:	48 8d 85 bc fb ff ff 	lea    -0x444(%rbp),%rax
    3b33:	48 89 c7             	mov    %rax,%rdi
    3b36:	e8 95 e8 ff ff       	callq  23d0 <_ZNSaIcED1Ev@plt>
			'|' + make_cell("IPC") +
    3b3b:	48 8d 85 60 fe ff ff 	lea    -0x1a0(%rbp),%rax
    3b42:	48 89 c7             	mov    %rax,%rdi
    3b45:	e8 c6 e7 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3b4a:	48 8d 85 40 fe ff ff 	lea    -0x1c0(%rbp),%rax
    3b51:	48 89 c7             	mov    %rax,%rdi
    3b54:	e8 b7 e7 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3b59:	48 8d 85 bd fb ff ff 	lea    -0x443(%rbp),%rax
    3b60:	48 89 c7             	mov    %rax,%rdi
    3b63:	e8 68 e8 ff ff       	callq  23d0 <_ZNSaIcED1Ev@plt>
			'|' + make_cell("IPS") +
    3b68:	48 8d 85 e0 fe ff ff 	lea    -0x120(%rbp),%rax
    3b6f:	48 89 c7             	mov    %rax,%rdi
    3b72:	e8 99 e7 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3b77:	48 8d 85 c0 fe ff ff 	lea    -0x140(%rbp),%rax
    3b7e:	48 89 c7             	mov    %rax,%rdi
    3b81:	e8 8a e7 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3b86:	48 8d 85 be fb ff ff 	lea    -0x442(%rbp),%rax
    3b8d:	48 89 c7             	mov    %rax,%rdi
    3b90:	e8 3b e8 ff ff       	callq  23d0 <_ZNSaIcED1Ev@plt>
			'|' + make_cell("OPERATION RESULT")+ "|\n" + make_break();
    3b95:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
    3b9c:	48 89 c7             	mov    %rax,%rdi
    3b9f:	e8 6c e7 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3ba4:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
    3bab:	48 89 c7             	mov    %rax,%rdi
    3bae:	e8 5d e7 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3bb3:	48 8d 85 bf fb ff ff 	lea    -0x441(%rbp),%rax
    3bba:	48 89 c7             	mov    %rax,%rdi
    3bbd:	e8 0e e8 ff ff       	callq  23d0 <_ZNSaIcED1Ev@plt>
    3bc2:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    3bc6:	48 89 c7             	mov    %rax,%rdi
    3bc9:	e8 42 e7 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3bce:	90                   	nop
	}
    3bcf:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    3bd3:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    3bda:	00 00 
    3bdc:	0f 84 9a 03 00 00    	je     3f7c <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0xa65>
    3be2:	e9 90 03 00 00       	jmpq   3f77 <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0xa60>
    3be7:	f3 0f 1e fa          	endbr64 
    3beb:	48 89 c3             	mov    %rax,%rbx
			'|' + make_cell("OPERATION RESULT")+ "|\n" + make_break();
    3bee:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    3bf2:	48 89 c7             	mov    %rax,%rdi
    3bf5:	e8 16 e7 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3bfa:	eb 07                	jmp    3c03 <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0x6ec>
    3bfc:	f3 0f 1e fa          	endbr64 
    3c00:	48 89 c3             	mov    %rax,%rbx
    3c03:	48 8d 45 80          	lea    -0x80(%rbp),%rax
    3c07:	48 89 c7             	mov    %rax,%rdi
    3c0a:	e8 01 e7 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3c0f:	eb 07                	jmp    3c18 <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0x701>
    3c11:	f3 0f 1e fa          	endbr64 
    3c15:	48 89 c3             	mov    %rax,%rbx
			'|' + make_cell("IPS") +
    3c18:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
    3c1f:	48 89 c7             	mov    %rax,%rdi
    3c22:	e8 e9 e6 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3c27:	eb 07                	jmp    3c30 <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0x719>
    3c29:	f3 0f 1e fa          	endbr64 
    3c2d:	48 89 c3             	mov    %rax,%rbx
    3c30:	48 8d 85 00 ff ff ff 	lea    -0x100(%rbp),%rax
    3c37:	48 89 c7             	mov    %rax,%rdi
    3c3a:	e8 d1 e6 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3c3f:	eb 07                	jmp    3c48 <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0x731>
    3c41:	f3 0f 1e fa          	endbr64 
    3c45:	48 89 c3             	mov    %rax,%rbx
			'|' + make_cell("IPC") +
    3c48:	48 8d 85 a0 fe ff ff 	lea    -0x160(%rbp),%rax
    3c4f:	48 89 c7             	mov    %rax,%rdi
    3c52:	e8 b9 e6 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3c57:	eb 07                	jmp    3c60 <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0x749>
    3c59:	f3 0f 1e fa          	endbr64 
    3c5d:	48 89 c3             	mov    %rax,%rbx
    3c60:	48 8d 85 80 fe ff ff 	lea    -0x180(%rbp),%rax
    3c67:	48 89 c7             	mov    %rax,%rdi
    3c6a:	e8 a1 e6 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3c6f:	eb 07                	jmp    3c78 <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0x761>
    3c71:	f3 0f 1e fa          	endbr64 
    3c75:	48 89 c3             	mov    %rax,%rbx
			'|' + make_cell("PROCESSOR CLOCKS / SECOND") +
    3c78:	48 8d 85 20 fe ff ff 	lea    -0x1e0(%rbp),%rax
    3c7f:	48 89 c7             	mov    %rax,%rdi
    3c82:	e8 89 e6 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3c87:	eb 07                	jmp    3c90 <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0x779>
    3c89:	f3 0f 1e fa          	endbr64 
    3c8d:	48 89 c3             	mov    %rax,%rbx
    3c90:	48 8d 85 00 fe ff ff 	lea    -0x200(%rbp),%rax
    3c97:	48 89 c7             	mov    %rax,%rdi
    3c9a:	e8 71 e6 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3c9f:	eb 07                	jmp    3ca8 <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0x791>
    3ca1:	f3 0f 1e fa          	endbr64 
    3ca5:	48 89 c3             	mov    %rax,%rbx
			'|' + make_cell("PROCESSOR CLOCKS")+
    3ca8:	48 8d 85 a0 fd ff ff 	lea    -0x260(%rbp),%rax
    3caf:	48 89 c7             	mov    %rax,%rdi
    3cb2:	e8 59 e6 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3cb7:	eb 07                	jmp    3cc0 <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0x7a9>
    3cb9:	f3 0f 1e fa          	endbr64 
    3cbd:	48 89 c3             	mov    %rax,%rbx
    3cc0:	48 8d 85 80 fd ff ff 	lea    -0x280(%rbp),%rax
    3cc7:	48 89 c7             	mov    %rax,%rdi
    3cca:	e8 41 e6 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3ccf:	eb 07                	jmp    3cd8 <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0x7c1>
    3cd1:	f3 0f 1e fa          	endbr64 
    3cd5:	48 89 c3             	mov    %rax,%rbx
			'|' + make_cell("OPERATIONS / SECOND")+
    3cd8:	48 8d 85 20 fd ff ff 	lea    -0x2e0(%rbp),%rax
    3cdf:	48 89 c7             	mov    %rax,%rdi
    3ce2:	e8 29 e6 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3ce7:	eb 07                	jmp    3cf0 <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0x7d9>
    3ce9:	f3 0f 1e fa          	endbr64 
    3ced:	48 89 c3             	mov    %rax,%rbx
    3cf0:	48 8d 85 00 fd ff ff 	lea    -0x300(%rbp),%rax
    3cf7:	48 89 c7             	mov    %rax,%rdi
    3cfa:	e8 11 e6 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3cff:	eb 07                	jmp    3d08 <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0x7f1>
    3d01:	f3 0f 1e fa          	endbr64 
    3d05:	48 89 c3             	mov    %rax,%rbx
			'|' + make_cell("TIME")+ 
    3d08:	48 8d 85 a0 fc ff ff 	lea    -0x360(%rbp),%rax
    3d0f:	48 89 c7             	mov    %rax,%rdi
    3d12:	e8 f9 e5 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3d17:	eb 07                	jmp    3d20 <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0x809>
    3d19:	f3 0f 1e fa          	endbr64 
    3d1d:	48 89 c3             	mov    %rax,%rbx
    3d20:	48 8d 85 80 fc ff ff 	lea    -0x380(%rbp),%rax
    3d27:	48 89 c7             	mov    %rax,%rdi
    3d2a:	e8 e1 e5 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3d2f:	eb 07                	jmp    3d38 <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0x821>
    3d31:	f3 0f 1e fa          	endbr64 
    3d35:	48 89 c3             	mov    %rax,%rbx
		return  '|' + make_cell("OPERATIONS")+
    3d38:	48 8d 85 20 fc ff ff 	lea    -0x3e0(%rbp),%rax
    3d3f:	48 89 c7             	mov    %rax,%rdi
    3d42:	e8 c9 e5 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3d47:	eb 07                	jmp    3d50 <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0x839>
    3d49:	f3 0f 1e fa          	endbr64 
    3d4d:	48 89 c3             	mov    %rax,%rbx
    3d50:	48 8d 85 00 fc ff ff 	lea    -0x400(%rbp),%rax
    3d57:	48 89 c7             	mov    %rax,%rdi
    3d5a:	e8 b1 e5 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3d5f:	eb 07                	jmp    3d68 <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0x851>
    3d61:	f3 0f 1e fa          	endbr64 
    3d65:	48 89 c3             	mov    %rax,%rbx
    3d68:	48 8d 85 e0 fb ff ff 	lea    -0x420(%rbp),%rax
    3d6f:	48 89 c7             	mov    %rax,%rdi
    3d72:	e8 99 e5 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3d77:	eb 07                	jmp    3d80 <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0x869>
    3d79:	f3 0f 1e fa          	endbr64 
    3d7d:	48 89 c3             	mov    %rax,%rbx
    3d80:	48 8d 85 c0 fb ff ff 	lea    -0x440(%rbp),%rax
    3d87:	48 89 c7             	mov    %rax,%rdi
    3d8a:	e8 81 e5 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3d8f:	eb 07                	jmp    3d98 <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0x881>
    3d91:	f3 0f 1e fa          	endbr64 
    3d95:	48 89 c3             	mov    %rax,%rbx
    3d98:	48 8d 85 b8 fb ff ff 	lea    -0x448(%rbp),%rax
    3d9f:	48 89 c7             	mov    %rax,%rdi
    3da2:	e8 29 e6 ff ff       	callq  23d0 <_ZNSaIcED1Ev@plt>
			'|' + make_cell("TIME")+ 
    3da7:	48 8d 85 60 fc ff ff 	lea    -0x3a0(%rbp),%rax
    3dae:	48 89 c7             	mov    %rax,%rdi
    3db1:	e8 5a e5 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3db6:	eb 07                	jmp    3dbf <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0x8a8>
    3db8:	f3 0f 1e fa          	endbr64 
    3dbc:	48 89 c3             	mov    %rax,%rbx
    3dbf:	48 8d 85 40 fc ff ff 	lea    -0x3c0(%rbp),%rax
    3dc6:	48 89 c7             	mov    %rax,%rdi
    3dc9:	e8 42 e5 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3dce:	eb 07                	jmp    3dd7 <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0x8c0>
    3dd0:	f3 0f 1e fa          	endbr64 
    3dd4:	48 89 c3             	mov    %rax,%rbx
    3dd7:	48 8d 85 b9 fb ff ff 	lea    -0x447(%rbp),%rax
    3dde:	48 89 c7             	mov    %rax,%rdi
    3de1:	e8 ea e5 ff ff       	callq  23d0 <_ZNSaIcED1Ev@plt>
			'|' + make_cell("OPERATIONS / SECOND")+
    3de6:	48 8d 85 e0 fc ff ff 	lea    -0x320(%rbp),%rax
    3ded:	48 89 c7             	mov    %rax,%rdi
    3df0:	e8 1b e5 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3df5:	eb 07                	jmp    3dfe <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0x8e7>
    3df7:	f3 0f 1e fa          	endbr64 
    3dfb:	48 89 c3             	mov    %rax,%rbx
    3dfe:	48 8d 85 c0 fc ff ff 	lea    -0x340(%rbp),%rax
    3e05:	48 89 c7             	mov    %rax,%rdi
    3e08:	e8 03 e5 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3e0d:	eb 07                	jmp    3e16 <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0x8ff>
    3e0f:	f3 0f 1e fa          	endbr64 
    3e13:	48 89 c3             	mov    %rax,%rbx
    3e16:	48 8d 85 ba fb ff ff 	lea    -0x446(%rbp),%rax
    3e1d:	48 89 c7             	mov    %rax,%rdi
    3e20:	e8 ab e5 ff ff       	callq  23d0 <_ZNSaIcED1Ev@plt>
			'|' + make_cell("PROCESSOR CLOCKS")+
    3e25:	48 8d 85 60 fd ff ff 	lea    -0x2a0(%rbp),%rax
    3e2c:	48 89 c7             	mov    %rax,%rdi
    3e2f:	e8 dc e4 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3e34:	eb 07                	jmp    3e3d <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0x926>
    3e36:	f3 0f 1e fa          	endbr64 
    3e3a:	48 89 c3             	mov    %rax,%rbx
    3e3d:	48 8d 85 40 fd ff ff 	lea    -0x2c0(%rbp),%rax
    3e44:	48 89 c7             	mov    %rax,%rdi
    3e47:	e8 c4 e4 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3e4c:	eb 07                	jmp    3e55 <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0x93e>
    3e4e:	f3 0f 1e fa          	endbr64 
    3e52:	48 89 c3             	mov    %rax,%rbx
    3e55:	48 8d 85 bb fb ff ff 	lea    -0x445(%rbp),%rax
    3e5c:	48 89 c7             	mov    %rax,%rdi
    3e5f:	e8 6c e5 ff ff       	callq  23d0 <_ZNSaIcED1Ev@plt>
			'|' + make_cell("PROCESSOR CLOCKS / SECOND") +
    3e64:	48 8d 85 e0 fd ff ff 	lea    -0x220(%rbp),%rax
    3e6b:	48 89 c7             	mov    %rax,%rdi
    3e6e:	e8 9d e4 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3e73:	eb 07                	jmp    3e7c <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0x965>
    3e75:	f3 0f 1e fa          	endbr64 
    3e79:	48 89 c3             	mov    %rax,%rbx
    3e7c:	48 8d 85 c0 fd ff ff 	lea    -0x240(%rbp),%rax
    3e83:	48 89 c7             	mov    %rax,%rdi
    3e86:	e8 85 e4 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3e8b:	eb 07                	jmp    3e94 <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0x97d>
    3e8d:	f3 0f 1e fa          	endbr64 
    3e91:	48 89 c3             	mov    %rax,%rbx
    3e94:	48 8d 85 bc fb ff ff 	lea    -0x444(%rbp),%rax
    3e9b:	48 89 c7             	mov    %rax,%rdi
    3e9e:	e8 2d e5 ff ff       	callq  23d0 <_ZNSaIcED1Ev@plt>
			'|' + make_cell("IPC") +
    3ea3:	48 8d 85 60 fe ff ff 	lea    -0x1a0(%rbp),%rax
    3eaa:	48 89 c7             	mov    %rax,%rdi
    3ead:	e8 5e e4 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3eb2:	eb 07                	jmp    3ebb <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0x9a4>
    3eb4:	f3 0f 1e fa          	endbr64 
    3eb8:	48 89 c3             	mov    %rax,%rbx
    3ebb:	48 8d 85 40 fe ff ff 	lea    -0x1c0(%rbp),%rax
    3ec2:	48 89 c7             	mov    %rax,%rdi
    3ec5:	e8 46 e4 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3eca:	eb 07                	jmp    3ed3 <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0x9bc>
    3ecc:	f3 0f 1e fa          	endbr64 
    3ed0:	48 89 c3             	mov    %rax,%rbx
    3ed3:	48 8d 85 bd fb ff ff 	lea    -0x443(%rbp),%rax
    3eda:	48 89 c7             	mov    %rax,%rdi
    3edd:	e8 ee e4 ff ff       	callq  23d0 <_ZNSaIcED1Ev@plt>
			'|' + make_cell("IPS") +
    3ee2:	48 8d 85 e0 fe ff ff 	lea    -0x120(%rbp),%rax
    3ee9:	48 89 c7             	mov    %rax,%rdi
    3eec:	e8 1f e4 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3ef1:	eb 07                	jmp    3efa <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0x9e3>
    3ef3:	f3 0f 1e fa          	endbr64 
    3ef7:	48 89 c3             	mov    %rax,%rbx
    3efa:	48 8d 85 c0 fe ff ff 	lea    -0x140(%rbp),%rax
    3f01:	48 89 c7             	mov    %rax,%rdi
    3f04:	e8 07 e4 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3f09:	eb 07                	jmp    3f12 <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0x9fb>
    3f0b:	f3 0f 1e fa          	endbr64 
    3f0f:	48 89 c3             	mov    %rax,%rbx
    3f12:	48 8d 85 be fb ff ff 	lea    -0x442(%rbp),%rax
    3f19:	48 89 c7             	mov    %rax,%rdi
    3f1c:	e8 af e4 ff ff       	callq  23d0 <_ZNSaIcED1Ev@plt>
			'|' + make_cell("OPERATION RESULT")+ "|\n" + make_break();
    3f21:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
    3f28:	48 89 c7             	mov    %rax,%rdi
    3f2b:	e8 e0 e3 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3f30:	eb 07                	jmp    3f39 <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0xa22>
    3f32:	f3 0f 1e fa          	endbr64 
    3f36:	48 89 c3             	mov    %rax,%rbx
    3f39:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
    3f40:	48 89 c7             	mov    %rax,%rdi
    3f43:	e8 c8 e3 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3f48:	eb 07                	jmp    3f51 <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0xa3a>
    3f4a:	f3 0f 1e fa          	endbr64 
    3f4e:	48 89 c3             	mov    %rax,%rbx
    3f51:	48 8d 85 bf fb ff ff 	lea    -0x441(%rbp),%rax
    3f58:	48 89 c7             	mov    %rax,%rdi
    3f5b:	e8 70 e4 ff ff       	callq  23d0 <_ZNSaIcED1Ev@plt>
    3f60:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    3f64:	48 89 c7             	mov    %rax,%rdi
    3f67:	e8 a4 e3 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3f6c:	48 89 d8             	mov    %rbx,%rax
    3f6f:	48 89 c7             	mov    %rax,%rdi
    3f72:	e8 19 e5 ff ff       	callq  2490 <_Unwind_Resume@plt>
	}
    3f77:	e8 74 e4 ff ff       	callq  23f0 <__stack_chk_fail@plt>
    3f7c:	48 8b 85 a8 fb ff ff 	mov    -0x458(%rbp),%rax
    3f83:	48 81 c4 58 04 00 00 	add    $0x458,%rsp
    3f8a:	5b                   	pop    %rbx
    3f8b:	5d                   	pop    %rbp
    3f8c:	c3                   	retq   

0000000000003f8d <_ZN3hse8parallel4lab1lsERSoRKNS1_10Line_stateE>:
	
	
	std::ostream& operator <<(std::ostream& os, Line_state const& line)
		    {
    3f8d:	f3 0f 1e fa          	endbr64 
    3f91:	55                   	push   %rbp
    3f92:	48 89 e5             	mov    %rsp,%rbp
    3f95:	53                   	push   %rbx
    3f96:	48 81 ec 28 02 00 00 	sub    $0x228,%rsp
    3f9d:	48 89 bd d8 fd ff ff 	mov    %rdi,-0x228(%rbp)
    3fa4:	48 89 b5 d0 fd ff ff 	mov    %rsi,-0x230(%rbp)
    3fab:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    3fb2:	00 00 
    3fb4:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    3fb8:	31 c0                	xor    %eax,%eax
				  <<  make_cell(std::to_string(line.ops_per_sec))<< '|'
				  <<  make_cell(std::to_string(line.tact_duration))<< '|'
				  <<  make_cell(std::to_string(line.tacts_per_sec))<< '|'
				  <<  make_cell(std::to_string(line.IPC))<< '|'
				  <<  make_cell(std::to_string(line.IPS))<< '|'
				  <<  make_cell(std::to_string(line.result)) << "|\n";
    3fba:	48 8b 85 d8 fd ff ff 	mov    -0x228(%rbp),%rax
    3fc1:	be 7c 00 00 00       	mov    $0x7c,%esi
    3fc6:	48 89 c7             	mov    %rax,%rdi
    3fc9:	e8 32 e4 ff ff       	callq  2400 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@plt>
    3fce:	48 89 c3             	mov    %rax,%rbx
			return os <<  '|' << make_cell(std::to_string(line.operations))<< '|'
    3fd1:	48 8b 85 d0 fd ff ff 	mov    -0x230(%rbp),%rax
    3fd8:	48 8b 10             	mov    (%rax),%rdx
    3fdb:	48 8d 85 e0 fd ff ff 	lea    -0x220(%rbp),%rax
    3fe2:	48 89 d6             	mov    %rdx,%rsi
    3fe5:	48 89 c7             	mov    %rax,%rdi
    3fe8:	e8 f8 05 00 00       	callq  45e5 <_ZNSt7__cxx119to_stringEm>
    3fed:	48 8d 85 00 fe ff ff 	lea    -0x200(%rbp),%rax
    3ff4:	48 8d 95 e0 fd ff ff 	lea    -0x220(%rbp),%rdx
    3ffb:	48 89 d6             	mov    %rdx,%rsi
    3ffe:	48 89 c7             	mov    %rax,%rdi
    4001:	e8 25 f3 ff ff       	callq  332b <_ZN3hse8parallel4lab19make_cellERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>
				  <<  make_cell(std::to_string(line.result)) << "|\n";
    4006:	48 8d 85 00 fe ff ff 	lea    -0x200(%rbp),%rax
    400d:	48 89 c6             	mov    %rax,%rsi
    4010:	48 89 df             	mov    %rbx,%rdi
    4013:	e8 78 e3 ff ff       	callq  2390 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@plt>
    4018:	be 7c 00 00 00       	mov    $0x7c,%esi
    401d:	48 89 c7             	mov    %rax,%rdi
    4020:	e8 db e3 ff ff       	callq  2400 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@plt>
    4025:	48 89 c3             	mov    %rax,%rbx
				  <<  make_cell(std::to_string(line.secs))<< '|'
    4028:	48 8b 85 d0 fd ff ff 	mov    -0x230(%rbp),%rax
    402f:	48 8b 40 08          	mov    0x8(%rax),%rax
    4033:	48 8d 95 20 fe ff ff 	lea    -0x1e0(%rbp),%rdx
    403a:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
    403f:	48 89 d7             	mov    %rdx,%rdi
    4042:	e8 06 06 00 00       	callq  464d <_ZNSt7__cxx119to_stringEd>
    4047:	48 8d 85 40 fe ff ff 	lea    -0x1c0(%rbp),%rax
    404e:	48 8d 95 20 fe ff ff 	lea    -0x1e0(%rbp),%rdx
    4055:	48 89 d6             	mov    %rdx,%rsi
    4058:	48 89 c7             	mov    %rax,%rdi
    405b:	e8 cb f2 ff ff       	callq  332b <_ZN3hse8parallel4lab19make_cellERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>
				  <<  make_cell(std::to_string(line.result)) << "|\n";
    4060:	48 8d 85 40 fe ff ff 	lea    -0x1c0(%rbp),%rax
    4067:	48 89 c6             	mov    %rax,%rsi
    406a:	48 89 df             	mov    %rbx,%rdi
    406d:	e8 1e e3 ff ff       	callq  2390 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@plt>
    4072:	be 7c 00 00 00       	mov    $0x7c,%esi
    4077:	48 89 c7             	mov    %rax,%rdi
    407a:	e8 81 e3 ff ff       	callq  2400 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@plt>
    407f:	48 89 c3             	mov    %rax,%rbx
				  <<  make_cell(std::to_string(line.ops_per_sec))<< '|'
    4082:	48 8b 85 d0 fd ff ff 	mov    -0x230(%rbp),%rax
    4089:	48 8b 40 10          	mov    0x10(%rax),%rax
    408d:	48 8d 95 60 fe ff ff 	lea    -0x1a0(%rbp),%rdx
    4094:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
    4099:	48 89 d7             	mov    %rdx,%rdi
    409c:	e8 ac 05 00 00       	callq  464d <_ZNSt7__cxx119to_stringEd>
    40a1:	48 8d 85 80 fe ff ff 	lea    -0x180(%rbp),%rax
    40a8:	48 8d 95 60 fe ff ff 	lea    -0x1a0(%rbp),%rdx
    40af:	48 89 d6             	mov    %rdx,%rsi
    40b2:	48 89 c7             	mov    %rax,%rdi
    40b5:	e8 71 f2 ff ff       	callq  332b <_ZN3hse8parallel4lab19make_cellERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>
				  <<  make_cell(std::to_string(line.result)) << "|\n";
    40ba:	48 8d 85 80 fe ff ff 	lea    -0x180(%rbp),%rax
    40c1:	48 89 c6             	mov    %rax,%rsi
    40c4:	48 89 df             	mov    %rbx,%rdi
    40c7:	e8 c4 e2 ff ff       	callq  2390 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@plt>
    40cc:	be 7c 00 00 00       	mov    $0x7c,%esi
    40d1:	48 89 c7             	mov    %rax,%rdi
    40d4:	e8 27 e3 ff ff       	callq  2400 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@plt>
    40d9:	48 89 c3             	mov    %rax,%rbx
				  <<  make_cell(std::to_string(line.tact_duration))<< '|'
    40dc:	48 8b 85 d0 fd ff ff 	mov    -0x230(%rbp),%rax
    40e3:	48 8b 50 18          	mov    0x18(%rax),%rdx
    40e7:	48 8d 85 a0 fe ff ff 	lea    -0x160(%rbp),%rax
    40ee:	48 89 d6             	mov    %rdx,%rsi
    40f1:	48 89 c7             	mov    %rax,%rdi
    40f4:	e8 ec 04 00 00       	callq  45e5 <_ZNSt7__cxx119to_stringEm>
    40f9:	48 8d 85 c0 fe ff ff 	lea    -0x140(%rbp),%rax
    4100:	48 8d 95 a0 fe ff ff 	lea    -0x160(%rbp),%rdx
    4107:	48 89 d6             	mov    %rdx,%rsi
    410a:	48 89 c7             	mov    %rax,%rdi
    410d:	e8 19 f2 ff ff       	callq  332b <_ZN3hse8parallel4lab19make_cellERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>
				  <<  make_cell(std::to_string(line.result)) << "|\n";
    4112:	48 8d 85 c0 fe ff ff 	lea    -0x140(%rbp),%rax
    4119:	48 89 c6             	mov    %rax,%rsi
    411c:	48 89 df             	mov    %rbx,%rdi
    411f:	e8 6c e2 ff ff       	callq  2390 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@plt>
    4124:	be 7c 00 00 00       	mov    $0x7c,%esi
    4129:	48 89 c7             	mov    %rax,%rdi
    412c:	e8 cf e2 ff ff       	callq  2400 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@plt>
    4131:	48 89 c3             	mov    %rax,%rbx
				  <<  make_cell(std::to_string(line.tacts_per_sec))<< '|'
    4134:	48 8b 85 d0 fd ff ff 	mov    -0x230(%rbp),%rax
    413b:	48 8b 40 20          	mov    0x20(%rax),%rax
    413f:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
    4146:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
    414b:	48 89 d7             	mov    %rdx,%rdi
    414e:	e8 fa 04 00 00       	callq  464d <_ZNSt7__cxx119to_stringEd>
    4153:	48 8d 85 00 ff ff ff 	lea    -0x100(%rbp),%rax
    415a:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
    4161:	48 89 d6             	mov    %rdx,%rsi
    4164:	48 89 c7             	mov    %rax,%rdi
    4167:	e8 bf f1 ff ff       	callq  332b <_ZN3hse8parallel4lab19make_cellERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>
				  <<  make_cell(std::to_string(line.result)) << "|\n";
    416c:	48 8d 85 00 ff ff ff 	lea    -0x100(%rbp),%rax
    4173:	48 89 c6             	mov    %rax,%rsi
    4176:	48 89 df             	mov    %rbx,%rdi
    4179:	e8 12 e2 ff ff       	callq  2390 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@plt>
    417e:	be 7c 00 00 00       	mov    $0x7c,%esi
    4183:	48 89 c7             	mov    %rax,%rdi
    4186:	e8 75 e2 ff ff       	callq  2400 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@plt>
    418b:	48 89 c3             	mov    %rax,%rbx
				  <<  make_cell(std::to_string(line.IPC))<< '|'
    418e:	48 8b 85 d0 fd ff ff 	mov    -0x230(%rbp),%rax
    4195:	48 8b 40 28          	mov    0x28(%rax),%rax
    4199:	48 8d 95 20 ff ff ff 	lea    -0xe0(%rbp),%rdx
    41a0:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
    41a5:	48 89 d7             	mov    %rdx,%rdi
    41a8:	e8 a0 04 00 00       	callq  464d <_ZNSt7__cxx119to_stringEd>
    41ad:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
    41b4:	48 8d 95 20 ff ff ff 	lea    -0xe0(%rbp),%rdx
    41bb:	48 89 d6             	mov    %rdx,%rsi
    41be:	48 89 c7             	mov    %rax,%rdi
    41c1:	e8 65 f1 ff ff       	callq  332b <_ZN3hse8parallel4lab19make_cellERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>
				  <<  make_cell(std::to_string(line.result)) << "|\n";
    41c6:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
    41cd:	48 89 c6             	mov    %rax,%rsi
    41d0:	48 89 df             	mov    %rbx,%rdi
    41d3:	e8 b8 e1 ff ff       	callq  2390 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@plt>
    41d8:	be 7c 00 00 00       	mov    $0x7c,%esi
    41dd:	48 89 c7             	mov    %rax,%rdi
    41e0:	e8 1b e2 ff ff       	callq  2400 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@plt>
    41e5:	48 89 c3             	mov    %rax,%rbx
				  <<  make_cell(std::to_string(line.IPS))<< '|'
    41e8:	48 8b 85 d0 fd ff ff 	mov    -0x230(%rbp),%rax
    41ef:	48 8b 40 30          	mov    0x30(%rax),%rax
    41f3:	48 8d 95 60 ff ff ff 	lea    -0xa0(%rbp),%rdx
    41fa:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
    41ff:	48 89 d7             	mov    %rdx,%rdi
    4202:	e8 46 04 00 00       	callq  464d <_ZNSt7__cxx119to_stringEd>
    4207:	48 8d 45 80          	lea    -0x80(%rbp),%rax
    420b:	48 8d 95 60 ff ff ff 	lea    -0xa0(%rbp),%rdx
    4212:	48 89 d6             	mov    %rdx,%rsi
    4215:	48 89 c7             	mov    %rax,%rdi
    4218:	e8 0e f1 ff ff       	callq  332b <_ZN3hse8parallel4lab19make_cellERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>
				  <<  make_cell(std::to_string(line.result)) << "|\n";
    421d:	48 8d 45 80          	lea    -0x80(%rbp),%rax
    4221:	48 89 c6             	mov    %rax,%rsi
    4224:	48 89 df             	mov    %rbx,%rdi
    4227:	e8 64 e1 ff ff       	callq  2390 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@plt>
    422c:	be 7c 00 00 00       	mov    $0x7c,%esi
    4231:	48 89 c7             	mov    %rax,%rdi
    4234:	e8 c7 e1 ff ff       	callq  2400 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@plt>
    4239:	48 89 c3             	mov    %rax,%rbx
    423c:	48 8b 85 d0 fd ff ff 	mov    -0x230(%rbp),%rax
    4243:	8b 50 38             	mov    0x38(%rax),%edx
    4246:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    424a:	89 d6                	mov    %edx,%esi
    424c:	48 89 c7             	mov    %rax,%rdi
    424f:	e8 2b 03 00 00       	callq  457f <_ZNSt7__cxx119to_stringEi>
    4254:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    4258:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
    425c:	48 89 d6             	mov    %rdx,%rsi
    425f:	48 89 c7             	mov    %rax,%rdi
    4262:	e8 c4 f0 ff ff       	callq  332b <_ZN3hse8parallel4lab19make_cellERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>
    4267:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    426b:	48 89 c6             	mov    %rax,%rsi
    426e:	48 89 df             	mov    %rbx,%rdi
    4271:	e8 1a e1 ff ff       	callq  2390 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@plt>
    4276:	48 8d 35 ef 0d 00 00 	lea    0xdef(%rip),%rsi        # 506c <_ZStL19piecewise_construct+0xc>
    427d:	48 89 c7             	mov    %rax,%rdi
    4280:	e8 1b e1 ff ff       	callq  23a0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    4285:	48 89 c3             	mov    %rax,%rbx
    4288:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    428c:	48 89 c7             	mov    %rax,%rdi
    428f:	e8 7c e0 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    4294:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    4298:	48 89 c7             	mov    %rax,%rdi
    429b:	e8 70 e0 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
				  <<  make_cell(std::to_string(line.IPS))<< '|'
    42a0:	48 8d 45 80          	lea    -0x80(%rbp),%rax
    42a4:	48 89 c7             	mov    %rax,%rdi
    42a7:	e8 64 e0 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    42ac:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
    42b3:	48 89 c7             	mov    %rax,%rdi
    42b6:	e8 55 e0 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
				  <<  make_cell(std::to_string(line.IPC))<< '|'
    42bb:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
    42c2:	48 89 c7             	mov    %rax,%rdi
    42c5:	e8 46 e0 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    42ca:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
    42d1:	48 89 c7             	mov    %rax,%rdi
    42d4:	e8 37 e0 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
				  <<  make_cell(std::to_string(line.tacts_per_sec))<< '|'
    42d9:	48 8d 85 00 ff ff ff 	lea    -0x100(%rbp),%rax
    42e0:	48 89 c7             	mov    %rax,%rdi
    42e3:	e8 28 e0 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    42e8:	48 8d 85 e0 fe ff ff 	lea    -0x120(%rbp),%rax
    42ef:	48 89 c7             	mov    %rax,%rdi
    42f2:	e8 19 e0 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
				  <<  make_cell(std::to_string(line.tact_duration))<< '|'
    42f7:	48 8d 85 c0 fe ff ff 	lea    -0x140(%rbp),%rax
    42fe:	48 89 c7             	mov    %rax,%rdi
    4301:	e8 0a e0 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    4306:	48 8d 85 a0 fe ff ff 	lea    -0x160(%rbp),%rax
    430d:	48 89 c7             	mov    %rax,%rdi
    4310:	e8 fb df ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
				  <<  make_cell(std::to_string(line.ops_per_sec))<< '|'
    4315:	48 8d 85 80 fe ff ff 	lea    -0x180(%rbp),%rax
    431c:	48 89 c7             	mov    %rax,%rdi
    431f:	e8 ec df ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    4324:	48 8d 85 60 fe ff ff 	lea    -0x1a0(%rbp),%rax
    432b:	48 89 c7             	mov    %rax,%rdi
    432e:	e8 dd df ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
				  <<  make_cell(std::to_string(line.secs))<< '|'
    4333:	48 8d 85 40 fe ff ff 	lea    -0x1c0(%rbp),%rax
    433a:	48 89 c7             	mov    %rax,%rdi
    433d:	e8 ce df ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    4342:	48 8d 85 20 fe ff ff 	lea    -0x1e0(%rbp),%rax
    4349:	48 89 c7             	mov    %rax,%rdi
    434c:	e8 bf df ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
			return os <<  '|' << make_cell(std::to_string(line.operations))<< '|'
    4351:	48 8d 85 00 fe ff ff 	lea    -0x200(%rbp),%rax
    4358:	48 89 c7             	mov    %rax,%rdi
    435b:	e8 b0 df ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    4360:	48 8d 85 e0 fd ff ff 	lea    -0x220(%rbp),%rax
    4367:	48 89 c7             	mov    %rax,%rdi
    436a:	e8 a1 df ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
				  <<  make_cell(std::to_string(line.result)) << "|\n";
    436f:	48 89 d8             	mov    %rbx,%rax
		    }
    4372:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    4376:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    437d:	00 00 
    437f:	0f 84 8a 01 00 00    	je     450f <_ZN3hse8parallel4lab1lsERSoRKNS1_10Line_stateE+0x582>
    4385:	e9 80 01 00 00       	jmpq   450a <_ZN3hse8parallel4lab1lsERSoRKNS1_10Line_stateE+0x57d>
    438a:	f3 0f 1e fa          	endbr64 
    438e:	48 89 c3             	mov    %rax,%rbx
				  <<  make_cell(std::to_string(line.result)) << "|\n";
    4391:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    4395:	48 89 c7             	mov    %rax,%rdi
    4398:	e8 73 df ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    439d:	eb 07                	jmp    43a6 <_ZN3hse8parallel4lab1lsERSoRKNS1_10Line_stateE+0x419>
    439f:	f3 0f 1e fa          	endbr64 
    43a3:	48 89 c3             	mov    %rax,%rbx
    43a6:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    43aa:	48 89 c7             	mov    %rax,%rdi
    43ad:	e8 5e df ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    43b2:	eb 07                	jmp    43bb <_ZN3hse8parallel4lab1lsERSoRKNS1_10Line_stateE+0x42e>
    43b4:	f3 0f 1e fa          	endbr64 
    43b8:	48 89 c3             	mov    %rax,%rbx
				  <<  make_cell(std::to_string(line.IPS))<< '|'
    43bb:	48 8d 45 80          	lea    -0x80(%rbp),%rax
    43bf:	48 89 c7             	mov    %rax,%rdi
    43c2:	e8 49 df ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    43c7:	eb 07                	jmp    43d0 <_ZN3hse8parallel4lab1lsERSoRKNS1_10Line_stateE+0x443>
    43c9:	f3 0f 1e fa          	endbr64 
    43cd:	48 89 c3             	mov    %rax,%rbx
    43d0:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
    43d7:	48 89 c7             	mov    %rax,%rdi
    43da:	e8 31 df ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    43df:	eb 07                	jmp    43e8 <_ZN3hse8parallel4lab1lsERSoRKNS1_10Line_stateE+0x45b>
    43e1:	f3 0f 1e fa          	endbr64 
    43e5:	48 89 c3             	mov    %rax,%rbx
				  <<  make_cell(std::to_string(line.IPC))<< '|'
    43e8:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
    43ef:	48 89 c7             	mov    %rax,%rdi
    43f2:	e8 19 df ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    43f7:	eb 07                	jmp    4400 <_ZN3hse8parallel4lab1lsERSoRKNS1_10Line_stateE+0x473>
    43f9:	f3 0f 1e fa          	endbr64 
    43fd:	48 89 c3             	mov    %rax,%rbx
    4400:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
    4407:	48 89 c7             	mov    %rax,%rdi
    440a:	e8 01 df ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    440f:	eb 07                	jmp    4418 <_ZN3hse8parallel4lab1lsERSoRKNS1_10Line_stateE+0x48b>
    4411:	f3 0f 1e fa          	endbr64 
    4415:	48 89 c3             	mov    %rax,%rbx
				  <<  make_cell(std::to_string(line.tacts_per_sec))<< '|'
    4418:	48 8d 85 00 ff ff ff 	lea    -0x100(%rbp),%rax
    441f:	48 89 c7             	mov    %rax,%rdi
    4422:	e8 e9 de ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    4427:	eb 07                	jmp    4430 <_ZN3hse8parallel4lab1lsERSoRKNS1_10Line_stateE+0x4a3>
    4429:	f3 0f 1e fa          	endbr64 
    442d:	48 89 c3             	mov    %rax,%rbx
    4430:	48 8d 85 e0 fe ff ff 	lea    -0x120(%rbp),%rax
    4437:	48 89 c7             	mov    %rax,%rdi
    443a:	e8 d1 de ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    443f:	eb 07                	jmp    4448 <_ZN3hse8parallel4lab1lsERSoRKNS1_10Line_stateE+0x4bb>
    4441:	f3 0f 1e fa          	endbr64 
    4445:	48 89 c3             	mov    %rax,%rbx
				  <<  make_cell(std::to_string(line.tact_duration))<< '|'
    4448:	48 8d 85 c0 fe ff ff 	lea    -0x140(%rbp),%rax
    444f:	48 89 c7             	mov    %rax,%rdi
    4452:	e8 b9 de ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    4457:	eb 07                	jmp    4460 <_ZN3hse8parallel4lab1lsERSoRKNS1_10Line_stateE+0x4d3>
    4459:	f3 0f 1e fa          	endbr64 
    445d:	48 89 c3             	mov    %rax,%rbx
    4460:	48 8d 85 a0 fe ff ff 	lea    -0x160(%rbp),%rax
    4467:	48 89 c7             	mov    %rax,%rdi
    446a:	e8 a1 de ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    446f:	eb 07                	jmp    4478 <_ZN3hse8parallel4lab1lsERSoRKNS1_10Line_stateE+0x4eb>
    4471:	f3 0f 1e fa          	endbr64 
    4475:	48 89 c3             	mov    %rax,%rbx
				  <<  make_cell(std::to_string(line.ops_per_sec))<< '|'
    4478:	48 8d 85 80 fe ff ff 	lea    -0x180(%rbp),%rax
    447f:	48 89 c7             	mov    %rax,%rdi
    4482:	e8 89 de ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    4487:	eb 07                	jmp    4490 <_ZN3hse8parallel4lab1lsERSoRKNS1_10Line_stateE+0x503>
    4489:	f3 0f 1e fa          	endbr64 
    448d:	48 89 c3             	mov    %rax,%rbx
    4490:	48 8d 85 60 fe ff ff 	lea    -0x1a0(%rbp),%rax
    4497:	48 89 c7             	mov    %rax,%rdi
    449a:	e8 71 de ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    449f:	eb 07                	jmp    44a8 <_ZN3hse8parallel4lab1lsERSoRKNS1_10Line_stateE+0x51b>
    44a1:	f3 0f 1e fa          	endbr64 
    44a5:	48 89 c3             	mov    %rax,%rbx
				  <<  make_cell(std::to_string(line.secs))<< '|'
    44a8:	48 8d 85 40 fe ff ff 	lea    -0x1c0(%rbp),%rax
    44af:	48 89 c7             	mov    %rax,%rdi
    44b2:	e8 59 de ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    44b7:	eb 07                	jmp    44c0 <_ZN3hse8parallel4lab1lsERSoRKNS1_10Line_stateE+0x533>
    44b9:	f3 0f 1e fa          	endbr64 
    44bd:	48 89 c3             	mov    %rax,%rbx
    44c0:	48 8d 85 20 fe ff ff 	lea    -0x1e0(%rbp),%rax
    44c7:	48 89 c7             	mov    %rax,%rdi
    44ca:	e8 41 de ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    44cf:	eb 07                	jmp    44d8 <_ZN3hse8parallel4lab1lsERSoRKNS1_10Line_stateE+0x54b>
    44d1:	f3 0f 1e fa          	endbr64 
    44d5:	48 89 c3             	mov    %rax,%rbx
			return os <<  '|' << make_cell(std::to_string(line.operations))<< '|'
    44d8:	48 8d 85 00 fe ff ff 	lea    -0x200(%rbp),%rax
    44df:	48 89 c7             	mov    %rax,%rdi
    44e2:	e8 29 de ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    44e7:	eb 07                	jmp    44f0 <_ZN3hse8parallel4lab1lsERSoRKNS1_10Line_stateE+0x563>
    44e9:	f3 0f 1e fa          	endbr64 
    44ed:	48 89 c3             	mov    %rax,%rbx
    44f0:	48 8d 85 e0 fd ff ff 	lea    -0x220(%rbp),%rax
    44f7:	48 89 c7             	mov    %rax,%rdi
    44fa:	e8 11 de ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    44ff:	48 89 d8             	mov    %rbx,%rax
    4502:	48 89 c7             	mov    %rax,%rdi
    4505:	e8 86 df ff ff       	callq  2490 <_Unwind_Resume@plt>
		    }
    450a:	e8 e1 de ff ff       	callq  23f0 <__stack_chk_fail@plt>
    450f:	48 81 c4 28 02 00 00 	add    $0x228,%rsp
    4516:	5b                   	pop    %rbx
    4517:	5d                   	pop    %rbp
    4518:	c3                   	retq   

0000000000004519 <_Z41__static_initialization_and_destruction_0ii>:

}
    4519:	f3 0f 1e fa          	endbr64 
    451d:	55                   	push   %rbp
    451e:	48 89 e5             	mov    %rsp,%rbp
    4521:	48 83 ec 10          	sub    $0x10,%rsp
    4525:	89 7d fc             	mov    %edi,-0x4(%rbp)
    4528:	89 75 f8             	mov    %esi,-0x8(%rbp)
    452b:	83 7d fc 01          	cmpl   $0x1,-0x4(%rbp)
    452f:	75 32                	jne    4563 <_Z41__static_initialization_and_destruction_0ii+0x4a>
    4531:	81 7d f8 ff ff 00 00 	cmpl   $0xffff,-0x8(%rbp)
    4538:	75 29                	jne    4563 <_Z41__static_initialization_and_destruction_0ii+0x4a>
    453a:	48 8d 3d 11 2c 00 00 	lea    0x2c11(%rip),%rdi        # 7152 <_ZStL8__ioinit>
    4541:	e8 1a df ff ff       	callq  2460 <_ZNSt8ios_base4InitC1Ev@plt>
    4546:	48 8d 15 bb 2a 00 00 	lea    0x2abb(%rip),%rdx        # 7008 <__dso_handle>
    454d:	48 8d 35 fe 2b 00 00 	lea    0x2bfe(%rip),%rsi        # 7152 <_ZStL8__ioinit>
    4554:	48 8b 05 9d 2a 00 00 	mov    0x2a9d(%rip),%rax        # 6ff8 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
    455b:	48 89 c7             	mov    %rax,%rdi
    455e:	e8 1d de ff ff       	callq  2380 <__cxa_atexit@plt>
    4563:	90                   	nop
    4564:	c9                   	leaveq 
    4565:	c3                   	retq   

0000000000004566 <_GLOBAL__sub_I__ZN3hse8parallel4lab110make_breakB5cxx11Ev>:
    4566:	f3 0f 1e fa          	endbr64 
    456a:	55                   	push   %rbp
    456b:	48 89 e5             	mov    %rsp,%rbp
    456e:	be ff ff 00 00       	mov    $0xffff,%esi
    4573:	bf 01 00 00 00       	mov    $0x1,%edi
    4578:	e8 9c ff ff ff       	callq  4519 <_Z41__static_initialization_and_destruction_0ii>
    457d:	5d                   	pop    %rbp
    457e:	c3                   	retq   

000000000000457f <_ZNSt7__cxx119to_stringEi>:
  // NB: (v)snprintf vs sprintf.

  // DR 1261.
  inline string
  to_string(int __val)
  { return __gnu_cxx::__to_xstring<string>(&std::vsnprintf, 4 * sizeof(int),
    457f:	f3 0f 1e fa          	endbr64 
    4583:	55                   	push   %rbp
    4584:	48 89 e5             	mov    %rsp,%rbp
    4587:	48 83 ec 20          	sub    $0x20,%rsp
    458b:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    458f:	89 75 e4             	mov    %esi,-0x1c(%rbp)
    4592:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    4599:	00 00 
    459b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    459f:	31 c0                	xor    %eax,%eax
					   "%d", __val); }
    45a1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    45a5:	8b 55 e4             	mov    -0x1c(%rbp),%edx
    45a8:	41 89 d0             	mov    %edx,%r8d
    45ab:	48 8d 0d af 0a 00 00 	lea    0xaaf(%rip),%rcx        # 5061 <_ZStL19piecewise_construct+0x1>
    45b2:	ba 10 00 00 00       	mov    $0x10,%edx
    45b7:	48 8b 35 12 2a 00 00 	mov    0x2a12(%rip),%rsi        # 6fd0 <vsnprintf@GLIBC_2.2.5>
    45be:	48 89 c7             	mov    %rax,%rdi
    45c1:	b8 00 00 00 00       	mov    $0x0,%eax
    45c6:	e8 f4 00 00 00       	callq  46bf <_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z>
    45cb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    45cf:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    45d6:	00 00 
    45d8:	74 05                	je     45df <_ZNSt7__cxx119to_stringEi+0x60>
    45da:	e8 11 de ff ff       	callq  23f0 <__stack_chk_fail@plt>
    45df:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    45e3:	c9                   	leaveq 
    45e4:	c3                   	retq   

00000000000045e5 <_ZNSt7__cxx119to_stringEm>:
  { return __gnu_cxx::__to_xstring<string>(&std::vsnprintf, 4 * sizeof(long),
					   "%ld", __val); }

  inline string
  to_string(unsigned long __val)
  { return __gnu_cxx::__to_xstring<string>(&std::vsnprintf,
    45e5:	f3 0f 1e fa          	endbr64 
    45e9:	55                   	push   %rbp
    45ea:	48 89 e5             	mov    %rsp,%rbp
    45ed:	48 83 ec 20          	sub    $0x20,%rsp
    45f1:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    45f5:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    45f9:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    4600:	00 00 
    4602:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    4606:	31 c0                	xor    %eax,%eax
					   4 * sizeof(unsigned long),
					   "%lu", __val); }
    4608:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    460c:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    4610:	49 89 d0             	mov    %rdx,%r8
    4613:	48 8d 0d 4a 0a 00 00 	lea    0xa4a(%rip),%rcx        # 5064 <_ZStL19piecewise_construct+0x4>
    461a:	ba 20 00 00 00       	mov    $0x20,%edx
    461f:	48 8b 35 aa 29 00 00 	mov    0x29aa(%rip),%rsi        # 6fd0 <vsnprintf@GLIBC_2.2.5>
    4626:	48 89 c7             	mov    %rax,%rdi
    4629:	b8 00 00 00 00       	mov    $0x0,%eax
    462e:	e8 8c 00 00 00       	callq  46bf <_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z>
    4633:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4637:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    463e:	00 00 
    4640:	74 05                	je     4647 <_ZNSt7__cxx119to_stringEm+0x62>
    4642:	e8 a9 dd ff ff       	callq  23f0 <__stack_chk_fail@plt>
    4647:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    464b:	c9                   	leaveq 
    464c:	c3                   	retq   

000000000000464d <_ZNSt7__cxx119to_stringEd>:
					   "%f", __val);
  }

  inline string
  to_string(double __val)
  {
    464d:	f3 0f 1e fa          	endbr64 
    4651:	55                   	push   %rbp
    4652:	48 89 e5             	mov    %rsp,%rbp
    4655:	48 83 ec 20          	sub    $0x20,%rsp
    4659:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    465d:	c5 fb 11 45 e0       	vmovsd %xmm0,-0x20(%rbp)
    4662:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    4669:	00 00 
    466b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    466f:	31 c0                	xor    %eax,%eax
    const int __n = 
    4671:	c7 45 f4 48 01 00 00 	movl   $0x148,-0xc(%rbp)
      __gnu_cxx::__numeric_traits<double>::__max_exponent10 + 20;
    return __gnu_cxx::__to_xstring<string>(&std::vsnprintf, __n,
					   "%f", __val);
    4678:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
    467c:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    4680:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
    4685:	48 8d 0d dc 09 00 00 	lea    0x9dc(%rip),%rcx        # 5068 <_ZStL19piecewise_construct+0x8>
    468c:	ba 48 01 00 00       	mov    $0x148,%edx
    4691:	48 8b 05 38 29 00 00 	mov    0x2938(%rip),%rax        # 6fd0 <vsnprintf@GLIBC_2.2.5>
    4698:	48 89 c6             	mov    %rax,%rsi
    469b:	b8 01 00 00 00       	mov    $0x1,%eax
    46a0:	e8 1a 00 00 00       	callq  46bf <_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z>
  }
    46a5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    46a9:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    46b0:	00 00 
    46b2:	74 05                	je     46b9 <_ZNSt7__cxx119to_stringEd+0x6c>
    46b4:	e8 37 dd ff ff       	callq  23f0 <__stack_chk_fail@plt>
    46b9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    46bd:	c9                   	leaveq 
    46be:	c3                   	retq   

00000000000046bf <_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z>:
    }

  // Helper for the to_string / to_wstring functions.
  template<typename _String, typename _CharT = typename _String::value_type>
    _String
    __to_xstring(int (*__convf) (_CharT*, std::size_t, const _CharT*,
    46bf:	f3 0f 1e fa          	endbr64 
    46c3:	55                   	push   %rbp
    46c4:	48 89 e5             	mov    %rsp,%rbp
    46c7:	53                   	push   %rbx
    46c8:	48 81 ec 08 01 00 00 	sub    $0x108,%rsp
    46cf:	48 89 bd 08 ff ff ff 	mov    %rdi,-0xf8(%rbp)
    46d6:	48 89 b5 00 ff ff ff 	mov    %rsi,-0x100(%rbp)
    46dd:	48 89 95 f8 fe ff ff 	mov    %rdx,-0x108(%rbp)
    46e4:	48 89 8d f0 fe ff ff 	mov    %rcx,-0x110(%rbp)
    46eb:	4c 89 85 60 ff ff ff 	mov    %r8,-0xa0(%rbp)
    46f2:	4c 89 8d 68 ff ff ff 	mov    %r9,-0x98(%rbp)
    46f9:	84 c0                	test   %al,%al
    46fb:	74 2b                	je     4728 <_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z+0x69>
    46fd:	c5 f8 29 85 70 ff ff 	vmovaps %xmm0,-0x90(%rbp)
    4704:	ff 
    4705:	c5 f8 29 4d 80       	vmovaps %xmm1,-0x80(%rbp)
    470a:	c5 f8 29 55 90       	vmovaps %xmm2,-0x70(%rbp)
    470f:	c5 f8 29 5d a0       	vmovaps %xmm3,-0x60(%rbp)
    4714:	c5 f8 29 65 b0       	vmovaps %xmm4,-0x50(%rbp)
    4719:	c5 f8 29 6d c0       	vmovaps %xmm5,-0x40(%rbp)
    471e:	c5 f8 29 75 d0       	vmovaps %xmm6,-0x30(%rbp)
    4723:	c5 f8 29 7d e0       	vmovaps %xmm7,-0x20(%rbp)
    4728:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    472f:	00 00 
    4731:	48 89 85 38 ff ff ff 	mov    %rax,-0xc8(%rbp)
    4738:	31 c0                	xor    %eax,%eax
				 __builtin_va_list), std::size_t __n,
		 const _CharT* __fmt, ...)
    {
      // XXX Eventually the result should be constructed in-place in
      // the __cxx11 string, likely with the help of internal hooks.
      _CharT* __s = static_cast<_CharT*>(__builtin_alloca(sizeof(_CharT)
    473a:	48 8b 85 f8 fe ff ff 	mov    -0x108(%rbp),%rax
    4741:	48 8d 50 18          	lea    0x18(%rax),%rdx
    4745:	b8 10 00 00 00       	mov    $0x10,%eax
    474a:	48 ff c8             	dec    %rax
    474d:	48 01 d0             	add    %rdx,%rax
    4750:	b9 10 00 00 00       	mov    $0x10,%ecx
    4755:	ba 00 00 00 00       	mov    $0x0,%edx
    475a:	48 f7 f1             	div    %rcx
    475d:	48 6b c0 10          	imul   $0x10,%rax,%rax
    4761:	48 89 c2             	mov    %rax,%rdx
    4764:	48 81 e2 00 f0 ff ff 	and    $0xfffffffffffff000,%rdx
    476b:	48 89 e3             	mov    %rsp,%rbx
    476e:	48 29 d3             	sub    %rdx,%rbx
    4771:	48 89 da             	mov    %rbx,%rdx
    4774:	48 39 d4             	cmp    %rdx,%rsp
    4777:	74 12                	je     478b <_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z+0xcc>
    4779:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    4780:	48 83 8c 24 f8 0f 00 	orq    $0x0,0xff8(%rsp)
    4787:	00 00 
    4789:	eb e9                	jmp    4774 <_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z+0xb5>
    478b:	48 89 c2             	mov    %rax,%rdx
    478e:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
    4794:	48 29 d4             	sub    %rdx,%rsp
    4797:	48 89 c2             	mov    %rax,%rdx
    479a:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
    47a0:	48 85 d2             	test   %rdx,%rdx
    47a3:	74 10                	je     47b5 <_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z+0xf6>
    47a5:	25 ff 0f 00 00       	and    $0xfff,%eax
    47aa:	48 83 e8 08          	sub    $0x8,%rax
    47ae:	48 01 e0             	add    %rsp,%rax
    47b1:	48 83 08 00          	orq    $0x0,(%rax)
    47b5:	48 89 e0             	mov    %rsp,%rax
    47b8:	48 83 c0 1f          	add    $0x1f,%rax
    47bc:	48 c1 e8 05          	shr    $0x5,%rax
    47c0:	48 c1 e0 05          	shl    $0x5,%rax
    47c4:	48 89 85 18 ff ff ff 	mov    %rax,-0xe8(%rbp)
							  * __n));

      __builtin_va_list __args;
      __builtin_va_start(__args, __fmt);
    47cb:	c7 85 20 ff ff ff 20 	movl   $0x20,-0xe0(%rbp)
    47d2:	00 00 00 
    47d5:	c7 85 24 ff ff ff 30 	movl   $0x30,-0xdc(%rbp)
    47dc:	00 00 00 
    47df:	48 8d 45 10          	lea    0x10(%rbp),%rax
    47e3:	48 89 85 28 ff ff ff 	mov    %rax,-0xd8(%rbp)
    47ea:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
    47f1:	48 89 85 30 ff ff ff 	mov    %rax,-0xd0(%rbp)

      const int __len = __convf(__s, __n, __fmt, __args);
    47f8:	48 8d 8d 20 ff ff ff 	lea    -0xe0(%rbp),%rcx
    47ff:	48 8b 95 f0 fe ff ff 	mov    -0x110(%rbp),%rdx
    4806:	48 8b b5 f8 fe ff ff 	mov    -0x108(%rbp),%rsi
    480d:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
    4814:	4c 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%r8
    481b:	48 89 c7             	mov    %rax,%rdi
    481e:	41 ff d0             	callq  *%r8
    4821:	89 85 14 ff ff ff    	mov    %eax,-0xec(%rbp)

      __builtin_va_end(__args);

      return _String(__s, __s + __len);
    4827:	48 8d 85 13 ff ff ff 	lea    -0xed(%rbp),%rax
    482e:	48 89 c7             	mov    %rax,%rdi
    4831:	e8 6a dc ff ff       	callq  24a0 <_ZNSaIcEC1Ev@plt>
    4836:	8b 85 14 ff ff ff    	mov    -0xec(%rbp),%eax
    483c:	48 63 d0             	movslq %eax,%rdx
    483f:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
    4846:	48 8d 3c 02          	lea    (%rdx,%rax,1),%rdi
    484a:	48 8d 95 13 ff ff ff 	lea    -0xed(%rbp),%rdx
    4851:	48 8b b5 18 ff ff ff 	mov    -0xe8(%rbp),%rsi
    4858:	48 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%rax
    485f:	48 89 d1             	mov    %rdx,%rcx
    4862:	48 89 fa             	mov    %rdi,%rdx
    4865:	48 89 c7             	mov    %rax,%rdi
    4868:	e8 05 03 00 00       	callq  4b72 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IPcvEET_S7_RKS3_>
    486d:	48 8d 85 13 ff ff ff 	lea    -0xed(%rbp),%rax
    4874:	48 89 c7             	mov    %rax,%rdi
    4877:	e8 54 db ff ff       	callq  23d0 <_ZNSaIcED1Ev@plt>
    }
    487c:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
    4883:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    488a:	00 00 
    488c:	74 28                	je     48b6 <_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z+0x1f7>
    488e:	eb 21                	jmp    48b1 <_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z+0x1f2>
    4890:	f3 0f 1e fa          	endbr64 
    4894:	48 89 c3             	mov    %rax,%rbx
      return _String(__s, __s + __len);
    4897:	48 8d 85 13 ff ff ff 	lea    -0xed(%rbp),%rax
    489e:	48 89 c7             	mov    %rax,%rdi
    48a1:	e8 2a db ff ff       	callq  23d0 <_ZNSaIcED1Ev@plt>
    48a6:	48 89 d8             	mov    %rbx,%rax
    48a9:	48 89 c7             	mov    %rax,%rdi
    48ac:	e8 df db ff ff       	callq  2490 <_Unwind_Resume@plt>
    }
    48b1:	e8 3a db ff ff       	callq  23f0 <__stack_chk_fail@plt>
    48b6:	48 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%rax
    48bd:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    48c1:	c9                   	leaveq 
    48c2:	c3                   	retq   
    48c3:	90                   	nop

00000000000048c4 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev>:
      struct _Alloc_hider : allocator_type // TODO check __is_final
    48c4:	f3 0f 1e fa          	endbr64 
    48c8:	55                   	push   %rbp
    48c9:	48 89 e5             	mov    %rsp,%rbp
    48cc:	48 83 ec 10          	sub    $0x10,%rsp
    48d0:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    48d4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    48d8:	48 89 c7             	mov    %rax,%rdi
    48db:	e8 e0 d9 ff ff       	callq  22c0 <_ZNSaIcED2Ev@plt>
    48e0:	90                   	nop
    48e1:	c9                   	leaveq 
    48e2:	c3                   	retq   

00000000000048e3 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_>:
    operator+(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
    48e3:	f3 0f 1e fa          	endbr64 
    48e7:	55                   	push   %rbp
    48e8:	48 89 e5             	mov    %rsp,%rbp
    48eb:	53                   	push   %rbx
    48ec:	48 83 ec 38          	sub    $0x38,%rsp
    48f0:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    48f4:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    48f8:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    48fc:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    4903:	00 00 
    4905:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    4909:	31 c0                	xor    %eax,%eax
      basic_string<_CharT, _Traits, _Alloc> __str(__lhs);
    490b:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    490f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4913:	48 89 d6             	mov    %rdx,%rsi
    4916:	48 89 c7             	mov    %rax,%rdi
    4919:	e8 d2 d9 ff ff       	callq  22f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_@plt>
      __str.append(__rhs);
    491e:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    4922:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4926:	48 89 d6             	mov    %rdx,%rsi
    4929:	48 89 c7             	mov    %rax,%rdi
    492c:	e8 8f db ff ff       	callq  24c0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc@plt>
      return __str;
    4931:	eb 1e                	jmp    4951 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_+0x6e>
    4933:	f3 0f 1e fa          	endbr64 
    4937:	48 89 c3             	mov    %rax,%rbx
    493a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    493e:	48 89 c7             	mov    %rax,%rdi
    4941:	e8 ca d9 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    4946:	48 89 d8             	mov    %rbx,%rax
    4949:	48 89 c7             	mov    %rax,%rdi
    494c:	e8 3f db ff ff       	callq  2490 <_Unwind_Resume@plt>
    }
    4951:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4955:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    495c:	00 00 
    495e:	74 05                	je     4965 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_+0x82>
    4960:	e8 8b da ff ff       	callq  23f0 <__stack_chk_fail@plt>
    4965:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4969:	48 83 c4 38          	add    $0x38,%rsp
    496d:	5b                   	pop    %rbx
    496e:	5d                   	pop    %rbp
    496f:	c3                   	retq   

0000000000004970 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_>:
    operator+(basic_string<_CharT, _Traits, _Alloc>&& __lhs,
    4970:	f3 0f 1e fa          	endbr64 
    4974:	55                   	push   %rbp
    4975:	48 89 e5             	mov    %rsp,%rbp
    4978:	53                   	push   %rbx
    4979:	48 83 ec 38          	sub    $0x38,%rsp
    497d:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    4981:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    4985:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
      const auto __size = __lhs.size() + __rhs.size();
    4989:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    498d:	48 89 c7             	mov    %rax,%rdi
    4990:	e8 ab d9 ff ff       	callq  2340 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv@plt>
    4995:	48 89 c3             	mov    %rax,%rbx
    4998:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    499c:	48 89 c7             	mov    %rax,%rdi
    499f:	e8 9c d9 ff ff       	callq  2340 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv@plt>
    49a4:	48 01 d8             	add    %rbx,%rax
    49a7:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
      const bool __cond = (__size > __lhs.capacity()
    49ab:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    49af:	48 89 c7             	mov    %rax,%rdi
    49b2:	e8 e9 d8 ff ff       	callq  22a0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv@plt>
			   && __size <= __rhs.capacity());
    49b7:	48 39 45 e8          	cmp    %rax,-0x18(%rbp)
    49bb:	76 19                	jbe    49d6 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_+0x66>
    49bd:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    49c1:	48 89 c7             	mov    %rax,%rdi
    49c4:	e8 d7 d8 ff ff       	callq  22a0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv@plt>
    49c9:	48 39 45 e8          	cmp    %rax,-0x18(%rbp)
    49cd:	77 07                	ja     49d6 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_+0x66>
    49cf:	b8 01 00 00 00       	mov    $0x1,%eax
    49d4:	eb 05                	jmp    49db <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_+0x6b>
    49d6:	b8 00 00 00 00       	mov    $0x0,%eax
      const bool __cond = (__size > __lhs.capacity()
    49db:	88 45 e7             	mov    %al,-0x19(%rbp)
	            : std::move(__lhs.append(__rhs));
    49de:	80 7d e7 00          	cmpb   $0x0,-0x19(%rbp)
    49e2:	74 1f                	je     4a03 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_+0x93>
      return __cond ? std::move(__rhs.insert(0, __lhs))
    49e4:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    49e8:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    49ec:	be 00 00 00 00       	mov    $0x0,%esi
    49f1:	48 89 c7             	mov    %rax,%rdi
    49f4:	e8 77 da ff ff       	callq  2470 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmRKS4_@plt>
    49f9:	48 89 c7             	mov    %rax,%rdi
    49fc:	e8 f1 01 00 00       	callq  4bf2 <_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_>
    4a01:	eb 1b                	jmp    4a1e <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_+0xae>
	            : std::move(__lhs.append(__rhs));
    4a03:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    4a07:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    4a0b:	48 89 d6             	mov    %rdx,%rsi
    4a0e:	48 89 c7             	mov    %rax,%rdi
    4a11:	e8 ba da ff ff       	callq  24d0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_@plt>
    4a16:	48 89 c7             	mov    %rax,%rdi
    4a19:	e8 d4 01 00 00       	callq  4bf2 <_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_>
    4a1e:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    4a22:	48 89 c6             	mov    %rax,%rsi
    4a25:	48 89 d7             	mov    %rdx,%rdi
    4a28:	e8 d3 d8 ff ff       	callq  2300 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_@plt>
    }
    4a2d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4a31:	48 83 c4 38          	add    $0x38,%rsp
    4a35:	5b                   	pop    %rbx
    4a36:	5d                   	pop    %rbp
    4a37:	c3                   	retq   

0000000000004a38 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_OS8_>:
    operator+(_CharT __lhs,
    4a38:	f3 0f 1e fa          	endbr64 
    4a3c:	55                   	push   %rbp
    4a3d:	48 89 e5             	mov    %rsp,%rbp
    4a40:	48 83 ec 20          	sub    $0x20,%rsp
    4a44:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    4a48:	89 f0                	mov    %esi,%eax
    4a4a:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    4a4e:	88 45 f4             	mov    %al,-0xc(%rbp)
    { return std::move(__rhs.insert(0, 1, __lhs)); }
    4a51:	0f be 55 f4          	movsbl -0xc(%rbp),%edx
    4a55:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4a59:	89 d1                	mov    %edx,%ecx
    4a5b:	ba 01 00 00 00       	mov    $0x1,%edx
    4a60:	be 00 00 00 00       	mov    $0x0,%esi
    4a65:	48 89 c7             	mov    %rax,%rdi
    4a68:	e8 83 da ff ff       	callq  24f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmmc@plt>
    4a6d:	48 89 c7             	mov    %rax,%rdi
    4a70:	e8 7d 01 00 00       	callq  4bf2 <_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_>
    4a75:	48 89 c2             	mov    %rax,%rdx
    4a78:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4a7c:	48 89 d6             	mov    %rdx,%rsi
    4a7f:	48 89 c7             	mov    %rax,%rdi
    4a82:	e8 79 d8 ff ff       	callq  2300 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_@plt>
    4a87:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4a8b:	c9                   	leaveq 
    4a8c:	c3                   	retq   

0000000000004a8d <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_>:
    operator+(basic_string<_CharT, _Traits, _Alloc>&& __lhs,
    4a8d:	f3 0f 1e fa          	endbr64 
    4a91:	55                   	push   %rbp
    4a92:	48 89 e5             	mov    %rsp,%rbp
    4a95:	48 83 ec 20          	sub    $0x20,%rsp
    4a99:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    4a9d:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    4aa1:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    { return std::move(__lhs.append(__rhs)); }
    4aa5:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    4aa9:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    4aad:	48 89 d6             	mov    %rdx,%rsi
    4ab0:	48 89 c7             	mov    %rax,%rdi
    4ab3:	e8 18 da ff ff       	callq  24d0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_@plt>
    4ab8:	48 89 c7             	mov    %rax,%rdi
    4abb:	e8 32 01 00 00       	callq  4bf2 <_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_>
    4ac0:	48 89 c2             	mov    %rax,%rdx
    4ac3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4ac7:	48 89 d6             	mov    %rdx,%rsi
    4aca:	48 89 c7             	mov    %rax,%rdi
    4acd:	e8 2e d8 ff ff       	callq  2300 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_@plt>
    4ad2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4ad6:	c9                   	leaveq 
    4ad7:	c3                   	retq   

0000000000004ad8 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_>:
    operator+(basic_string<_CharT, _Traits, _Alloc>&& __lhs,
    4ad8:	f3 0f 1e fa          	endbr64 
    4adc:	55                   	push   %rbp
    4add:	48 89 e5             	mov    %rsp,%rbp
    4ae0:	48 83 ec 20          	sub    $0x20,%rsp
    4ae4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    4ae8:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    4aec:	89 d0                	mov    %edx,%eax
    4aee:	88 45 ec             	mov    %al,-0x14(%rbp)
    { return std::move(__lhs.append(1, __rhs)); }
    4af1:	0f be 55 ec          	movsbl -0x14(%rbp),%edx
    4af5:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    4af9:	be 01 00 00 00       	mov    $0x1,%esi
    4afe:	48 89 c7             	mov    %rax,%rdi
    4b01:	e8 ba d8 ff ff       	callq  23c0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc@plt>
    4b06:	48 89 c7             	mov    %rax,%rdi
    4b09:	e8 e4 00 00 00       	callq  4bf2 <_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_>
    4b0e:	48 89 c2             	mov    %rax,%rdx
    4b11:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4b15:	48 89 d6             	mov    %rdx,%rsi
    4b18:	48 89 c7             	mov    %rax,%rdi
    4b1b:	e8 e0 d7 ff ff       	callq  2300 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_@plt>
    4b20:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4b24:	c9                   	leaveq 
    4b25:	c3                   	retq   

0000000000004b26 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_>:
    operator+(basic_string<_CharT, _Traits, _Alloc>&& __lhs,
    4b26:	f3 0f 1e fa          	endbr64 
    4b2a:	55                   	push   %rbp
    4b2b:	48 89 e5             	mov    %rsp,%rbp
    4b2e:	48 83 ec 20          	sub    $0x20,%rsp
    4b32:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    4b36:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    4b3a:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    { return std::move(__lhs.append(__rhs)); }
    4b3e:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    4b42:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    4b46:	48 89 d6             	mov    %rdx,%rsi
    4b49:	48 89 c7             	mov    %rax,%rdi
    4b4c:	e8 6f d9 ff ff       	callq  24c0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc@plt>
    4b51:	48 89 c7             	mov    %rax,%rdi
    4b54:	e8 99 00 00 00       	callq  4bf2 <_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_>
    4b59:	48 89 c2             	mov    %rax,%rdx
    4b5c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4b60:	48 89 d6             	mov    %rdx,%rsi
    4b63:	48 89 c7             	mov    %rax,%rdi
    4b66:	e8 95 d7 ff ff       	callq  2300 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_@plt>
    4b6b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4b6f:	c9                   	leaveq 
    4b70:	c3                   	retq   
    4b71:	90                   	nop

0000000000004b72 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IPcvEET_S7_RKS3_>:
        basic_string(_InputIterator __beg, _InputIterator __end,
    4b72:	f3 0f 1e fa          	endbr64 
    4b76:	55                   	push   %rbp
    4b77:	48 89 e5             	mov    %rsp,%rbp
    4b7a:	53                   	push   %rbx
    4b7b:	48 83 ec 28          	sub    $0x28,%rsp
    4b7f:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    4b83:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    4b87:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    4b8b:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
	: _M_dataplus(_M_local_data(), __a)
    4b8f:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
    4b93:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4b97:	48 89 c7             	mov    %rax,%rdi
    4b9a:	e8 c1 d7 ff ff       	callq  2360 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv@plt>
    4b9f:	48 89 c1             	mov    %rax,%rcx
    4ba2:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    4ba6:	48 89 c2             	mov    %rax,%rdx
    4ba9:	48 89 ce             	mov    %rcx,%rsi
    4bac:	48 89 df             	mov    %rbx,%rdi
    4baf:	e8 fc d7 ff ff       	callq  23b0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_@plt>
	{ _M_construct(__beg, __end); }
    4bb4:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    4bb8:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    4bbc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4bc0:	48 89 ce             	mov    %rcx,%rsi
    4bc3:	48 89 c7             	mov    %rax,%rdi
    4bc6:	e8 39 00 00 00       	callq  4c04 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_>
    4bcb:	eb 1e                	jmp    4beb <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IPcvEET_S7_RKS3_+0x79>
    4bcd:	f3 0f 1e fa          	endbr64 
    4bd1:	48 89 c3             	mov    %rax,%rbx
	: _M_dataplus(_M_local_data(), __a)
    4bd4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4bd8:	48 89 c7             	mov    %rax,%rdi
    4bdb:	e8 e4 fc ff ff       	callq  48c4 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev>
    4be0:	48 89 d8             	mov    %rbx,%rax
    4be3:	48 89 c7             	mov    %rax,%rdi
    4be6:	e8 a5 d8 ff ff       	callq  2490 <_Unwind_Resume@plt>
	{ _M_construct(__beg, __end); }
    4beb:	48 83 c4 28          	add    $0x28,%rsp
    4bef:	5b                   	pop    %rbx
    4bf0:	5d                   	pop    %rbp
    4bf1:	c3                   	retq   

0000000000004bf2 <_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_>:
   *  @param  __t  A thing of arbitrary type.
   *  @return The parameter cast to an rvalue-reference to allow moving it.
  */
  template<typename _Tp>
    constexpr typename std::remove_reference<_Tp>::type&&
    move(_Tp&& __t) noexcept
    4bf2:	f3 0f 1e fa          	endbr64 
    4bf6:	55                   	push   %rbp
    4bf7:	48 89 e5             	mov    %rsp,%rbp
    4bfa:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return static_cast<typename std::remove_reference<_Tp>::type&&>(__t); }
    4bfe:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4c02:	5d                   	pop    %rbp
    4c03:	c3                   	retq   

0000000000004c04 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_>:
        _M_construct(_InIterator __beg, _InIterator __end)
    4c04:	f3 0f 1e fa          	endbr64 
    4c08:	55                   	push   %rbp
    4c09:	48 89 e5             	mov    %rsp,%rbp
    4c0c:	48 83 ec 30          	sub    $0x30,%rsp
    4c10:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    4c14:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    4c18:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    4c1c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    4c23:	00 00 
    4c25:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    4c29:	31 c0                	xor    %eax,%eax
	  _M_construct_aux(__beg, __end, _Integral());
    4c2b:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    4c2f:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    4c33:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4c37:	48 89 ce             	mov    %rcx,%rsi
    4c3a:	48 89 c7             	mov    %rax,%rdi
    4c3d:	e8 18 00 00 00       	callq  4c5a <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPcEEvT_S7_St12__false_type>
        }
    4c42:	90                   	nop
    4c43:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4c47:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    4c4e:	00 00 
    4c50:	74 05                	je     4c57 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_+0x53>
    4c52:	e8 99 d7 ff ff       	callq  23f0 <__stack_chk_fail@plt>
    4c57:	c9                   	leaveq 
    4c58:	c3                   	retq   
    4c59:	90                   	nop

0000000000004c5a <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPcEEvT_S7_St12__false_type>:
        _M_construct_aux(_InIterator __beg, _InIterator __end,
    4c5a:	f3 0f 1e fa          	endbr64 
    4c5e:	55                   	push   %rbp
    4c5f:	48 89 e5             	mov    %rsp,%rbp
    4c62:	48 83 ec 30          	sub    $0x30,%rsp
    4c66:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    4c6a:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    4c6e:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    4c72:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    4c79:	00 00 
    4c7b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    4c7f:	31 c0                	xor    %eax,%eax
          _M_construct(__beg, __end, _Tag());
    4c81:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    4c85:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    4c89:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4c8d:	48 89 ce             	mov    %rcx,%rsi
    4c90:	48 89 c7             	mov    %rax,%rdi
    4c93:	e8 18 00 00 00       	callq  4cb0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag>
	}
    4c98:	90                   	nop
    4c99:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4c9d:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    4ca4:	00 00 
    4ca6:	74 05                	je     4cad <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPcEEvT_S7_St12__false_type+0x53>
    4ca8:	e8 43 d7 ff ff       	callq  23f0 <__stack_chk_fail@plt>
    4cad:	c9                   	leaveq 
    4cae:	c3                   	retq   
    4caf:	90                   	nop

0000000000004cb0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag>:
      }

  template<typename _CharT, typename _Traits, typename _Alloc>
    template<typename _InIterator>
      void
      basic_string<_CharT, _Traits, _Alloc>::
    4cb0:	f3 0f 1e fa          	endbr64 
    4cb4:	55                   	push   %rbp
    4cb5:	48 89 e5             	mov    %rsp,%rbp
    4cb8:	53                   	push   %rbx
    4cb9:	48 83 ec 38          	sub    $0x38,%rsp
    4cbd:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    4cc1:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    4cc5:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    4cc9:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    4cd0:	00 00 
    4cd2:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    4cd6:	31 c0                	xor    %eax,%eax
      _M_construct(_InIterator __beg, _InIterator __end,
		   std::forward_iterator_tag)
      {
	// NB: Not required, but considered best practice.
	if (__gnu_cxx::__is_null_pointer(__beg) && __beg != __end)
    4cd8:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    4cdc:	48 89 c7             	mov    %rax,%rdi
    4cdf:	e8 0f 01 00 00       	callq  4df3 <_ZN9__gnu_cxx17__is_null_pointerIcEEbPT_>
    4ce4:	84 c0                	test   %al,%al
    4ce6:	74 11                	je     4cf9 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag+0x49>
    4ce8:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    4cec:	48 3b 45 c8          	cmp    -0x38(%rbp),%rax
    4cf0:	74 07                	je     4cf9 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag+0x49>
    4cf2:	b8 01 00 00 00       	mov    $0x1,%eax
    4cf7:	eb 05                	jmp    4cfe <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag+0x4e>
    4cf9:	b8 00 00 00 00       	mov    $0x0,%eax
    4cfe:	84 c0                	test   %al,%al
    4d00:	74 0c                	je     4d0e <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag+0x5e>
	  std::__throw_logic_error(__N("basic_string::"
    4d02:	48 8d 3d cf 03 00 00 	lea    0x3cf(%rip),%rdi        # 50d8 <_ZStL19piecewise_construct+0x78>
    4d09:	e8 42 d6 ff ff       	callq  2350 <_ZSt19__throw_logic_errorPKc@plt>
				       "_M_construct null not valid"));

	size_type __dnew = static_cast<size_type>(std::distance(__beg, __end));
    4d0e:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    4d12:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    4d16:	48 89 d6             	mov    %rdx,%rsi
    4d19:	48 89 c7             	mov    %rax,%rdi
    4d1c:	e8 e8 00 00 00       	callq  4e09 <_ZSt8distanceIPcENSt15iterator_traitsIT_E15difference_typeES2_S2_>
    4d21:	48 89 45 e0          	mov    %rax,-0x20(%rbp)

	if (__dnew > size_type(_S_local_capacity))
    4d25:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    4d29:	48 83 f8 0f          	cmp    $0xf,%rax
    4d2d:	76 3d                	jbe    4d6c <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag+0xbc>
	  {
	    _M_data(_M_create(__dnew, size_type(0)));
    4d2f:	48 8d 4d e0          	lea    -0x20(%rbp),%rcx
    4d33:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4d37:	ba 00 00 00 00       	mov    $0x0,%edx
    4d3c:	48 89 ce             	mov    %rcx,%rsi
    4d3f:	48 89 c7             	mov    %rax,%rdi
    4d42:	e8 69 d7 ff ff       	callq  24b0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
    4d47:	48 89 c2             	mov    %rax,%rdx
    4d4a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4d4e:	48 89 d6             	mov    %rdx,%rsi
    4d51:	48 89 c7             	mov    %rax,%rdi
    4d54:	e8 17 d6 ff ff       	callq  2370 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc@plt>
	    _M_capacity(__dnew);
    4d59:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    4d5d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4d61:	48 89 d6             	mov    %rdx,%rsi
    4d64:	48 89 c7             	mov    %rax,%rdi
    4d67:	e8 74 d7 ff ff       	callq  24e0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm@plt>
	  }

	// Check for out_of_range and length_error exceptions.
	__try
	  { this->_S_copy_chars(_M_data(), __beg, __end); }
    4d6c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4d70:	48 89 c7             	mov    %rax,%rdi
    4d73:	e8 68 d6 ff ff       	callq  23e0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv@plt>
    4d78:	48 89 c1             	mov    %rax,%rcx
    4d7b:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    4d7f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    4d83:	48 89 c6             	mov    %rax,%rsi
    4d86:	48 89 cf             	mov    %rcx,%rdi
    4d89:	e8 42 d5 ff ff       	callq  22d0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcS5_S5_@plt>
	  {
	    _M_dispose();
	    __throw_exception_again;
	  }

	_M_set_length(__dnew);
    4d8e:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    4d92:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4d96:	48 89 d6             	mov    %rdx,%rsi
    4d99:	48 89 c7             	mov    %rax,%rdi
    4d9c:	e8 8f d5 ff ff       	callq  2330 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm@plt>
      }
    4da1:	90                   	nop
    4da2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4da6:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    4dad:	00 00 
    4daf:	74 3b                	je     4dec <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag+0x13c>
    4db1:	eb 34                	jmp    4de7 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag+0x137>
    4db3:	f3 0f 1e fa          	endbr64 
	__catch(...)
    4db7:	48 89 c7             	mov    %rax,%rdi
    4dba:	e8 21 d5 ff ff       	callq  22e0 <__cxa_begin_catch@plt>
	    _M_dispose();
    4dbf:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4dc3:	48 89 c7             	mov    %rax,%rdi
    4dc6:	e8 45 d6 ff ff       	callq  2410 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@plt>
	    __throw_exception_again;
    4dcb:	e8 70 d6 ff ff       	callq  2440 <__cxa_rethrow@plt>
    4dd0:	f3 0f 1e fa          	endbr64 
    4dd4:	48 89 c3             	mov    %rax,%rbx
	__catch(...)
    4dd7:	e8 a4 d6 ff ff       	callq  2480 <__cxa_end_catch@plt>
    4ddc:	48 89 d8             	mov    %rbx,%rax
    4ddf:	48 89 c7             	mov    %rax,%rdi
    4de2:	e8 a9 d6 ff ff       	callq  2490 <_Unwind_Resume@plt>
      }
    4de7:	e8 04 d6 ff ff       	callq  23f0 <__stack_chk_fail@plt>
    4dec:	48 83 c4 38          	add    $0x38,%rsp
    4df0:	5b                   	pop    %rbx
    4df1:	5d                   	pop    %rbp
    4df2:	c3                   	retq   

0000000000004df3 <_ZN9__gnu_cxx17__is_null_pointerIcEEbPT_>:


  // For use in string and vstring.
  template<typename _Type>
    inline bool
    __is_null_pointer(_Type* __ptr)
    4df3:	f3 0f 1e fa          	endbr64 
    4df7:	55                   	push   %rbp
    4df8:	48 89 e5             	mov    %rsp,%rbp
    4dfb:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return __ptr == 0; }
    4dff:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    4e04:	0f 94 c0             	sete   %al
    4e07:	5d                   	pop    %rbp
    4e08:	c3                   	retq   

0000000000004e09 <_ZSt8distanceIPcENSt15iterator_traitsIT_E15difference_typeES2_S2_>:
   *  and are constant time.  For other %iterator classes they are linear time.
  */
  template<typename _InputIterator>
    inline _GLIBCXX17_CONSTEXPR
    typename iterator_traits<_InputIterator>::difference_type
    distance(_InputIterator __first, _InputIterator __last)
    4e09:	f3 0f 1e fa          	endbr64 
    4e0d:	55                   	push   %rbp
    4e0e:	48 89 e5             	mov    %rsp,%rbp
    4e11:	48 83 ec 20          	sub    $0x20,%rsp
    4e15:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    4e19:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    4e1d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    4e24:	00 00 
    4e26:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    4e2a:	31 c0                	xor    %eax,%eax
    {
      // concept requirements -- taken care of in __distance
      return std::__distance(__first, __last,
			     std::__iterator_category(__first));
    4e2c:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
    4e30:	48 89 c7             	mov    %rax,%rdi
    4e33:	e8 29 00 00 00       	callq  4e61 <_ZSt19__iterator_categoryIPcENSt15iterator_traitsIT_E17iterator_categoryERKS2_>
      return std::__distance(__first, __last,
    4e38:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4e3c:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    4e40:	48 89 d6             	mov    %rdx,%rsi
    4e43:	48 89 c7             	mov    %rax,%rdi
    4e46:	e8 24 00 00 00       	callq  4e6f <_ZSt10__distanceIPcENSt15iterator_traitsIT_E15difference_typeES2_S2_St26random_access_iterator_tag>
    }
    4e4b:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    4e4f:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    4e56:	00 00 
    4e58:	74 05                	je     4e5f <_ZSt8distanceIPcENSt15iterator_traitsIT_E15difference_typeES2_S2_+0x56>
    4e5a:	e8 91 d5 ff ff       	callq  23f0 <__stack_chk_fail@plt>
    4e5f:	c9                   	leaveq 
    4e60:	c3                   	retq   

0000000000004e61 <_ZSt19__iterator_categoryIPcENSt15iterator_traitsIT_E17iterator_categoryERKS2_>:
   *  sugar for internal library use only.
  */
  template<typename _Iter>
    inline _GLIBCXX_CONSTEXPR
    typename iterator_traits<_Iter>::iterator_category
    __iterator_category(const _Iter&)
    4e61:	f3 0f 1e fa          	endbr64 
    4e65:	55                   	push   %rbp
    4e66:	48 89 e5             	mov    %rsp,%rbp
    4e69:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return typename iterator_traits<_Iter>::iterator_category(); }
    4e6d:	5d                   	pop    %rbp
    4e6e:	c3                   	retq   

0000000000004e6f <_ZSt10__distanceIPcENSt15iterator_traitsIT_E15difference_typeES2_S2_St26random_access_iterator_tag>:
    __distance(_RandomAccessIterator __first, _RandomAccessIterator __last,
    4e6f:	f3 0f 1e fa          	endbr64 
    4e73:	55                   	push   %rbp
    4e74:	48 89 e5             	mov    %rsp,%rbp
    4e77:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    4e7b:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
      return __last - __first;
    4e7f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    4e83:	48 2b 45 f8          	sub    -0x8(%rbp),%rax
    }
    4e87:	5d                   	pop    %rbp
    4e88:	c3                   	retq   
    4e89:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000004e90 <__libc_csu_init>:
    4e90:	f3 0f 1e fa          	endbr64 
    4e94:	41 57                	push   %r15
    4e96:	4c 8d 3d b3 1d 00 00 	lea    0x1db3(%rip),%r15        # 6c50 <__frame_dummy_init_array_entry>
    4e9d:	41 56                	push   %r14
    4e9f:	49 89 d6             	mov    %rdx,%r14
    4ea2:	41 55                	push   %r13
    4ea4:	49 89 f5             	mov    %rsi,%r13
    4ea7:	41 54                	push   %r12
    4ea9:	41 89 fc             	mov    %edi,%r12d
    4eac:	55                   	push   %rbp
    4ead:	48 8d 2d b4 1d 00 00 	lea    0x1db4(%rip),%rbp        # 6c68 <__do_global_dtors_aux_fini_array_entry>
    4eb4:	53                   	push   %rbx
    4eb5:	4c 29 fd             	sub    %r15,%rbp
    4eb8:	48 83 ec 08          	sub    $0x8,%rsp
    4ebc:	e8 3f d1 ff ff       	callq  2000 <_init>
    4ec1:	48 c1 fd 03          	sar    $0x3,%rbp
    4ec5:	74 1f                	je     4ee6 <__libc_csu_init+0x56>
    4ec7:	31 db                	xor    %ebx,%ebx
    4ec9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    4ed0:	4c 89 f2             	mov    %r14,%rdx
    4ed3:	4c 89 ee             	mov    %r13,%rsi
    4ed6:	44 89 e7             	mov    %r12d,%edi
    4ed9:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    4edd:	48 83 c3 01          	add    $0x1,%rbx
    4ee1:	48 39 dd             	cmp    %rbx,%rbp
    4ee4:	75 ea                	jne    4ed0 <__libc_csu_init+0x40>
    4ee6:	48 83 c4 08          	add    $0x8,%rsp
    4eea:	5b                   	pop    %rbx
    4eeb:	5d                   	pop    %rbp
    4eec:	41 5c                	pop    %r12
    4eee:	41 5d                	pop    %r13
    4ef0:	41 5e                	pop    %r14
    4ef2:	41 5f                	pop    %r15
    4ef4:	c3                   	retq   
    4ef5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    4efc:	00 00 00 00 

0000000000004f00 <__libc_csu_fini>:
    4f00:	f3 0f 1e fa          	endbr64 
    4f04:	c3                   	retq   

Дизассемблирование раздела .fini:

0000000000004f08 <_fini>:
    4f08:	f3 0f 1e fa          	endbr64 
    4f0c:	48 83 ec 08          	sub    $0x8,%rsp
    4f10:	48 83 c4 08          	add    $0x8,%rsp
    4f14:	c3                   	retq   
