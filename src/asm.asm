
test.o:     формат файла elf64-x86-64


Дизассемблирование раздела .init:

0000000000002000 <_init>:
    2000:	f3 0f 1e fa          	endbr64 
    2004:	48 83 ec 08          	sub    $0x8,%rsp
    2008:	48 8b 05 d9 5f 00 00 	mov    0x5fd9(%rip),%rax        # 7fe8 <__gmon_start__>
    200f:	48 85 c0             	test   %rax,%rax
    2012:	74 02                	je     2016 <_init+0x16>
    2014:	ff d0                	callq  *%rax
    2016:	48 83 c4 08          	add    $0x8,%rsp
    201a:	c3                   	retq   

Дизассемблирование раздела .plt:

0000000000002020 <.plt>:
    2020:	ff 35 62 5e 00 00    	pushq  0x5e62(%rip)        # 7e88 <_GLOBAL_OFFSET_TABLE_+0x8>
    2026:	f2 ff 25 63 5e 00 00 	bnd jmpq *0x5e63(%rip)        # 7e90 <_GLOBAL_OFFSET_TABLE_+0x10>
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
    2294:	f2 ff 25 2d 5d 00 00 	bnd jmpq *0x5d2d(%rip)        # 7fc8 <__cxa_finalize@GLIBC_2.2.5>
    229b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Дизассемблирование раздела .plt.sec:

00000000000022a0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv@plt>:
    22a0:	f3 0f 1e fa          	endbr64 
    22a4:	f2 ff 25 ed 5b 00 00 	bnd jmpq *0x5bed(%rip)        # 7e98 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv@GLIBCXX_3.4.21>
    22ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000022b0 <_ZNSt6chrono3_V212system_clock3nowEv@plt>:
    22b0:	f3 0f 1e fa          	endbr64 
    22b4:	f2 ff 25 e5 5b 00 00 	bnd jmpq *0x5be5(%rip)        # 7ea0 <_ZNSt6chrono3_V212system_clock3nowEv@GLIBCXX_3.4.19>
    22bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000022c0 <_ZNSaIcED2Ev@plt>:
    22c0:	f3 0f 1e fa          	endbr64 
    22c4:	f2 ff 25 dd 5b 00 00 	bnd jmpq *0x5bdd(%rip)        # 7ea8 <_ZNSaIcED2Ev@GLIBCXX_3.4>
    22cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000022d0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcS5_S5_@plt>:
    22d0:	f3 0f 1e fa          	endbr64 
    22d4:	f2 ff 25 d5 5b 00 00 	bnd jmpq *0x5bd5(%rip)        # 7eb0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcS5_S5_@GLIBCXX_3.4.21>
    22db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000022e0 <__cxa_begin_catch@plt>:
    22e0:	f3 0f 1e fa          	endbr64 
    22e4:	f2 ff 25 cd 5b 00 00 	bnd jmpq *0x5bcd(%rip)        # 7eb8 <__cxa_begin_catch@CXXABI_1.3>
    22eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000022f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_@plt>:
    22f0:	f3 0f 1e fa          	endbr64 
    22f4:	f2 ff 25 c5 5b 00 00 	bnd jmpq *0x5bc5(%rip)        # 7ec0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_@GLIBCXX_3.4.21>
    22fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002300 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_@plt>:
    2300:	f3 0f 1e fa          	endbr64 
    2304:	f2 ff 25 bd 5b 00 00 	bnd jmpq *0x5bbd(%rip)        # 7ec8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_@GLIBCXX_3.4.21>
    230b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>:
    2310:	f3 0f 1e fa          	endbr64 
    2314:	f2 ff 25 b5 5b 00 00 	bnd jmpq *0x5bb5(%rip)        # 7ed0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@GLIBCXX_3.4.21>
    231b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002320 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EmcRKS3_@plt>:
    2320:	f3 0f 1e fa          	endbr64 
    2324:	f2 ff 25 ad 5b 00 00 	bnd jmpq *0x5bad(%rip)        # 7ed8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EmcRKS3_@GLIBCXX_3.4.21>
    232b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002330 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm@plt>:
    2330:	f3 0f 1e fa          	endbr64 
    2334:	f2 ff 25 a5 5b 00 00 	bnd jmpq *0x5ba5(%rip)        # 7ee0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm@GLIBCXX_3.4.21>
    233b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002340 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv@plt>:
    2340:	f3 0f 1e fa          	endbr64 
    2344:	f2 ff 25 9d 5b 00 00 	bnd jmpq *0x5b9d(%rip)        # 7ee8 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv@GLIBCXX_3.4.21>
    234b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002350 <_ZSt19__throw_logic_errorPKc@plt>:
    2350:	f3 0f 1e fa          	endbr64 
    2354:	f2 ff 25 95 5b 00 00 	bnd jmpq *0x5b95(%rip)        # 7ef0 <_ZSt19__throw_logic_errorPKc@GLIBCXX_3.4>
    235b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002360 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv@plt>:
    2360:	f3 0f 1e fa          	endbr64 
    2364:	f2 ff 25 8d 5b 00 00 	bnd jmpq *0x5b8d(%rip)        # 7ef8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv@GLIBCXX_3.4.21>
    236b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002370 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc@plt>:
    2370:	f3 0f 1e fa          	endbr64 
    2374:	f2 ff 25 85 5b 00 00 	bnd jmpq *0x5b85(%rip)        # 7f00 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc@GLIBCXX_3.4.21>
    237b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002380 <__cxa_atexit@plt>:
    2380:	f3 0f 1e fa          	endbr64 
    2384:	f2 ff 25 7d 5b 00 00 	bnd jmpq *0x5b7d(%rip)        # 7f08 <__cxa_atexit@GLIBC_2.2.5>
    238b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002390 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@plt>:
    2390:	f3 0f 1e fa          	endbr64 
    2394:	f2 ff 25 75 5b 00 00 	bnd jmpq *0x5b75(%rip)        # 7f10 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@GLIBCXX_3.4.21>
    239b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000023a0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>:
    23a0:	f3 0f 1e fa          	endbr64 
    23a4:	f2 ff 25 6d 5b 00 00 	bnd jmpq *0x5b6d(%rip)        # 7f18 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@GLIBCXX_3.4>
    23ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000023b0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_@plt>:
    23b0:	f3 0f 1e fa          	endbr64 
    23b4:	f2 ff 25 65 5b 00 00 	bnd jmpq *0x5b65(%rip)        # 7f20 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_@GLIBCXX_3.4.21>
    23bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000023c0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc@plt>:
    23c0:	f3 0f 1e fa          	endbr64 
    23c4:	f2 ff 25 5d 5b 00 00 	bnd jmpq *0x5b5d(%rip)        # 7f28 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc@GLIBCXX_3.4.21>
    23cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000023d0 <_ZNSaIcED1Ev@plt>:
    23d0:	f3 0f 1e fa          	endbr64 
    23d4:	f2 ff 25 55 5b 00 00 	bnd jmpq *0x5b55(%rip)        # 7f30 <_ZNSaIcED1Ev@GLIBCXX_3.4>
    23db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000023e0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv@plt>:
    23e0:	f3 0f 1e fa          	endbr64 
    23e4:	f2 ff 25 4d 5b 00 00 	bnd jmpq *0x5b4d(%rip)        # 7f38 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv@GLIBCXX_3.4.21>
    23eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000023f0 <__stack_chk_fail@plt>:
    23f0:	f3 0f 1e fa          	endbr64 
    23f4:	f2 ff 25 45 5b 00 00 	bnd jmpq *0x5b45(%rip)        # 7f40 <__stack_chk_fail@GLIBC_2.4>
    23fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002400 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@plt>:
    2400:	f3 0f 1e fa          	endbr64 
    2404:	f2 ff 25 3d 5b 00 00 	bnd jmpq *0x5b3d(%rip)        # 7f48 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@GLIBCXX_3.4>
    240b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002410 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@plt>:
    2410:	f3 0f 1e fa          	endbr64 
    2414:	f2 ff 25 35 5b 00 00 	bnd jmpq *0x5b35(%rip)        # 7f50 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@GLIBCXX_3.4.21>
    241b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002420 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_@plt>:
    2420:	f3 0f 1e fa          	endbr64 
    2424:	f2 ff 25 2d 5b 00 00 	bnd jmpq *0x5b2d(%rip)        # 7f58 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_@GLIBCXX_3.4.21>
    242b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002430 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@plt>:
    2430:	f3 0f 1e fa          	endbr64 
    2434:	f2 ff 25 25 5b 00 00 	bnd jmpq *0x5b25(%rip)        # 7f60 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@GLIBCXX_3.4.21>
    243b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002440 <__cxa_rethrow@plt>:
    2440:	f3 0f 1e fa          	endbr64 
    2444:	f2 ff 25 1d 5b 00 00 	bnd jmpq *0x5b1d(%rip)        # 7f68 <__cxa_rethrow@CXXABI_1.3>
    244b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002450 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv@plt>:
    2450:	f3 0f 1e fa          	endbr64 
    2454:	f2 ff 25 15 5b 00 00 	bnd jmpq *0x5b15(%rip)        # 7f70 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv@GLIBCXX_3.4.21>
    245b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002460 <_ZNSt8ios_base4InitC1Ev@plt>:
    2460:	f3 0f 1e fa          	endbr64 
    2464:	f2 ff 25 0d 5b 00 00 	bnd jmpq *0x5b0d(%rip)        # 7f78 <_ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4>
    246b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002470 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmRKS4_@plt>:
    2470:	f3 0f 1e fa          	endbr64 
    2474:	f2 ff 25 05 5b 00 00 	bnd jmpq *0x5b05(%rip)        # 7f80 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmRKS4_@GLIBCXX_3.4.21>
    247b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002480 <__cxa_end_catch@plt>:
    2480:	f3 0f 1e fa          	endbr64 
    2484:	f2 ff 25 fd 5a 00 00 	bnd jmpq *0x5afd(%rip)        # 7f88 <__cxa_end_catch@CXXABI_1.3>
    248b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002490 <_Unwind_Resume@plt>:
    2490:	f3 0f 1e fa          	endbr64 
    2494:	f2 ff 25 f5 5a 00 00 	bnd jmpq *0x5af5(%rip)        # 7f90 <_Unwind_Resume@GCC_3.0>
    249b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000024a0 <_ZNSaIcEC1Ev@plt>:
    24a0:	f3 0f 1e fa          	endbr64 
    24a4:	f2 ff 25 ed 5a 00 00 	bnd jmpq *0x5aed(%rip)        # 7f98 <_ZNSaIcEC1Ev@GLIBCXX_3.4>
    24ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000024b0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>:
    24b0:	f3 0f 1e fa          	endbr64 
    24b4:	f2 ff 25 e5 5a 00 00 	bnd jmpq *0x5ae5(%rip)        # 7fa0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@GLIBCXX_3.4.21>
    24bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000024c0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc@plt>:
    24c0:	f3 0f 1e fa          	endbr64 
    24c4:	f2 ff 25 dd 5a 00 00 	bnd jmpq *0x5add(%rip)        # 7fa8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc@GLIBCXX_3.4.21>
    24cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000024d0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_@plt>:
    24d0:	f3 0f 1e fa          	endbr64 
    24d4:	f2 ff 25 d5 5a 00 00 	bnd jmpq *0x5ad5(%rip)        # 7fb0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_@GLIBCXX_3.4.21>
    24db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000024e0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm@plt>:
    24e0:	f3 0f 1e fa          	endbr64 
    24e4:	f2 ff 25 cd 5a 00 00 	bnd jmpq *0x5acd(%rip)        # 7fb8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm@GLIBCXX_3.4.21>
    24eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000024f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmmc@plt>:
    24f0:	f3 0f 1e fa          	endbr64 
    24f4:	f2 ff 25 c5 5a 00 00 	bnd jmpq *0x5ac5(%rip)        # 7fc0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmmc@GLIBCXX_3.4.21>
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
    2513:	4c 8d 05 f6 2c 00 00 	lea    0x2cf6(%rip),%r8        # 5210 <__libc_csu_fini>
    251a:	48 8d 0d 7f 2c 00 00 	lea    0x2c7f(%rip),%rcx        # 51a0 <__libc_csu_init>
    2521:	48 8d 3d 44 08 00 00 	lea    0x844(%rip),%rdi        # 2d6c <main>
    2528:	ff 15 b2 5a 00 00    	callq  *0x5ab2(%rip)        # 7fe0 <__libc_start_main@GLIBC_2.2.5>
    252e:	f4                   	hlt    
    252f:	90                   	nop

0000000000002530 <deregister_tm_clones>:
    2530:	48 8d 3d e1 5a 00 00 	lea    0x5ae1(%rip),%rdi        # 8018 <__TMC_END__>
    2537:	48 8d 05 da 5a 00 00 	lea    0x5ada(%rip),%rax        # 8018 <__TMC_END__>
    253e:	48 39 f8             	cmp    %rdi,%rax
    2541:	74 15                	je     2558 <deregister_tm_clones+0x28>
    2543:	48 8b 05 8e 5a 00 00 	mov    0x5a8e(%rip),%rax        # 7fd8 <_ITM_deregisterTMCloneTable>
    254a:	48 85 c0             	test   %rax,%rax
    254d:	74 09                	je     2558 <deregister_tm_clones+0x28>
    254f:	ff e0                	jmpq   *%rax
    2551:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2558:	c3                   	retq   
    2559:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000002560 <register_tm_clones>:
    2560:	48 8d 3d b1 5a 00 00 	lea    0x5ab1(%rip),%rdi        # 8018 <__TMC_END__>
    2567:	48 8d 35 aa 5a 00 00 	lea    0x5aaa(%rip),%rsi        # 8018 <__TMC_END__>
    256e:	48 29 fe             	sub    %rdi,%rsi
    2571:	48 89 f0             	mov    %rsi,%rax
    2574:	48 c1 ee 3f          	shr    $0x3f,%rsi
    2578:	48 c1 f8 03          	sar    $0x3,%rax
    257c:	48 01 c6             	add    %rax,%rsi
    257f:	48 d1 fe             	sar    %rsi
    2582:	74 14                	je     2598 <register_tm_clones+0x38>
    2584:	48 8b 05 65 5a 00 00 	mov    0x5a65(%rip),%rax        # 7ff0 <_ITM_registerTMCloneTable>
    258b:	48 85 c0             	test   %rax,%rax
    258e:	74 08                	je     2598 <register_tm_clones+0x38>
    2590:	ff e0                	jmpq   *%rax
    2592:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    2598:	c3                   	retq   
    2599:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000025a0 <__do_global_dtors_aux>:
    25a0:	f3 0f 1e fa          	endbr64 
    25a4:	80 3d a5 5b 00 00 00 	cmpb   $0x0,0x5ba5(%rip)        # 8150 <completed.8060>
    25ab:	75 2b                	jne    25d8 <__do_global_dtors_aux+0x38>
    25ad:	55                   	push   %rbp
    25ae:	48 83 3d 12 5a 00 00 	cmpq   $0x0,0x5a12(%rip)        # 7fc8 <__cxa_finalize@GLIBC_2.2.5>
    25b5:	00 
    25b6:	48 89 e5             	mov    %rsp,%rbp
    25b9:	74 0c                	je     25c7 <__do_global_dtors_aux+0x27>
    25bb:	48 8b 3d 46 5a 00 00 	mov    0x5a46(%rip),%rdi        # 8008 <__dso_handle>
    25c2:	e8 c9 fc ff ff       	callq  2290 <__cxa_finalize@plt>
    25c7:	e8 64 ff ff ff       	callq  2530 <deregister_tm_clones>
    25cc:	c6 05 7d 5b 00 00 01 	movb   $0x1,0x5b7d(%rip)        # 8150 <completed.8060>
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
    2630:	c5 fb 10 05 10 3a 00 	vmovsd 0x3a10(%rip),%xmm0        # 6048 <_ZStL19piecewise_construct+0x40>
    2637:	00 
    2638:	c5 fb 11 85 68 ff ff 	vmovsd %xmm0,-0x98(%rbp)
    263f:	ff 
  std::size_t operations = state.operations;
    2640:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
    2647:	48 8b 00             	mov    (%rax),%rax
    264a:	48 89 85 70 ff ff ff 	mov    %rax,-0x90(%rbp)
  std::int32_t value1 = state.value1[0];
    2651:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
    2658:	8b 40 08             	mov    0x8(%rax),%eax
    265b:	89 85 40 ff ff ff    	mov    %eax,-0xc0(%rbp)
  std::int32_t value2 = state.value2[0];
    2661:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
    2668:	8b 40 18             	mov    0x18(%rax),%eax
    266b:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%rbp)
  std::size_t iterator = 0;
    2671:	48 c7 85 60 ff ff ff 	movq   $0x0,-0xa0(%rbp)
    2678:	00 00 00 00 
  
  auto start = std::chrono::system_clock::now();
    267c:	e8 2f fc ff ff       	callq  22b0 <_ZNSt6chrono3_V212system_clock3nowEv@plt>
    2681:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  std::uint64_t tact_start = rdtsc();
    2688:	e8 5c ff ff ff       	callq  25e9 <_Z5rdtscv>
    268d:	48 89 85 78 ff ff ff 	mov    %rax,-0x88(%rbp)
  
  for (;iterator < operations; iterator++)
    2694:	48 8b 85 60 ff ff ff 	mov    -0xa0(%rbp),%rax
    269b:	48 3b 85 70 ff ff ff 	cmp    -0x90(%rbp),%rax
    26a2:	73 1c                	jae    26c0 <_ZL10simple_mulR9Mul_state+0xb5>
  	value1 *= value2; // зависимые операции
    26a4:	8b 85 40 ff ff ff    	mov    -0xc0(%rbp),%eax
    26aa:	0f af 85 44 ff ff ff 	imul   -0xbc(%rbp),%eax
    26b1:	89 85 40 ff ff ff    	mov    %eax,-0xc0(%rbp)
  for (;iterator < operations; iterator++)
    26b7:	48 ff 85 60 ff ff ff 	incq   -0xa0(%rbp)
    26be:	eb d4                	jmp    2694 <_ZL10simple_mulR9Mul_state+0x89>
  	
  std::uint64_t tact_end = rdtsc();
    26c0:	e8 24 ff ff ff       	callq  25e9 <_Z5rdtscv>
    26c5:	48 89 45 80          	mov    %rax,-0x80(%rbp)
  auto end = std::chrono::system_clock::now();
    26c9:	e8 e2 fb ff ff       	callq  22b0 <_ZNSt6chrono3_V212system_clock3nowEv@plt>
    26ce:	48 89 85 50 ff ff ff 	mov    %rax,-0xb0(%rbp)
  
  std::chrono::duration<double> duration = end - start;
    26d5:	48 8d 95 48 ff ff ff 	lea    -0xb8(%rbp),%rdx
    26dc:	48 8d 85 50 ff ff ff 	lea    -0xb0(%rbp),%rax
    26e3:	48 89 d6             	mov    %rdx,%rsi
    26e6:	48 89 c7             	mov    %rax,%rdi
    26e9:	e8 af 09 00 00       	callq  309d <_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE>
    26ee:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
    26f2:	48 8d 55 b0          	lea    -0x50(%rbp),%rdx
    26f6:	48 8d 85 58 ff ff ff 	lea    -0xa8(%rbp),%rax
    26fd:	48 89 d6             	mov    %rdx,%rsi
    2700:	48 89 c7             	mov    %rax,%rdi
    2703:	e8 28 09 00 00       	callq  3030 <_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE>
  double secs = duration.count();
    2708:	48 8d 85 58 ff ff ff 	lea    -0xa8(%rbp),%rax
    270f:	48 89 c7             	mov    %rax,%rdi
    2712:	e8 99 0a 00 00       	callq  31b0 <_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv>
    2717:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
    271c:	48 89 45 88          	mov    %rax,-0x78(%rbp)
  auto tacts = tact_end - tact_start;
    2720:	48 8b 45 80          	mov    -0x80(%rbp),%rax
    2724:	48 2b 85 78 ff ff ff 	sub    -0x88(%rbp),%rax
    272b:	48 89 45 90          	mov    %rax,-0x70(%rbp)
  double IPC = operations*instructions_per_operation/tacts;
    272f:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
    2736:	48 85 c0             	test   %rax,%rax
    2739:	78 07                	js     2742 <_ZL10simple_mulR9Mul_state+0x137>
    273b:	c4 e1 fb 2a c0       	vcvtsi2sd %rax,%xmm0,%xmm0
    2740:	eb 15                	jmp    2757 <_ZL10simple_mulR9Mul_state+0x14c>
    2742:	48 89 c2             	mov    %rax,%rdx
    2745:	48 d1 ea             	shr    %rdx
    2748:	83 e0 01             	and    $0x1,%eax
    274b:	48 09 c2             	or     %rax,%rdx
    274e:	c4 e1 fb 2a c2       	vcvtsi2sd %rdx,%xmm0,%xmm0
    2753:	c5 fb 58 c0          	vaddsd %xmm0,%xmm0,%xmm0
    2757:	c5 fb 59 8d 68 ff ff 	vmulsd -0x98(%rbp),%xmm0,%xmm1
    275e:	ff 
    275f:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    2763:	48 85 c0             	test   %rax,%rax
    2766:	78 07                	js     276f <_ZL10simple_mulR9Mul_state+0x164>
    2768:	c4 e1 fb 2a c0       	vcvtsi2sd %rax,%xmm0,%xmm0
    276d:	eb 15                	jmp    2784 <_ZL10simple_mulR9Mul_state+0x179>
    276f:	48 89 c2             	mov    %rax,%rdx
    2772:	48 d1 ea             	shr    %rdx
    2775:	83 e0 01             	and    $0x1,%eax
    2778:	48 09 c2             	or     %rax,%rdx
    277b:	c4 e1 fb 2a c2       	vcvtsi2sd %rdx,%xmm0,%xmm0
    2780:	c5 fb 58 c0          	vaddsd %xmm0,%xmm0,%xmm0
    2784:	c5 f3 5e c0          	vdivsd %xmm0,%xmm1,%xmm0
    2788:	c5 fb 11 45 98       	vmovsd %xmm0,-0x68(%rbp)
  double IPS = IPC*(tacts/(secs*1E9));
    278d:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    2791:	48 85 c0             	test   %rax,%rax
    2794:	78 07                	js     279d <_ZL10simple_mulR9Mul_state+0x192>
    2796:	c4 e1 fb 2a c0       	vcvtsi2sd %rax,%xmm0,%xmm0
    279b:	eb 15                	jmp    27b2 <_ZL10simple_mulR9Mul_state+0x1a7>
    279d:	48 89 c2             	mov    %rax,%rdx
    27a0:	48 d1 ea             	shr    %rdx
    27a3:	83 e0 01             	and    $0x1,%eax
    27a6:	48 09 c2             	or     %rax,%rdx
    27a9:	c4 e1 fb 2a c2       	vcvtsi2sd %rdx,%xmm0,%xmm0
    27ae:	c5 fb 58 c0          	vaddsd %xmm0,%xmm0,%xmm0
    27b2:	c5 fb 10 55 88       	vmovsd -0x78(%rbp),%xmm2
    27b7:	c5 fb 10 0d 91 38 00 	vmovsd 0x3891(%rip),%xmm1        # 6050 <_ZStL19piecewise_construct+0x48>
    27be:	00 
    27bf:	c5 eb 59 c9          	vmulsd %xmm1,%xmm2,%xmm1
    27c3:	c5 fb 5e c1          	vdivsd %xmm1,%xmm0,%xmm0
    27c7:	c5 fb 10 4d 98       	vmovsd -0x68(%rbp),%xmm1
    27cc:	c5 f3 59 c0          	vmulsd %xmm0,%xmm1,%xmm0
    27d0:	c5 fb 11 45 a0       	vmovsd %xmm0,-0x60(%rbp)
  double pace = static_cast<double>(operations)/tacts;
    27d5:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
    27dc:	48 85 c0             	test   %rax,%rax
    27df:	78 07                	js     27e8 <_ZL10simple_mulR9Mul_state+0x1dd>
    27e1:	c4 e1 fb 2a c0       	vcvtsi2sd %rax,%xmm0,%xmm0
    27e6:	eb 15                	jmp    27fd <_ZL10simple_mulR9Mul_state+0x1f2>
    27e8:	48 89 c2             	mov    %rax,%rdx
    27eb:	48 d1 ea             	shr    %rdx
    27ee:	83 e0 01             	and    $0x1,%eax
    27f1:	48 09 c2             	or     %rax,%rdx
    27f4:	c4 e1 fb 2a c2       	vcvtsi2sd %rdx,%xmm0,%xmm0
    27f9:	c5 fb 58 c0          	vaddsd %xmm0,%xmm0,%xmm0
    27fd:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    2801:	48 85 c0             	test   %rax,%rax
    2804:	78 07                	js     280d <_ZL10simple_mulR9Mul_state+0x202>
    2806:	c4 e1 f3 2a c8       	vcvtsi2sd %rax,%xmm1,%xmm1
    280b:	eb 15                	jmp    2822 <_ZL10simple_mulR9Mul_state+0x217>
    280d:	48 89 c2             	mov    %rax,%rdx
    2810:	48 d1 ea             	shr    %rdx
    2813:	83 e0 01             	and    $0x1,%eax
    2816:	48 09 c2             	or     %rax,%rdx
    2819:	c4 e1 f3 2a ca       	vcvtsi2sd %rdx,%xmm1,%xmm1
    281e:	c5 f3 58 c9          	vaddsd %xmm1,%xmm1,%xmm1
    2822:	c5 fb 5e c1          	vdivsd %xmm1,%xmm0,%xmm0
    2826:	c5 fb 11 45 a8       	vmovsd %xmm0,-0x58(%rbp)
  Line_state line_state {operations, secs, operations/(secs*1E9), tacts, tacts/(secs*1E9), pace, IPC, IPS, value1};
    282b:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
    2832:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
    2836:	c5 fb 10 45 88       	vmovsd -0x78(%rbp),%xmm0
    283b:	c5 fb 11 45 b8       	vmovsd %xmm0,-0x48(%rbp)
    2840:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
    2847:	48 85 c0             	test   %rax,%rax
    284a:	78 07                	js     2853 <_ZL10simple_mulR9Mul_state+0x248>
    284c:	c4 e1 fb 2a c0       	vcvtsi2sd %rax,%xmm0,%xmm0
    2851:	eb 15                	jmp    2868 <_ZL10simple_mulR9Mul_state+0x25d>
    2853:	48 89 c2             	mov    %rax,%rdx
    2856:	48 d1 ea             	shr    %rdx
    2859:	83 e0 01             	and    $0x1,%eax
    285c:	48 09 c2             	or     %rax,%rdx
    285f:	c4 e1 fb 2a c2       	vcvtsi2sd %rdx,%xmm0,%xmm0
    2864:	c5 fb 58 c0          	vaddsd %xmm0,%xmm0,%xmm0
    2868:	c5 fb 10 55 88       	vmovsd -0x78(%rbp),%xmm2
    286d:	c5 fb 10 0d db 37 00 	vmovsd 0x37db(%rip),%xmm1        # 6050 <_ZStL19piecewise_construct+0x48>
    2874:	00 
    2875:	c5 eb 59 c9          	vmulsd %xmm1,%xmm2,%xmm1
    2879:	c5 fb 5e c1          	vdivsd %xmm1,%xmm0,%xmm0
    287d:	c5 fb 11 45 c0       	vmovsd %xmm0,-0x40(%rbp)
    2882:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    2886:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    288a:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    288e:	48 85 c0             	test   %rax,%rax
    2891:	78 07                	js     289a <_ZL10simple_mulR9Mul_state+0x28f>
    2893:	c4 e1 fb 2a c0       	vcvtsi2sd %rax,%xmm0,%xmm0
    2898:	eb 15                	jmp    28af <_ZL10simple_mulR9Mul_state+0x2a4>
    289a:	48 89 c2             	mov    %rax,%rdx
    289d:	48 d1 ea             	shr    %rdx
    28a0:	83 e0 01             	and    $0x1,%eax
    28a3:	48 09 c2             	or     %rax,%rdx
    28a6:	c4 e1 fb 2a c2       	vcvtsi2sd %rdx,%xmm0,%xmm0
    28ab:	c5 fb 58 c0          	vaddsd %xmm0,%xmm0,%xmm0
    28af:	c5 fb 10 55 88       	vmovsd -0x78(%rbp),%xmm2
    28b4:	c5 fb 10 0d 94 37 00 	vmovsd 0x3794(%rip),%xmm1        # 6050 <_ZStL19piecewise_construct+0x48>
    28bb:	00 
    28bc:	c5 eb 59 c9          	vmulsd %xmm1,%xmm2,%xmm1
    28c0:	c5 fb 5e c1          	vdivsd %xmm1,%xmm0,%xmm0
    28c4:	c5 fb 11 45 d0       	vmovsd %xmm0,-0x30(%rbp)
    28c9:	c5 fb 10 45 a8       	vmovsd -0x58(%rbp),%xmm0
    28ce:	c5 fb 11 45 d8       	vmovsd %xmm0,-0x28(%rbp)
    28d3:	c5 fb 10 45 98       	vmovsd -0x68(%rbp),%xmm0
    28d8:	c5 fb 11 45 e0       	vmovsd %xmm0,-0x20(%rbp)
    28dd:	c5 fb 10 45 a0       	vmovsd -0x60(%rbp),%xmm0
    28e2:	c5 fb 11 45 e8       	vmovsd %xmm0,-0x18(%rbp)
    28e7:	8b 85 40 ff ff ff    	mov    -0xc0(%rbp),%eax
    28ed:	89 45 f0             	mov    %eax,-0x10(%rbp)
  std::cout << line_state;
    28f0:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
    28f4:	48 89 c6             	mov    %rax,%rsi
    28f7:	48 8d 3d 42 57 00 00 	lea    0x5742(%rip),%rdi        # 8040 <_ZSt4cout@@GLIBCXX_3.4>
    28fe:	e8 f5 18 00 00       	callq  41f8 <_ZN3hse8parallel4lab1lsERSoRKNS1_10Line_stateE>
  
}
    2903:	90                   	nop
    2904:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2908:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    290f:	00 00 
    2911:	74 05                	je     2918 <_ZL10simple_mulR9Mul_state+0x30d>
    2913:	e8 d8 fa ff ff       	callq  23f0 <__stack_chk_fail@plt>
    2918:	c9                   	leaveq 
    2919:	c3                   	retq   

000000000000291a <_ZL7sse_mulR9Mul_state>:

static void sse_mul(Mul_state& state) {
    291a:	f3 0f 1e fa          	endbr64 
    291e:	55                   	push   %rbp
    291f:	48 89 e5             	mov    %rsp,%rbp
    2922:	48 81 ec 30 01 00 00 	sub    $0x130,%rsp
    2929:	48 89 bd d8 fe ff ff 	mov    %rdi,-0x128(%rbp)
    2930:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2937:	00 00 
    2939:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    293d:	31 c0                	xor    %eax,%eax
  double instructions_per_operation = 14; // from asm.asm
    293f:	c5 fb 10 05 11 37 00 	vmovsd 0x3711(%rip),%xmm0        # 6058 <_ZStL19piecewise_construct+0x50>
    2946:	00 
    2947:	c5 fb 11 85 28 ff ff 	vmovsd %xmm0,-0xd8(%rbp)
    294e:	ff 
  std::size_t operations = state.operations/4;
    294f:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
    2956:	48 8b 00             	mov    (%rax),%rax
    2959:	48 c1 e8 02          	shr    $0x2,%rax
    295d:	48 89 85 30 ff ff ff 	mov    %rax,-0xd0(%rbp)
  __m128i val1 = _mm_set_epi32 (state.value1[0], state.value1[1], state.value1[2], state.value1[3]);
    2964:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
    296b:	8b 40 14             	mov    0x14(%rax),%eax
    296e:	48 8b 95 d8 fe ff ff 	mov    -0x128(%rbp),%rdx
    2975:	8b 52 10             	mov    0x10(%rdx),%edx
    2978:	48 8b 8d d8 fe ff ff 	mov    -0x128(%rbp),%rcx
    297f:	8b 49 0c             	mov    0xc(%rcx),%ecx
    2982:	48 8b b5 d8 fe ff ff 	mov    -0x128(%rbp),%rsi
    2989:	8b 76 08             	mov    0x8(%rsi),%esi
    298c:	89 b5 f8 fe ff ff    	mov    %esi,-0x108(%rbp)
    2992:	89 8d fc fe ff ff    	mov    %ecx,-0x104(%rbp)
    2998:	89 95 00 ff ff ff    	mov    %edx,-0x100(%rbp)
    299e:	89 85 04 ff ff ff    	mov    %eax,-0xfc(%rbp)
}

extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_set_epi32 (int __q3, int __q2, int __q1, int __q0)
{
  return __extension__ (__m128i)(__v4si){ __q0, __q1, __q2, __q3 };
    29a4:	8b 85 f8 fe ff ff    	mov    -0x108(%rbp),%eax
    29aa:	8b 95 fc fe ff ff    	mov    -0x104(%rbp),%edx
    29b0:	c5 f9 6e da          	vmovd  %edx,%xmm3
    29b4:	c4 e3 61 22 c8 01    	vpinsrd $0x1,%eax,%xmm3,%xmm1
    29ba:	8b 85 00 ff ff ff    	mov    -0x100(%rbp),%eax
    29c0:	8b 95 04 ff ff ff    	mov    -0xfc(%rbp),%edx
    29c6:	c5 f9 6e e2          	vmovd  %edx,%xmm4
    29ca:	c4 e3 59 22 c0 01    	vpinsrd $0x1,%eax,%xmm4,%xmm0
    29d0:	c5 f9 6c c1          	vpunpcklqdq %xmm1,%xmm0,%xmm0
    29d4:	c5 f8 29 85 70 ff ff 	vmovaps %xmm0,-0x90(%rbp)
    29db:	ff 
  __m128i val2 = _mm_set_epi32 (state.value2[0], state.value2[1], state.value2[2], state.value2[3]);
    29dc:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
    29e3:	8b 40 24             	mov    0x24(%rax),%eax
    29e6:	48 8b 95 d8 fe ff ff 	mov    -0x128(%rbp),%rdx
    29ed:	8b 52 20             	mov    0x20(%rdx),%edx
    29f0:	48 8b 8d d8 fe ff ff 	mov    -0x128(%rbp),%rcx
    29f7:	8b 49 1c             	mov    0x1c(%rcx),%ecx
    29fa:	48 8b b5 d8 fe ff ff 	mov    -0x128(%rbp),%rsi
    2a01:	8b 76 18             	mov    0x18(%rsi),%esi
    2a04:	89 b5 e8 fe ff ff    	mov    %esi,-0x118(%rbp)
    2a0a:	89 8d ec fe ff ff    	mov    %ecx,-0x114(%rbp)
    2a10:	89 95 f0 fe ff ff    	mov    %edx,-0x110(%rbp)
    2a16:	89 85 f4 fe ff ff    	mov    %eax,-0x10c(%rbp)
    2a1c:	8b 85 e8 fe ff ff    	mov    -0x118(%rbp),%eax
    2a22:	8b 95 ec fe ff ff    	mov    -0x114(%rbp),%edx
    2a28:	c5 f9 6e ea          	vmovd  %edx,%xmm5
    2a2c:	c4 e3 51 22 c8 01    	vpinsrd $0x1,%eax,%xmm5,%xmm1
    2a32:	8b 85 f0 fe ff ff    	mov    -0x110(%rbp),%eax
    2a38:	8b 95 f4 fe ff ff    	mov    -0x10c(%rbp),%edx
    2a3e:	c5 f9 6e f2          	vmovd  %edx,%xmm6
    2a42:	c4 e3 49 22 c0 01    	vpinsrd $0x1,%eax,%xmm6,%xmm0
    2a48:	c5 f9 6c c1          	vpunpcklqdq %xmm1,%xmm0,%xmm0
    2a4c:	c5 f8 29 45 80       	vmovaps %xmm0,-0x80(%rbp)
  
  std::size_t iterator = 0;
    2a51:	48 c7 85 20 ff ff ff 	movq   $0x0,-0xe0(%rbp)
    2a58:	00 00 00 00 
  
  auto start = std::chrono::system_clock::now();
    2a5c:	e8 4f f8 ff ff       	callq  22b0 <_ZNSt6chrono3_V212system_clock3nowEv@plt>
    2a61:	48 89 85 08 ff ff ff 	mov    %rax,-0xf8(%rbp)
  std::uint64_t tact_start = rdtsc();
    2a68:	e8 7c fb ff ff       	callq  25e9 <_Z5rdtscv>
    2a6d:	48 89 85 38 ff ff ff 	mov    %rax,-0xc8(%rbp)
  
  for (;iterator < operations; iterator++)
    2a74:	48 8b 85 20 ff ff ff 	mov    -0xe0(%rbp),%rax
    2a7b:	48 3b 85 30 ff ff ff 	cmp    -0xd0(%rbp),%rax
    2a82:	73 38                	jae    2abc <_ZL7sse_mulR9Mul_state+0x1a2>
    2a84:	c5 f9 6f 85 70 ff ff 	vmovdqa -0x90(%rbp),%xmm0
    2a8b:	ff 
    2a8c:	c5 f8 29 45 90       	vmovaps %xmm0,-0x70(%rbp)
    2a91:	c5 f9 6f 45 80       	vmovdqa -0x80(%rbp),%xmm0
    2a96:	c5 f8 29 45 a0       	vmovaps %xmm0,-0x60(%rbp)
/* Packed integer 32-bit multiplication with truncation of upper
   halves of results.  */
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_mullo_epi32 (__m128i __X, __m128i __Y)
{
  return (__m128i) ((__v4su)__X * (__v4su)__Y);
    2a9b:	c5 f9 6f 4d 90       	vmovdqa -0x70(%rbp),%xmm1
    2aa0:	c5 f9 6f 45 a0       	vmovdqa -0x60(%rbp),%xmm0
    2aa5:	c4 e2 71 40 c0       	vpmulld %xmm0,%xmm1,%xmm0
    2aaa:	90                   	nop
  	val1 = _mm_mullo_epi32(val1, val2); 
    2aab:	c5 f8 29 85 70 ff ff 	vmovaps %xmm0,-0x90(%rbp)
    2ab2:	ff 
  for (;iterator < operations; iterator++)
    2ab3:	48 ff 85 20 ff ff ff 	incq   -0xe0(%rbp)
    2aba:	eb b8                	jmp    2a74 <_ZL7sse_mulR9Mul_state+0x15a>
  
  std::uint64_t tact_end = rdtsc();
    2abc:	e8 28 fb ff ff       	callq  25e9 <_Z5rdtscv>
    2ac1:	48 89 85 40 ff ff ff 	mov    %rax,-0xc0(%rbp)
  auto end = std::chrono::system_clock::now();
    2ac8:	e8 e3 f7 ff ff       	callq  22b0 <_ZNSt6chrono3_V212system_clock3nowEv@plt>
    2acd:	48 89 85 10 ff ff ff 	mov    %rax,-0xf0(%rbp)
  operations *= 4;
    2ad4:	48 c1 a5 30 ff ff ff 	shlq   $0x2,-0xd0(%rbp)
    2adb:	02 
  std::int32_t res = _mm_extract_epi32(val1, 0);//*_mm_extract_epi32(val1, 1)*_mm_extract_epi32(val1, 2)*_mm_extract_epi32(val1, 3);
    2adc:	c5 f9 6f 85 70 ff ff 	vmovdqa -0x90(%rbp),%xmm0
    2ae3:	ff 
    2ae4:	c5 f9 7e c0          	vmovd  %xmm0,%eax
    2ae8:	89 85 e4 fe ff ff    	mov    %eax,-0x11c(%rbp)
  std::chrono::duration<double> duration = end - start;
    2aee:	48 8d 95 08 ff ff ff 	lea    -0xf8(%rbp),%rdx
    2af5:	48 8d 85 10 ff ff ff 	lea    -0xf0(%rbp),%rax
    2afc:	48 89 d6             	mov    %rdx,%rsi
    2aff:	48 89 c7             	mov    %rax,%rdi
    2b02:	e8 96 05 00 00       	callq  309d <_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE>
    2b07:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
    2b0b:	48 8d 55 b0          	lea    -0x50(%rbp),%rdx
    2b0f:	48 8d 85 18 ff ff ff 	lea    -0xe8(%rbp),%rax
    2b16:	48 89 d6             	mov    %rdx,%rsi
    2b19:	48 89 c7             	mov    %rax,%rdi
    2b1c:	e8 0f 05 00 00       	callq  3030 <_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE>
  double secs = duration.count();
    2b21:	48 8d 85 18 ff ff ff 	lea    -0xe8(%rbp),%rax
    2b28:	48 89 c7             	mov    %rax,%rdi
    2b2b:	e8 80 06 00 00       	callq  31b0 <_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv>
    2b30:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
    2b35:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  auto tacts = tact_end - tact_start;
    2b3c:	48 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%rax
    2b43:	48 2b 85 38 ff ff ff 	sub    -0xc8(%rbp),%rax
    2b4a:	48 89 85 50 ff ff ff 	mov    %rax,-0xb0(%rbp)
  double IPC = operations*instructions_per_operation/tacts;
    2b51:	48 8b 85 30 ff ff ff 	mov    -0xd0(%rbp),%rax
    2b58:	48 85 c0             	test   %rax,%rax
    2b5b:	78 07                	js     2b64 <_ZL7sse_mulR9Mul_state+0x24a>
    2b5d:	c4 e1 fb 2a c0       	vcvtsi2sd %rax,%xmm0,%xmm0
    2b62:	eb 15                	jmp    2b79 <_ZL7sse_mulR9Mul_state+0x25f>
    2b64:	48 89 c2             	mov    %rax,%rdx
    2b67:	48 d1 ea             	shr    %rdx
    2b6a:	83 e0 01             	and    $0x1,%eax
    2b6d:	48 09 c2             	or     %rax,%rdx
    2b70:	c4 e1 fb 2a c2       	vcvtsi2sd %rdx,%xmm0,%xmm0
    2b75:	c5 fb 58 c0          	vaddsd %xmm0,%xmm0,%xmm0
    2b79:	c5 fb 59 8d 28 ff ff 	vmulsd -0xd8(%rbp),%xmm0,%xmm1
    2b80:	ff 
    2b81:	48 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%rax
    2b88:	48 85 c0             	test   %rax,%rax
    2b8b:	78 07                	js     2b94 <_ZL7sse_mulR9Mul_state+0x27a>
    2b8d:	c4 e1 fb 2a c0       	vcvtsi2sd %rax,%xmm0,%xmm0
    2b92:	eb 15                	jmp    2ba9 <_ZL7sse_mulR9Mul_state+0x28f>
    2b94:	48 89 c2             	mov    %rax,%rdx
    2b97:	48 d1 ea             	shr    %rdx
    2b9a:	83 e0 01             	and    $0x1,%eax
    2b9d:	48 09 c2             	or     %rax,%rdx
    2ba0:	c4 e1 fb 2a c2       	vcvtsi2sd %rdx,%xmm0,%xmm0
    2ba5:	c5 fb 58 c0          	vaddsd %xmm0,%xmm0,%xmm0
    2ba9:	c5 f3 5e c0          	vdivsd %xmm0,%xmm1,%xmm0
    2bad:	c5 fb 11 85 58 ff ff 	vmovsd %xmm0,-0xa8(%rbp)
    2bb4:	ff 
  double IPS = IPC*(tacts/(secs*1E9));
    2bb5:	48 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%rax
    2bbc:	48 85 c0             	test   %rax,%rax
    2bbf:	78 07                	js     2bc8 <_ZL7sse_mulR9Mul_state+0x2ae>
    2bc1:	c4 e1 fb 2a c0       	vcvtsi2sd %rax,%xmm0,%xmm0
    2bc6:	eb 15                	jmp    2bdd <_ZL7sse_mulR9Mul_state+0x2c3>
    2bc8:	48 89 c2             	mov    %rax,%rdx
    2bcb:	48 d1 ea             	shr    %rdx
    2bce:	83 e0 01             	and    $0x1,%eax
    2bd1:	48 09 c2             	or     %rax,%rdx
    2bd4:	c4 e1 fb 2a c2       	vcvtsi2sd %rdx,%xmm0,%xmm0
    2bd9:	c5 fb 58 c0          	vaddsd %xmm0,%xmm0,%xmm0
    2bdd:	c5 fb 10 95 48 ff ff 	vmovsd -0xb8(%rbp),%xmm2
    2be4:	ff 
    2be5:	c5 fb 10 0d 63 34 00 	vmovsd 0x3463(%rip),%xmm1        # 6050 <_ZStL19piecewise_construct+0x48>
    2bec:	00 
    2bed:	c5 eb 59 c9          	vmulsd %xmm1,%xmm2,%xmm1
    2bf1:	c5 fb 5e c1          	vdivsd %xmm1,%xmm0,%xmm0
    2bf5:	c5 fb 10 8d 58 ff ff 	vmovsd -0xa8(%rbp),%xmm1
    2bfc:	ff 
    2bfd:	c5 f3 59 c0          	vmulsd %xmm0,%xmm1,%xmm0
    2c01:	c5 fb 11 85 60 ff ff 	vmovsd %xmm0,-0xa0(%rbp)
    2c08:	ff 
  double pace = static_cast<double>(operations)/tacts;
    2c09:	48 8b 85 30 ff ff ff 	mov    -0xd0(%rbp),%rax
    2c10:	48 85 c0             	test   %rax,%rax
    2c13:	78 07                	js     2c1c <_ZL7sse_mulR9Mul_state+0x302>
    2c15:	c4 e1 fb 2a c0       	vcvtsi2sd %rax,%xmm0,%xmm0
    2c1a:	eb 15                	jmp    2c31 <_ZL7sse_mulR9Mul_state+0x317>
    2c1c:	48 89 c2             	mov    %rax,%rdx
    2c1f:	48 d1 ea             	shr    %rdx
    2c22:	83 e0 01             	and    $0x1,%eax
    2c25:	48 09 c2             	or     %rax,%rdx
    2c28:	c4 e1 fb 2a c2       	vcvtsi2sd %rdx,%xmm0,%xmm0
    2c2d:	c5 fb 58 c0          	vaddsd %xmm0,%xmm0,%xmm0
    2c31:	48 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%rax
    2c38:	48 85 c0             	test   %rax,%rax
    2c3b:	78 07                	js     2c44 <_ZL7sse_mulR9Mul_state+0x32a>
    2c3d:	c4 e1 f3 2a c8       	vcvtsi2sd %rax,%xmm1,%xmm1
    2c42:	eb 15                	jmp    2c59 <_ZL7sse_mulR9Mul_state+0x33f>
    2c44:	48 89 c2             	mov    %rax,%rdx
    2c47:	48 d1 ea             	shr    %rdx
    2c4a:	83 e0 01             	and    $0x1,%eax
    2c4d:	48 09 c2             	or     %rax,%rdx
    2c50:	c4 e1 f3 2a ca       	vcvtsi2sd %rdx,%xmm1,%xmm1
    2c55:	c5 f3 58 c9          	vaddsd %xmm1,%xmm1,%xmm1
    2c59:	c5 fb 5e c1          	vdivsd %xmm1,%xmm0,%xmm0
    2c5d:	c5 fb 11 85 68 ff ff 	vmovsd %xmm0,-0x98(%rbp)
    2c64:	ff 
  Line_state line_state {operations, secs, operations/(secs*1E9), tacts, tacts/(secs*1E9), pace, IPC, IPS, res};
    2c65:	48 8b 85 30 ff ff ff 	mov    -0xd0(%rbp),%rax
    2c6c:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
    2c70:	c5 fb 10 85 48 ff ff 	vmovsd -0xb8(%rbp),%xmm0
    2c77:	ff 
    2c78:	c5 fb 11 45 b8       	vmovsd %xmm0,-0x48(%rbp)
    2c7d:	48 8b 85 30 ff ff ff 	mov    -0xd0(%rbp),%rax
    2c84:	48 85 c0             	test   %rax,%rax
    2c87:	78 07                	js     2c90 <_ZL7sse_mulR9Mul_state+0x376>
    2c89:	c4 e1 fb 2a c0       	vcvtsi2sd %rax,%xmm0,%xmm0
    2c8e:	eb 15                	jmp    2ca5 <_ZL7sse_mulR9Mul_state+0x38b>
    2c90:	48 89 c2             	mov    %rax,%rdx
    2c93:	48 d1 ea             	shr    %rdx
    2c96:	83 e0 01             	and    $0x1,%eax
    2c99:	48 09 c2             	or     %rax,%rdx
    2c9c:	c4 e1 fb 2a c2       	vcvtsi2sd %rdx,%xmm0,%xmm0
    2ca1:	c5 fb 58 c0          	vaddsd %xmm0,%xmm0,%xmm0
    2ca5:	c5 fb 10 95 48 ff ff 	vmovsd -0xb8(%rbp),%xmm2
    2cac:	ff 
    2cad:	c5 fb 10 0d 9b 33 00 	vmovsd 0x339b(%rip),%xmm1        # 6050 <_ZStL19piecewise_construct+0x48>
    2cb4:	00 
    2cb5:	c5 eb 59 c9          	vmulsd %xmm1,%xmm2,%xmm1
    2cb9:	c5 fb 5e c1          	vdivsd %xmm1,%xmm0,%xmm0
    2cbd:	c5 fb 11 45 c0       	vmovsd %xmm0,-0x40(%rbp)
    2cc2:	48 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%rax
    2cc9:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    2ccd:	48 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%rax
    2cd4:	48 85 c0             	test   %rax,%rax
    2cd7:	78 07                	js     2ce0 <_ZL7sse_mulR9Mul_state+0x3c6>
    2cd9:	c4 e1 fb 2a c0       	vcvtsi2sd %rax,%xmm0,%xmm0
    2cde:	eb 15                	jmp    2cf5 <_ZL7sse_mulR9Mul_state+0x3db>
    2ce0:	48 89 c2             	mov    %rax,%rdx
    2ce3:	48 d1 ea             	shr    %rdx
    2ce6:	83 e0 01             	and    $0x1,%eax
    2ce9:	48 09 c2             	or     %rax,%rdx
    2cec:	c4 e1 fb 2a c2       	vcvtsi2sd %rdx,%xmm0,%xmm0
    2cf1:	c5 fb 58 c0          	vaddsd %xmm0,%xmm0,%xmm0
    2cf5:	c5 fb 10 95 48 ff ff 	vmovsd -0xb8(%rbp),%xmm2
    2cfc:	ff 
    2cfd:	c5 fb 10 0d 4b 33 00 	vmovsd 0x334b(%rip),%xmm1        # 6050 <_ZStL19piecewise_construct+0x48>
    2d04:	00 
    2d05:	c5 eb 59 c9          	vmulsd %xmm1,%xmm2,%xmm1
    2d09:	c5 fb 5e c1          	vdivsd %xmm1,%xmm0,%xmm0
    2d0d:	c5 fb 11 45 d0       	vmovsd %xmm0,-0x30(%rbp)
    2d12:	c5 fb 10 85 68 ff ff 	vmovsd -0x98(%rbp),%xmm0
    2d19:	ff 
    2d1a:	c5 fb 11 45 d8       	vmovsd %xmm0,-0x28(%rbp)
    2d1f:	c5 fb 10 85 58 ff ff 	vmovsd -0xa8(%rbp),%xmm0
    2d26:	ff 
    2d27:	c5 fb 11 45 e0       	vmovsd %xmm0,-0x20(%rbp)
    2d2c:	c5 fb 10 85 60 ff ff 	vmovsd -0xa0(%rbp),%xmm0
    2d33:	ff 
    2d34:	c5 fb 11 45 e8       	vmovsd %xmm0,-0x18(%rbp)
    2d39:	8b 85 e4 fe ff ff    	mov    -0x11c(%rbp),%eax
    2d3f:	89 45 f0             	mov    %eax,-0x10(%rbp)
  std::cout << line_state;
    2d42:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
    2d46:	48 89 c6             	mov    %rax,%rsi
    2d49:	48 8d 3d f0 52 00 00 	lea    0x52f0(%rip),%rdi        # 8040 <_ZSt4cout@@GLIBCXX_3.4>
    2d50:	e8 a3 14 00 00       	callq  41f8 <_ZN3hse8parallel4lab1lsERSoRKNS1_10Line_stateE>
  
}
    2d55:	90                   	nop
    2d56:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2d5a:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    2d61:	00 00 
    2d63:	74 05                	je     2d6a <_ZL7sse_mulR9Mul_state+0x450>
    2d65:	e8 86 f6 ff ff       	callq  23f0 <__stack_chk_fail@plt>
    2d6a:	c9                   	leaveq 
    2d6b:	c3                   	retq   

0000000000002d6c <main>:

int main()
{
    2d6c:	f3 0f 1e fa          	endbr64 
    2d70:	55                   	push   %rbp
    2d71:	48 89 e5             	mov    %rsp,%rbp
    2d74:	53                   	push   %rbx
    2d75:	48 83 ec 58          	sub    $0x58,%rsp
    2d79:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2d80:	00 00 
    2d82:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    2d86:	31 c0                	xor    %eax,%eax
	std::size_t max_op = pow(10,8);
    2d88:	48 c7 45 b8 00 e1 f5 	movq   $0x5f5e100,-0x48(%rbp)
    2d8f:	05 
	std::cout << "### SIMPLE MULTIPLICATION\n" << make_header();
    2d90:	48 8d 35 72 32 00 00 	lea    0x3272(%rip),%rsi        # 6009 <_ZStL19piecewise_construct+0x1>
    2d97:	48 8d 3d a2 52 00 00 	lea    0x52a2(%rip),%rdi        # 8040 <_ZSt4cout@@GLIBCXX_3.4>
    2d9e:	e8 fd f5 ff ff       	callq  23a0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    2da3:	48 89 c3             	mov    %rax,%rbx
    2da6:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    2daa:	48 89 c7             	mov    %rax,%rdi
    2dad:	e8 93 08 00 00       	callq  3645 <_ZN3hse8parallel4lab111make_headerB5cxx11Ev>
    2db2:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    2db6:	48 89 c6             	mov    %rax,%rsi
    2db9:	48 89 df             	mov    %rbx,%rdi
    2dbc:	e8 cf f5 ff ff       	callq  2390 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@plt>
    2dc1:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    2dc5:	48 89 c7             	mov    %rax,%rdi
    2dc8:	e8 43 f5 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
	for(std::size_t operations = pow(10,4); operations <= max_op; operations *= 10)
    2dcd:	48 c7 45 a8 10 27 00 	movq   $0x2710,-0x58(%rbp)
    2dd4:	00 
    2dd5:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    2dd9:	48 3b 45 b8          	cmp    -0x48(%rbp),%rax
    2ddd:	77 61                	ja     2e40 <main+0xd4>
	{
		Mul_state state {operations, {5}, {3}};
    2ddf:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
    2de6:	00 
    2de7:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
    2dee:	00 
    2def:	48 c7 45 d0 00 00 00 	movq   $0x0,-0x30(%rbp)
    2df6:	00 
    2df7:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
    2dfe:	00 
    2dff:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
    2e06:	00 
    2e07:	c7 45 c8 05 00 00 00 	movl   $0x5,-0x38(%rbp)
    2e0e:	c7 45 d8 03 00 00 00 	movl   $0x3,-0x28(%rbp)
    2e15:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    2e19:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
		simple_mul(state);
    2e1d:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    2e21:	48 89 c7             	mov    %rax,%rdi
    2e24:	e8 e2 f7 ff ff       	callq  260b <_ZL10simple_mulR9Mul_state>
	for(std::size_t operations = pow(10,4); operations <= max_op; operations *= 10)
    2e29:	48 8b 55 a8          	mov    -0x58(%rbp),%rdx
    2e2d:	48 89 d0             	mov    %rdx,%rax
    2e30:	48 c1 e0 02          	shl    $0x2,%rax
    2e34:	48 01 d0             	add    %rdx,%rax
    2e37:	48 01 c0             	add    %rax,%rax
    2e3a:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
    2e3e:	eb 95                	jmp    2dd5 <main+0x69>
	}
	std::cout << "\n\n";
    2e40:	48 8d 35 dd 31 00 00 	lea    0x31dd(%rip),%rsi        # 6024 <_ZStL19piecewise_construct+0x1c>
    2e47:	48 8d 3d f2 51 00 00 	lea    0x51f2(%rip),%rdi        # 8040 <_ZSt4cout@@GLIBCXX_3.4>
    2e4e:	e8 4d f5 ff ff       	callq  23a0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
	std::cout << "### SSE4.1 MULTIPLICATION\n" << make_header();
    2e53:	48 8d 35 cd 31 00 00 	lea    0x31cd(%rip),%rsi        # 6027 <_ZStL19piecewise_construct+0x1f>
    2e5a:	48 8d 3d df 51 00 00 	lea    0x51df(%rip),%rdi        # 8040 <_ZSt4cout@@GLIBCXX_3.4>
    2e61:	e8 3a f5 ff ff       	callq  23a0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    2e66:	48 89 c3             	mov    %rax,%rbx
    2e69:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    2e6d:	48 89 c7             	mov    %rax,%rdi
    2e70:	e8 d0 07 00 00       	callq  3645 <_ZN3hse8parallel4lab111make_headerB5cxx11Ev>
    2e75:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    2e79:	48 89 c6             	mov    %rax,%rsi
    2e7c:	48 89 df             	mov    %rbx,%rdi
    2e7f:	e8 0c f5 ff ff       	callq  2390 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@plt>
    2e84:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    2e88:	48 89 c7             	mov    %rax,%rdi
    2e8b:	e8 80 f4 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
	for(std::size_t operations = pow(10,4); operations <= max_op; operations *= 10)
    2e90:	48 c7 45 b0 10 27 00 	movq   $0x2710,-0x50(%rbp)
    2e97:	00 
    2e98:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    2e9c:	48 3b 45 b8          	cmp    -0x48(%rbp),%rax
    2ea0:	0f 87 8e 00 00 00    	ja     2f34 <main+0x1c8>
	{
		Mul_state state {operations, {5, 5, 5, 5}, {3, 3, 3, 3}};
    2ea6:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
    2ead:	00 
    2eae:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
    2eb5:	00 
    2eb6:	48 c7 45 d0 00 00 00 	movq   $0x0,-0x30(%rbp)
    2ebd:	00 
    2ebe:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
    2ec5:	00 
    2ec6:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
    2ecd:	00 
    2ece:	c7 45 c8 05 00 00 00 	movl   $0x5,-0x38(%rbp)
    2ed5:	c7 45 cc 05 00 00 00 	movl   $0x5,-0x34(%rbp)
    2edc:	c7 45 d0 05 00 00 00 	movl   $0x5,-0x30(%rbp)
    2ee3:	c7 45 d4 05 00 00 00 	movl   $0x5,-0x2c(%rbp)
    2eea:	c7 45 d8 03 00 00 00 	movl   $0x3,-0x28(%rbp)
    2ef1:	c7 45 dc 03 00 00 00 	movl   $0x3,-0x24(%rbp)
    2ef8:	c7 45 e0 03 00 00 00 	movl   $0x3,-0x20(%rbp)
    2eff:	c7 45 e4 03 00 00 00 	movl   $0x3,-0x1c(%rbp)
    2f06:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    2f0a:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
		sse_mul(state);
    2f0e:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    2f12:	48 89 c7             	mov    %rax,%rdi
    2f15:	e8 00 fa ff ff       	callq  291a <_ZL7sse_mulR9Mul_state>
	for(std::size_t operations = pow(10,4); operations <= max_op; operations *= 10)
    2f1a:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
    2f1e:	48 89 d0             	mov    %rdx,%rax
    2f21:	48 c1 e0 02          	shl    $0x2,%rax
    2f25:	48 01 d0             	add    %rdx,%rax
    2f28:	48 01 c0             	add    %rax,%rax
    2f2b:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
    2f2f:	e9 64 ff ff ff       	jmpq   2e98 <main+0x12c>
	}
	return 0;
    2f34:	b8 00 00 00 00       	mov    $0x0,%eax
}
    2f39:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    2f3d:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    2f44:	00 00 
    2f46:	74 43                	je     2f8b <main+0x21f>
    2f48:	eb 3c                	jmp    2f86 <main+0x21a>
    2f4a:	f3 0f 1e fa          	endbr64 
    2f4e:	48 89 c3             	mov    %rax,%rbx
	std::cout << "### SIMPLE MULTIPLICATION\n" << make_header();
    2f51:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    2f55:	48 89 c7             	mov    %rax,%rdi
    2f58:	e8 b3 f3 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    2f5d:	48 89 d8             	mov    %rbx,%rax
    2f60:	48 89 c7             	mov    %rax,%rdi
    2f63:	e8 28 f5 ff ff       	callq  2490 <_Unwind_Resume@plt>
    2f68:	f3 0f 1e fa          	endbr64 
    2f6c:	48 89 c3             	mov    %rax,%rbx
	std::cout << "### SSE4.1 MULTIPLICATION\n" << make_header();
    2f6f:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    2f73:	48 89 c7             	mov    %rax,%rdi
    2f76:	e8 95 f3 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    2f7b:	48 89 d8             	mov    %rbx,%rax
    2f7e:	48 89 c7             	mov    %rax,%rdi
    2f81:	e8 0a f5 ff ff       	callq  2490 <_Unwind_Resume@plt>
}
    2f86:	e8 65 f4 ff ff       	callq  23f0 <__stack_chk_fail@plt>
    2f8b:	48 83 c4 58          	add    $0x58,%rsp
    2f8f:	5b                   	pop    %rbx
    2f90:	5d                   	pop    %rbp
    2f91:	c3                   	retq   

0000000000002f92 <_Z41__static_initialization_and_destruction_0ii>:
    2f92:	f3 0f 1e fa          	endbr64 
    2f96:	55                   	push   %rbp
    2f97:	48 89 e5             	mov    %rsp,%rbp
    2f9a:	48 83 ec 10          	sub    $0x10,%rsp
    2f9e:	89 7d fc             	mov    %edi,-0x4(%rbp)
    2fa1:	89 75 f8             	mov    %esi,-0x8(%rbp)
    2fa4:	83 7d fc 01          	cmpl   $0x1,-0x4(%rbp)
    2fa8:	75 32                	jne    2fdc <_Z41__static_initialization_and_destruction_0ii+0x4a>
    2faa:	81 7d f8 ff ff 00 00 	cmpl   $0xffff,-0x8(%rbp)
    2fb1:	75 29                	jne    2fdc <_Z41__static_initialization_and_destruction_0ii+0x4a>
  extern wostream wclog;	/// Linked to standard error (buffered)
#endif
  //@}

  // For construction of filebuffers for cout, cin, cerr, clog et. al.
  static ios_base::Init __ioinit;
    2fb3:	48 8d 3d 97 51 00 00 	lea    0x5197(%rip),%rdi        # 8151 <_ZStL8__ioinit>
    2fba:	e8 a1 f4 ff ff       	callq  2460 <_ZNSt8ios_base4InitC1Ev@plt>
    2fbf:	48 8d 15 42 50 00 00 	lea    0x5042(%rip),%rdx        # 8008 <__dso_handle>
    2fc6:	48 8d 35 84 51 00 00 	lea    0x5184(%rip),%rsi        # 8151 <_ZStL8__ioinit>
    2fcd:	48 8b 05 24 50 00 00 	mov    0x5024(%rip),%rax        # 7ff8 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
    2fd4:	48 89 c7             	mov    %rax,%rdi
    2fd7:	e8 a4 f3 ff ff       	callq  2380 <__cxa_atexit@plt>
    2fdc:	90                   	nop
    2fdd:	c9                   	leaveq 
    2fde:	c3                   	retq   

0000000000002fdf <_GLOBAL__sub_I__Z5rdtscv>:
    2fdf:	f3 0f 1e fa          	endbr64 
    2fe3:	55                   	push   %rbp
    2fe4:	48 89 e5             	mov    %rsp,%rbp
    2fe7:	be ff ff 00 00       	mov    $0xffff,%esi
    2fec:	bf 01 00 00 00       	mov    $0x1,%edi
    2ff1:	e8 9c ff ff ff       	callq  2f92 <_Z41__static_initialization_and_destruction_0ii>
    2ff6:	5d                   	pop    %rbp
    2ff7:	c3                   	retq   

0000000000002ff8 <_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv>:
	~duration() = default;
	duration& operator=(const duration&) = default;

	// 20.11.5.2 observer
	constexpr rep
	count() const
    2ff8:	f3 0f 1e fa          	endbr64 
    2ffc:	55                   	push   %rbp
    2ffd:	48 89 e5             	mov    %rsp,%rbp
    3000:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
	{ return __r; }
    3004:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3008:	48 8b 00             	mov    (%rax),%rax
    300b:	5d                   	pop    %rbp
    300c:	c3                   	retq   
    300d:	90                   	nop

000000000000300e <_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_>:
	  constexpr explicit duration(const _Rep2& __rep)
    300e:	f3 0f 1e fa          	endbr64 
    3012:	55                   	push   %rbp
    3013:	48 89 e5             	mov    %rsp,%rbp
    3016:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    301a:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
	  : __r(static_cast<rep>(__rep)) { }
    301e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3022:	48 8b 10             	mov    (%rax),%rdx
    3025:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3029:	48 89 10             	mov    %rdx,(%rax)
    302c:	90                   	nop
    302d:	5d                   	pop    %rbp
    302e:	c3                   	retq   
    302f:	90                   	nop

0000000000003030 <_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE>:
	  constexpr duration(const duration<_Rep2, _Period2>& __d)
    3030:	f3 0f 1e fa          	endbr64 
    3034:	55                   	push   %rbp
    3035:	48 89 e5             	mov    %rsp,%rbp
    3038:	48 83 ec 20          	sub    $0x20,%rsp
    303c:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    3040:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    3044:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    304b:	00 00 
    304d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    3051:	31 c0                	xor    %eax,%eax
	  : __r(duration_cast<duration>(__d).count()) { }
    3053:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    3057:	48 89 c7             	mov    %rax,%rdi
    305a:	e8 67 01 00 00       	callq  31c6 <_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE>
    305f:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
    3064:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
    3069:	c5 fb 11 45 f0       	vmovsd %xmm0,-0x10(%rbp)
    306e:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
    3072:	48 89 c7             	mov    %rax,%rdi
    3075:	e8 36 01 00 00       	callq  31b0 <_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv>
    307a:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
    307f:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    3083:	48 89 02             	mov    %rax,(%rdx)
    3086:	90                   	nop
    3087:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    308b:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    3092:	00 00 
    3094:	74 05                	je     309b <_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE+0x6b>
    3096:	e8 55 f3 ff ff       	callq  23f0 <__stack_chk_fail@plt>
    309b:	c9                   	leaveq 
    309c:	c3                   	retq   

000000000000309d <_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE>:
	return __time_point(__lhs.time_since_epoch() -__rhs);
      }

    template<typename _Clock, typename _Dur1, typename _Dur2>
      constexpr typename common_type<_Dur1, _Dur2>::type
      operator-(const time_point<_Clock, _Dur1>& __lhs,
    309d:	f3 0f 1e fa          	endbr64 
    30a1:	55                   	push   %rbp
    30a2:	48 89 e5             	mov    %rsp,%rbp
    30a5:	48 83 ec 30          	sub    $0x30,%rsp
    30a9:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    30ad:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    30b1:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    30b8:	00 00 
    30ba:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    30be:	31 c0                	xor    %eax,%eax
		const time_point<_Clock, _Dur2>& __rhs)
      { return __lhs.time_since_epoch() - __rhs.time_since_epoch(); }
    30c0:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    30c4:	48 89 c7             	mov    %rax,%rdi
    30c7:	e8 ce 00 00 00       	callq  319a <_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv>
    30cc:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    30d0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    30d4:	48 89 c7             	mov    %rax,%rdi
    30d7:	e8 be 00 00 00       	callq  319a <_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv>
    30dc:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    30e0:	48 8d 55 f0          	lea    -0x10(%rbp),%rdx
    30e4:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
    30e8:	48 89 d6             	mov    %rdx,%rsi
    30eb:	48 89 c7             	mov    %rax,%rdi
    30ee:	e8 16 00 00 00       	callq  3109 <_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_>
    30f3:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    30f7:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    30fe:	00 00 
    3100:	74 05                	je     3107 <_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE+0x6a>
    3102:	e8 e9 f2 ff ff       	callq  23f0 <__stack_chk_fail@plt>
    3107:	c9                   	leaveq 
    3108:	c3                   	retq   

0000000000003109 <_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_>:
      operator-(const duration<_Rep1, _Period1>& __lhs,
    3109:	f3 0f 1e fa          	endbr64 
    310d:	55                   	push   %rbp
    310e:	48 89 e5             	mov    %rsp,%rbp
    3111:	53                   	push   %rbx
    3112:	48 83 ec 48          	sub    $0x48,%rsp
    3116:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
    311a:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
    311e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    3125:	00 00 
    3127:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    312b:	31 c0                	xor    %eax,%eax
	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
    312d:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    3131:	48 8b 00             	mov    (%rax),%rax
    3134:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    3138:	48 8d 45 c8          	lea    -0x38(%rbp),%rax
    313c:	48 89 c7             	mov    %rax,%rdi
    313f:	e8 b4 fe ff ff       	callq  2ff8 <_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv>
    3144:	48 89 c3             	mov    %rax,%rbx
    3147:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    314b:	48 8b 00             	mov    (%rax),%rax
    314e:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    3152:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    3156:	48 89 c7             	mov    %rax,%rdi
    3159:	e8 9a fe ff ff       	callq  2ff8 <_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv>
    315e:	48 29 c3             	sub    %rax,%rbx
    3161:	48 89 d8             	mov    %rbx,%rax
    3164:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    3168:	48 8d 55 d8          	lea    -0x28(%rbp),%rdx
    316c:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    3170:	48 89 d6             	mov    %rdx,%rsi
    3173:	48 89 c7             	mov    %rax,%rdi
    3176:	e8 93 fe ff ff       	callq  300e <_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_>
    317b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
      }
    317f:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    3183:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    318a:	00 00 
    318c:	74 05                	je     3193 <_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_+0x8a>
    318e:	e8 5d f2 ff ff       	callq  23f0 <__stack_chk_fail@plt>
    3193:	48 83 c4 48          	add    $0x48,%rsp
    3197:	5b                   	pop    %rbx
    3198:	5d                   	pop    %rbp
    3199:	c3                   	retq   

000000000000319a <_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv>:
	time_since_epoch() const
    319a:	f3 0f 1e fa          	endbr64 
    319e:	55                   	push   %rbp
    319f:	48 89 e5             	mov    %rsp,%rbp
    31a2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
	{ return __d; }
    31a6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    31aa:	48 8b 00             	mov    (%rax),%rax
    31ad:	5d                   	pop    %rbp
    31ae:	c3                   	retq   
    31af:	90                   	nop

00000000000031b0 <_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv>:
	count() const
    31b0:	f3 0f 1e fa          	endbr64 
    31b4:	55                   	push   %rbp
    31b5:	48 89 e5             	mov    %rsp,%rbp
    31b8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
	{ return __r; }
    31bc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    31c0:	c5 fb 10 00          	vmovsd (%rax),%xmm0
    31c4:	5d                   	pop    %rbp
    31c5:	c3                   	retq   

00000000000031c6 <_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE>:
      duration_cast(const duration<_Rep, _Period>& __d)
    31c6:	f3 0f 1e fa          	endbr64 
    31ca:	55                   	push   %rbp
    31cb:	48 89 e5             	mov    %rsp,%rbp
    31ce:	48 83 ec 10          	sub    $0x10,%rsp
    31d2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
	return __dc::__cast(__d);
    31d6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    31da:	48 89 c7             	mov    %rax,%rdi
    31dd:	e8 0c 00 00 00       	callq  31ee <_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE>
    31e2:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
    31e7:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
      }
    31ec:	c9                   	leaveq 
    31ed:	c3                   	retq   

00000000000031ee <_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE>:
	  __cast(const duration<_Rep, _Period>& __d)
    31ee:	f3 0f 1e fa          	endbr64 
    31f2:	55                   	push   %rbp
    31f3:	48 89 e5             	mov    %rsp,%rbp
    31f6:	48 83 ec 30          	sub    $0x30,%rsp
    31fa:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    31fe:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    3205:	00 00 
    3207:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    320b:	31 c0                	xor    %eax,%eax
	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
    320d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    3211:	48 89 c7             	mov    %rax,%rdi
    3214:	e8 df fd ff ff       	callq  2ff8 <_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv>
    3219:	c4 e1 fb 2a c0       	vcvtsi2sd %rax,%xmm0,%xmm0
    321e:	c5 fb 10 0d 2a 2e 00 	vmovsd 0x2e2a(%rip),%xmm1        # 6050 <_ZStL19piecewise_construct+0x48>
    3225:	00 
    3226:	c5 fb 5e c1          	vdivsd %xmm1,%xmm0,%xmm0
    322a:	c5 fb 11 45 e8       	vmovsd %xmm0,-0x18(%rbp)
    322f:	48 8d 55 e8          	lea    -0x18(%rbp),%rdx
    3233:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
    3237:	48 89 d6             	mov    %rdx,%rsi
    323a:	48 89 c7             	mov    %rax,%rdi
    323d:	e8 1c 00 00 00       	callq  325e <_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IdvEERKT_>
    3242:	c5 fb 10 45 f0       	vmovsd -0x10(%rbp),%xmm0
	  }
    3247:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    324b:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    3252:	00 00 
    3254:	74 05                	je     325b <_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE+0x6d>
    3256:	e8 95 f1 ff ff       	callq  23f0 <__stack_chk_fail@plt>
    325b:	c9                   	leaveq 
    325c:	c3                   	retq   
    325d:	90                   	nop

000000000000325e <_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IdvEERKT_>:
	  constexpr explicit duration(const _Rep2& __rep)
    325e:	f3 0f 1e fa          	endbr64 
    3262:	55                   	push   %rbp
    3263:	48 89 e5             	mov    %rsp,%rbp
    3266:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    326a:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
	  : __r(static_cast<rep>(__rep)) { }
    326e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3272:	c5 fb 10 00          	vmovsd (%rax),%xmm0
    3276:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    327a:	c5 fb 11 00          	vmovsd %xmm0,(%rax)
    327e:	90                   	nop
    327f:	5d                   	pop    %rbp
    3280:	c3                   	retq   

0000000000003281 <_ZN3hse8parallel4lab110make_breakB5cxx11Ev>:
#include <iostream>

namespace hse::parallel::lab1
{
	std::string make_break()
	{
    3281:	f3 0f 1e fa          	endbr64 
    3285:	55                   	push   %rbp
    3286:	48 89 e5             	mov    %rsp,%rbp
    3289:	53                   	push   %rbx
    328a:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
    3291:	48 89 bd 68 ff ff ff 	mov    %rdi,-0x98(%rbp)
    3298:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    329f:	00 00 
    32a1:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    32a5:	31 c0                	xor    %eax,%eax
		std::string header = "";
    32a7:	48 8d 85 7b ff ff ff 	lea    -0x85(%rbp),%rax
    32ae:	48 89 c7             	mov    %rax,%rdi
    32b1:	e8 ea f1 ff ff       	callq  24a0 <_ZNSaIcEC1Ev@plt>
    32b6:	48 8d 95 7b ff ff ff 	lea    -0x85(%rbp),%rdx
    32bd:	48 8d 45 80          	lea    -0x80(%rbp),%rax
    32c1:	48 8d 35 a3 2d 00 00 	lea    0x2da3(%rip),%rsi        # 606b <_ZStL19piecewise_construct+0xb>
    32c8:	48 89 c7             	mov    %rax,%rdi
    32cb:	e8 60 f1 ff ff       	callq  2430 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@plt>
    32d0:	48 8d 85 7b ff ff ff 	lea    -0x85(%rbp),%rax
    32d7:	48 89 c7             	mov    %rax,%rdi
    32da:	e8 f1 f0 ff ff       	callq  23d0 <_ZNSaIcED1Ev@plt>
		for (int i = 0; i < COL_NUM; i++)
    32df:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%rbp)
    32e6:	00 00 00 
    32e9:	83 bd 7c ff ff ff 08 	cmpl   $0x8,-0x84(%rbp)
    32f0:	0f 8f 89 00 00 00    	jg     337f <_ZN3hse8parallel4lab110make_breakB5cxx11Ev+0xfe>
		{
			header += '|' + std::string(CELL_WIDTH, '-');
    32f6:	48 8d 85 7b ff ff ff 	lea    -0x85(%rbp),%rax
    32fd:	48 89 c7             	mov    %rax,%rdi
    3300:	e8 9b f1 ff ff       	callq  24a0 <_ZNSaIcEC1Ev@plt>
    3305:	48 8d 95 7b ff ff ff 	lea    -0x85(%rbp),%rdx
    330c:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    3310:	48 89 d1             	mov    %rdx,%rcx
    3313:	ba 2d 00 00 00       	mov    $0x2d,%edx
    3318:	be 14 00 00 00       	mov    $0x14,%esi
    331d:	48 89 c7             	mov    %rax,%rdi
    3320:	e8 fb ef ff ff       	callq  2320 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EmcRKS3_@plt>
    3325:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    3329:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
    332d:	be 7c 00 00 00       	mov    $0x7c,%esi
    3332:	48 89 c7             	mov    %rax,%rdi
    3335:	e8 10 1a 00 00       	callq  4d4a <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_OS8_>
    333a:	48 8d 55 c0          	lea    -0x40(%rbp),%rdx
    333e:	48 8d 45 80          	lea    -0x80(%rbp),%rax
    3342:	48 89 d6             	mov    %rdx,%rsi
    3345:	48 89 c7             	mov    %rax,%rdi
    3348:	e8 d3 f0 ff ff       	callq  2420 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_@plt>
    334d:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    3351:	48 89 c7             	mov    %rax,%rdi
    3354:	e8 b7 ef ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3359:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    335d:	48 89 c7             	mov    %rax,%rdi
    3360:	e8 ab ef ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3365:	48 8d 85 7b ff ff ff 	lea    -0x85(%rbp),%rax
    336c:	48 89 c7             	mov    %rax,%rdi
    336f:	e8 5c f0 ff ff       	callq  23d0 <_ZNSaIcED1Ev@plt>
		for (int i = 0; i < COL_NUM; i++)
    3374:	ff 85 7c ff ff ff    	incl   -0x84(%rbp)
    337a:	e9 6a ff ff ff       	jmpq   32e9 <_ZN3hse8parallel4lab110make_breakB5cxx11Ev+0x68>
		}
		return header + "|\n";
    337f:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
    3386:	48 8d 4d 80          	lea    -0x80(%rbp),%rcx
    338a:	48 8d 15 db 2c 00 00 	lea    0x2cdb(%rip),%rdx        # 606c <_ZStL19piecewise_construct+0xc>
    3391:	48 89 ce             	mov    %rcx,%rsi
    3394:	48 89 c7             	mov    %rax,%rdi
    3397:	e8 59 18 00 00       	callq  4bf5 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_>
    339c:	90                   	nop
		std::string header = "";
    339d:	48 8d 45 80          	lea    -0x80(%rbp),%rax
    33a1:	48 89 c7             	mov    %rax,%rdi
    33a4:	e8 67 ef ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
		return header + "|\n";
    33a9:	90                   	nop
	}
    33aa:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    33ae:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    33b5:	00 00 
    33b7:	0f 84 8b 00 00 00    	je     3448 <_ZN3hse8parallel4lab110make_breakB5cxx11Ev+0x1c7>
    33bd:	e9 81 00 00 00       	jmpq   3443 <_ZN3hse8parallel4lab110make_breakB5cxx11Ev+0x1c2>
    33c2:	f3 0f 1e fa          	endbr64 
    33c6:	48 89 c3             	mov    %rax,%rbx
    33c9:	48 8d 85 7b ff ff ff 	lea    -0x85(%rbp),%rax
    33d0:	48 89 c7             	mov    %rax,%rdi
    33d3:	e8 f8 ef ff ff       	callq  23d0 <_ZNSaIcED1Ev@plt>
    33d8:	48 89 d8             	mov    %rbx,%rax
    33db:	48 89 c7             	mov    %rax,%rdi
    33de:	e8 ad f0 ff ff       	callq  2490 <_Unwind_Resume@plt>
    33e3:	f3 0f 1e fa          	endbr64 
    33e7:	48 89 c3             	mov    %rax,%rbx
			header += '|' + std::string(CELL_WIDTH, '-');
    33ea:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    33ee:	48 89 c7             	mov    %rax,%rdi
    33f1:	e8 1a ef ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    33f6:	eb 07                	jmp    33ff <_ZN3hse8parallel4lab110make_breakB5cxx11Ev+0x17e>
    33f8:	f3 0f 1e fa          	endbr64 
    33fc:	48 89 c3             	mov    %rax,%rbx
    33ff:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    3403:	48 89 c7             	mov    %rax,%rdi
    3406:	e8 05 ef ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    340b:	eb 07                	jmp    3414 <_ZN3hse8parallel4lab110make_breakB5cxx11Ev+0x193>
    340d:	f3 0f 1e fa          	endbr64 
    3411:	48 89 c3             	mov    %rax,%rbx
    3414:	48 8d 85 7b ff ff ff 	lea    -0x85(%rbp),%rax
    341b:	48 89 c7             	mov    %rax,%rdi
    341e:	e8 ad ef ff ff       	callq  23d0 <_ZNSaIcED1Ev@plt>
    3423:	eb 07                	jmp    342c <_ZN3hse8parallel4lab110make_breakB5cxx11Ev+0x1ab>
    3425:	f3 0f 1e fa          	endbr64 
    3429:	48 89 c3             	mov    %rax,%rbx
		std::string header = "";
    342c:	48 8d 45 80          	lea    -0x80(%rbp),%rax
    3430:	48 89 c7             	mov    %rax,%rdi
    3433:	e8 d8 ee ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3438:	48 89 d8             	mov    %rbx,%rax
    343b:	48 89 c7             	mov    %rax,%rdi
    343e:	e8 4d f0 ff ff       	callq  2490 <_Unwind_Resume@plt>
	}
    3443:	e8 a8 ef ff ff       	callq  23f0 <__stack_chk_fail@plt>
    3448:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
    344f:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
    3456:	5b                   	pop    %rbx
    3457:	5d                   	pop    %rbp
    3458:	c3                   	retq   

0000000000003459 <_ZN3hse8parallel4lab19make_cellERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>:
	
	std::string make_cell(const std::string& content)
	{
    3459:	f3 0f 1e fa          	endbr64 
    345d:	55                   	push   %rbp
    345e:	48 89 e5             	mov    %rsp,%rbp
    3461:	53                   	push   %rbx
    3462:	48 81 ec a8 00 00 00 	sub    $0xa8,%rsp
    3469:	48 89 bd 58 ff ff ff 	mov    %rdi,-0xa8(%rbp)
    3470:	48 89 b5 50 ff ff ff 	mov    %rsi,-0xb0(%rbp)
    3477:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    347e:	00 00 
    3480:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    3484:	31 c0                	xor    %eax,%eax
		std::size_t len = content.length();
    3486:	48 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%rax
    348d:	48 89 c7             	mov    %rax,%rdi
    3490:	e8 bb ef ff ff       	callq  2450 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv@plt>
    3495:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
		std::size_t left_len = (CELL_WIDTH-len)/2;
    349c:	b8 14 00 00 00       	mov    $0x14,%eax
    34a1:	48 2b 85 68 ff ff ff 	sub    -0x98(%rbp),%rax
    34a8:	48 d1 e8             	shr    %rax
    34ab:	48 89 85 70 ff ff ff 	mov    %rax,-0x90(%rbp)
		std::size_t right_len = (CELL_WIDTH-len) - left_len;
    34b2:	48 8b 95 68 ff ff ff 	mov    -0x98(%rbp),%rdx
    34b9:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
    34c0:	48 01 d0             	add    %rdx,%rax
    34c3:	ba 14 00 00 00       	mov    $0x14,%edx
    34c8:	48 29 c2             	sub    %rax,%rdx
    34cb:	48 89 d0             	mov    %rdx,%rax
    34ce:	48 89 85 78 ff ff ff 	mov    %rax,-0x88(%rbp)
		return std::string(left_len, ' ') + content + std::string(right_len, ' ');
    34d5:	48 8d 85 67 ff ff ff 	lea    -0x99(%rbp),%rax
    34dc:	48 89 c7             	mov    %rax,%rdi
    34df:	e8 bc ef ff ff       	callq  24a0 <_ZNSaIcEC1Ev@plt>
    34e4:	48 8d 95 67 ff ff ff 	lea    -0x99(%rbp),%rdx
    34eb:	48 8b b5 78 ff ff ff 	mov    -0x88(%rbp),%rsi
    34f2:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    34f6:	48 89 d1             	mov    %rdx,%rcx
    34f9:	ba 20 00 00 00       	mov    $0x20,%edx
    34fe:	48 89 c7             	mov    %rax,%rdi
    3501:	e8 1a ee ff ff       	callq  2320 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EmcRKS3_@plt>
    3506:	48 8d 85 66 ff ff ff 	lea    -0x9a(%rbp),%rax
    350d:	48 89 c7             	mov    %rax,%rdi
    3510:	e8 8b ef ff ff       	callq  24a0 <_ZNSaIcEC1Ev@plt>
    3515:	48 8d 95 66 ff ff ff 	lea    -0x9a(%rbp),%rdx
    351c:	48 8b b5 70 ff ff ff 	mov    -0x90(%rbp),%rsi
    3523:	48 8d 45 80          	lea    -0x80(%rbp),%rax
    3527:	48 89 d1             	mov    %rdx,%rcx
    352a:	ba 20 00 00 00       	mov    $0x20,%edx
    352f:	48 89 c7             	mov    %rax,%rdi
    3532:	e8 e9 ed ff ff       	callq  2320 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EmcRKS3_@plt>
    3537:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    353b:	48 8b 95 50 ff ff ff 	mov    -0xb0(%rbp),%rdx
    3542:	48 8d 4d 80          	lea    -0x80(%rbp),%rcx
    3546:	48 89 ce             	mov    %rcx,%rsi
    3549:	48 89 c7             	mov    %rax,%rdi
    354c:	e8 4e 18 00 00       	callq  4d9f <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_>
    3551:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
    3558:	48 8d 55 c0          	lea    -0x40(%rbp),%rdx
    355c:	48 8d 4d a0          	lea    -0x60(%rbp),%rcx
    3560:	48 89 ce             	mov    %rcx,%rsi
    3563:	48 89 c7             	mov    %rax,%rdi
    3566:	e8 17 17 00 00       	callq  4c82 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_>
    356b:	90                   	nop
    356c:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    3570:	48 89 c7             	mov    %rax,%rdi
    3573:	e8 98 ed ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3578:	48 8d 45 80          	lea    -0x80(%rbp),%rax
    357c:	48 89 c7             	mov    %rax,%rdi
    357f:	e8 8c ed ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3584:	48 8d 85 66 ff ff ff 	lea    -0x9a(%rbp),%rax
    358b:	48 89 c7             	mov    %rax,%rdi
    358e:	e8 3d ee ff ff       	callq  23d0 <_ZNSaIcED1Ev@plt>
    3593:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    3597:	48 89 c7             	mov    %rax,%rdi
    359a:	e8 71 ed ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    359f:	48 8d 85 67 ff ff ff 	lea    -0x99(%rbp),%rax
    35a6:	48 89 c7             	mov    %rax,%rdi
    35a9:	e8 22 ee ff ff       	callq  23d0 <_ZNSaIcED1Ev@plt>
    35ae:	90                   	nop
	}
    35af:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    35b3:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    35ba:	00 00 
    35bc:	74 76                	je     3634 <_ZN3hse8parallel4lab19make_cellERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x1db>
    35be:	eb 6f                	jmp    362f <_ZN3hse8parallel4lab19make_cellERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x1d6>
    35c0:	f3 0f 1e fa          	endbr64 
    35c4:	48 89 c3             	mov    %rax,%rbx
		return std::string(left_len, ' ') + content + std::string(right_len, ' ');
    35c7:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    35cb:	48 89 c7             	mov    %rax,%rdi
    35ce:	e8 3d ed ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    35d3:	eb 07                	jmp    35dc <_ZN3hse8parallel4lab19make_cellERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x183>
    35d5:	f3 0f 1e fa          	endbr64 
    35d9:	48 89 c3             	mov    %rax,%rbx
    35dc:	48 8d 45 80          	lea    -0x80(%rbp),%rax
    35e0:	48 89 c7             	mov    %rax,%rdi
    35e3:	e8 28 ed ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    35e8:	eb 07                	jmp    35f1 <_ZN3hse8parallel4lab19make_cellERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x198>
    35ea:	f3 0f 1e fa          	endbr64 
    35ee:	48 89 c3             	mov    %rax,%rbx
    35f1:	48 8d 85 66 ff ff ff 	lea    -0x9a(%rbp),%rax
    35f8:	48 89 c7             	mov    %rax,%rdi
    35fb:	e8 d0 ed ff ff       	callq  23d0 <_ZNSaIcED1Ev@plt>
    3600:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    3604:	48 89 c7             	mov    %rax,%rdi
    3607:	e8 04 ed ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    360c:	eb 07                	jmp    3615 <_ZN3hse8parallel4lab19make_cellERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x1bc>
    360e:	f3 0f 1e fa          	endbr64 
    3612:	48 89 c3             	mov    %rax,%rbx
    3615:	48 8d 85 67 ff ff ff 	lea    -0x99(%rbp),%rax
    361c:	48 89 c7             	mov    %rax,%rdi
    361f:	e8 ac ed ff ff       	callq  23d0 <_ZNSaIcED1Ev@plt>
    3624:	48 89 d8             	mov    %rbx,%rax
    3627:	48 89 c7             	mov    %rax,%rdi
    362a:	e8 61 ee ff ff       	callq  2490 <_Unwind_Resume@plt>
	}
    362f:	e8 bc ed ff ff       	callq  23f0 <__stack_chk_fail@plt>
    3634:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
    363b:	48 81 c4 a8 00 00 00 	add    $0xa8,%rsp
    3642:	5b                   	pop    %rbx
    3643:	5d                   	pop    %rbp
    3644:	c3                   	retq   

0000000000003645 <_ZN3hse8parallel4lab111make_headerB5cxx11Ev>:

	std::string make_header()
	{
    3645:	f3 0f 1e fa          	endbr64 
    3649:	55                   	push   %rbp
    364a:	48 89 e5             	mov    %rsp,%rbp
    364d:	53                   	push   %rbx
    364e:	48 81 ec d8 04 00 00 	sub    $0x4d8,%rsp
    3655:	48 89 bd 28 fb ff ff 	mov    %rdi,-0x4d8(%rbp)
    365c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    3663:	00 00 
    3665:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    3669:	31 c0                	xor    %eax,%eax
			'|' + make_cell("PROCESSOR CLOCKS")+
			'|' + make_cell("CLOCK RATE, GHz") +
			'|' + make_cell("PACE") +
			'|' + make_cell("IPC") +
			'|' + make_cell("IPS, 10^9") +
			'|' + make_cell("OPERATION RESULT")+ "|\n" + make_break();
    366b:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    366f:	48 89 c7             	mov    %rax,%rdi
    3672:	e8 0a fc ff ff       	callq  3281 <_ZN3hse8parallel4lab110make_breakB5cxx11Ev>
    3677:	48 8d 85 3f fb ff ff 	lea    -0x4c1(%rbp),%rax
    367e:	48 89 c7             	mov    %rax,%rdi
    3681:	e8 1a ee ff ff       	callq  24a0 <_ZNSaIcEC1Ev@plt>
    3686:	48 8d 95 3f fb ff ff 	lea    -0x4c1(%rbp),%rdx
    368d:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
    3694:	48 8d 35 d4 29 00 00 	lea    0x29d4(%rip),%rsi        # 606f <_ZStL19piecewise_construct+0xf>
    369b:	48 89 c7             	mov    %rax,%rdi
    369e:	e8 8d ed ff ff       	callq  2430 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@plt>
    36a3:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
    36aa:	48 8d 95 40 ff ff ff 	lea    -0xc0(%rbp),%rdx
    36b1:	48 89 d6             	mov    %rdx,%rsi
    36b4:	48 89 c7             	mov    %rax,%rdi
    36b7:	e8 9d fd ff ff       	callq  3459 <_ZN3hse8parallel4lab19make_cellERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>
			'|' + make_cell("IPS, 10^9") +
    36bc:	48 8d 85 3e fb ff ff 	lea    -0x4c2(%rbp),%rax
    36c3:	48 89 c7             	mov    %rax,%rdi
    36c6:	e8 d5 ed ff ff       	callq  24a0 <_ZNSaIcEC1Ev@plt>
    36cb:	48 8d 95 3e fb ff ff 	lea    -0x4c2(%rbp),%rdx
    36d2:	48 8d 85 c0 fe ff ff 	lea    -0x140(%rbp),%rax
    36d9:	48 8d 35 a0 29 00 00 	lea    0x29a0(%rip),%rsi        # 6080 <_ZStL19piecewise_construct+0x20>
    36e0:	48 89 c7             	mov    %rax,%rdi
    36e3:	e8 48 ed ff ff       	callq  2430 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@plt>
    36e8:	48 8d 85 e0 fe ff ff 	lea    -0x120(%rbp),%rax
    36ef:	48 8d 95 c0 fe ff ff 	lea    -0x140(%rbp),%rdx
    36f6:	48 89 d6             	mov    %rdx,%rsi
    36f9:	48 89 c7             	mov    %rax,%rdi
    36fc:	e8 58 fd ff ff       	callq  3459 <_ZN3hse8parallel4lab19make_cellERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>
			'|' + make_cell("IPC") +
    3701:	48 8d 85 3d fb ff ff 	lea    -0x4c3(%rbp),%rax
    3708:	48 89 c7             	mov    %rax,%rdi
    370b:	e8 90 ed ff ff       	callq  24a0 <_ZNSaIcEC1Ev@plt>
    3710:	48 8d 95 3d fb ff ff 	lea    -0x4c3(%rbp),%rdx
    3717:	48 8d 85 40 fe ff ff 	lea    -0x1c0(%rbp),%rax
    371e:	48 8d 35 65 29 00 00 	lea    0x2965(%rip),%rsi        # 608a <_ZStL19piecewise_construct+0x2a>
    3725:	48 89 c7             	mov    %rax,%rdi
    3728:	e8 03 ed ff ff       	callq  2430 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@plt>
    372d:	48 8d 85 60 fe ff ff 	lea    -0x1a0(%rbp),%rax
    3734:	48 8d 95 40 fe ff ff 	lea    -0x1c0(%rbp),%rdx
    373b:	48 89 d6             	mov    %rdx,%rsi
    373e:	48 89 c7             	mov    %rax,%rdi
    3741:	e8 13 fd ff ff       	callq  3459 <_ZN3hse8parallel4lab19make_cellERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>
			'|' + make_cell("PACE") +
    3746:	48 8d 85 3c fb ff ff 	lea    -0x4c4(%rbp),%rax
    374d:	48 89 c7             	mov    %rax,%rdi
    3750:	e8 4b ed ff ff       	callq  24a0 <_ZNSaIcEC1Ev@plt>
    3755:	48 8d 95 3c fb ff ff 	lea    -0x4c4(%rbp),%rdx
    375c:	48 8d 85 c0 fd ff ff 	lea    -0x240(%rbp),%rax
    3763:	48 8d 35 24 29 00 00 	lea    0x2924(%rip),%rsi        # 608e <_ZStL19piecewise_construct+0x2e>
    376a:	48 89 c7             	mov    %rax,%rdi
    376d:	e8 be ec ff ff       	callq  2430 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@plt>
    3772:	48 8d 85 e0 fd ff ff 	lea    -0x220(%rbp),%rax
    3779:	48 8d 95 c0 fd ff ff 	lea    -0x240(%rbp),%rdx
    3780:	48 89 d6             	mov    %rdx,%rsi
    3783:	48 89 c7             	mov    %rax,%rdi
    3786:	e8 ce fc ff ff       	callq  3459 <_ZN3hse8parallel4lab19make_cellERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>
			'|' + make_cell("CLOCK RATE, GHz") +
    378b:	48 8d 85 3b fb ff ff 	lea    -0x4c5(%rbp),%rax
    3792:	48 89 c7             	mov    %rax,%rdi
    3795:	e8 06 ed ff ff       	callq  24a0 <_ZNSaIcEC1Ev@plt>
    379a:	48 8d 95 3b fb ff ff 	lea    -0x4c5(%rbp),%rdx
    37a1:	48 8d 85 40 fd ff ff 	lea    -0x2c0(%rbp),%rax
    37a8:	48 8d 35 e4 28 00 00 	lea    0x28e4(%rip),%rsi        # 6093 <_ZStL19piecewise_construct+0x33>
    37af:	48 89 c7             	mov    %rax,%rdi
    37b2:	e8 79 ec ff ff       	callq  2430 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@plt>
    37b7:	48 8d 85 60 fd ff ff 	lea    -0x2a0(%rbp),%rax
    37be:	48 8d 95 40 fd ff ff 	lea    -0x2c0(%rbp),%rdx
    37c5:	48 89 d6             	mov    %rdx,%rsi
    37c8:	48 89 c7             	mov    %rax,%rdi
    37cb:	e8 89 fc ff ff       	callq  3459 <_ZN3hse8parallel4lab19make_cellERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>
			'|' + make_cell("PROCESSOR CLOCKS")+
    37d0:	48 8d 85 3a fb ff ff 	lea    -0x4c6(%rbp),%rax
    37d7:	48 89 c7             	mov    %rax,%rdi
    37da:	e8 c1 ec ff ff       	callq  24a0 <_ZNSaIcEC1Ev@plt>
    37df:	48 8d 95 3a fb ff ff 	lea    -0x4c6(%rbp),%rdx
    37e6:	48 8d 85 c0 fc ff ff 	lea    -0x340(%rbp),%rax
    37ed:	48 8d 35 af 28 00 00 	lea    0x28af(%rip),%rsi        # 60a3 <_ZStL19piecewise_construct+0x43>
    37f4:	48 89 c7             	mov    %rax,%rdi
    37f7:	e8 34 ec ff ff       	callq  2430 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@plt>
    37fc:	48 8d 85 e0 fc ff ff 	lea    -0x320(%rbp),%rax
    3803:	48 8d 95 c0 fc ff ff 	lea    -0x340(%rbp),%rdx
    380a:	48 89 d6             	mov    %rdx,%rsi
    380d:	48 89 c7             	mov    %rax,%rdi
    3810:	e8 44 fc ff ff       	callq  3459 <_ZN3hse8parallel4lab19make_cellERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>
			'|' + make_cell("GFLOPS")+
    3815:	48 8d 85 39 fb ff ff 	lea    -0x4c7(%rbp),%rax
    381c:	48 89 c7             	mov    %rax,%rdi
    381f:	e8 7c ec ff ff       	callq  24a0 <_ZNSaIcEC1Ev@plt>
    3824:	48 8d 95 39 fb ff ff 	lea    -0x4c7(%rbp),%rdx
    382b:	48 8d 85 40 fc ff ff 	lea    -0x3c0(%rbp),%rax
    3832:	48 8d 35 7b 28 00 00 	lea    0x287b(%rip),%rsi        # 60b4 <_ZStL19piecewise_construct+0x54>
    3839:	48 89 c7             	mov    %rax,%rdi
    383c:	e8 ef eb ff ff       	callq  2430 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@plt>
    3841:	48 8d 85 60 fc ff ff 	lea    -0x3a0(%rbp),%rax
    3848:	48 8d 95 40 fc ff ff 	lea    -0x3c0(%rbp),%rdx
    384f:	48 89 d6             	mov    %rdx,%rsi
    3852:	48 89 c7             	mov    %rax,%rdi
    3855:	e8 ff fb ff ff       	callq  3459 <_ZN3hse8parallel4lab19make_cellERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>
			'|' + make_cell("TIME")+ 
    385a:	48 8d 85 38 fb ff ff 	lea    -0x4c8(%rbp),%rax
    3861:	48 89 c7             	mov    %rax,%rdi
    3864:	e8 37 ec ff ff       	callq  24a0 <_ZNSaIcEC1Ev@plt>
    3869:	48 8d 95 38 fb ff ff 	lea    -0x4c8(%rbp),%rdx
    3870:	48 8d 85 c0 fb ff ff 	lea    -0x440(%rbp),%rax
    3877:	48 8d 35 3d 28 00 00 	lea    0x283d(%rip),%rsi        # 60bb <_ZStL19piecewise_construct+0x5b>
    387e:	48 89 c7             	mov    %rax,%rdi
    3881:	e8 aa eb ff ff       	callq  2430 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@plt>
    3886:	48 8d 85 e0 fb ff ff 	lea    -0x420(%rbp),%rax
    388d:	48 8d 95 c0 fb ff ff 	lea    -0x440(%rbp),%rdx
    3894:	48 89 d6             	mov    %rdx,%rsi
    3897:	48 89 c7             	mov    %rax,%rdi
    389a:	e8 ba fb ff ff       	callq  3459 <_ZN3hse8parallel4lab19make_cellERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>
		return  '|' + make_cell("OPERATIONS")+
    389f:	48 8d 85 37 fb ff ff 	lea    -0x4c9(%rbp),%rax
    38a6:	48 89 c7             	mov    %rax,%rdi
    38a9:	e8 f2 eb ff ff       	callq  24a0 <_ZNSaIcEC1Ev@plt>
    38ae:	48 8d 95 37 fb ff ff 	lea    -0x4c9(%rbp),%rdx
    38b5:	48 8d 85 40 fb ff ff 	lea    -0x4c0(%rbp),%rax
    38bc:	48 8d 35 fd 27 00 00 	lea    0x27fd(%rip),%rsi        # 60c0 <_ZStL19piecewise_construct+0x60>
    38c3:	48 89 c7             	mov    %rax,%rdi
    38c6:	e8 65 eb ff ff       	callq  2430 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@plt>
    38cb:	48 8d 85 60 fb ff ff 	lea    -0x4a0(%rbp),%rax
    38d2:	48 8d 95 40 fb ff ff 	lea    -0x4c0(%rbp),%rdx
    38d9:	48 89 d6             	mov    %rdx,%rsi
    38dc:	48 89 c7             	mov    %rax,%rdi
    38df:	e8 75 fb ff ff       	callq  3459 <_ZN3hse8parallel4lab19make_cellERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>
    38e4:	48 8d 85 80 fb ff ff 	lea    -0x480(%rbp),%rax
    38eb:	48 8d 95 60 fb ff ff 	lea    -0x4a0(%rbp),%rdx
    38f2:	be 7c 00 00 00       	mov    $0x7c,%esi
    38f7:	48 89 c7             	mov    %rax,%rdi
    38fa:	e8 4b 14 00 00       	callq  4d4a <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_OS8_>
    38ff:	48 8d 85 a0 fb ff ff 	lea    -0x460(%rbp),%rax
    3906:	48 8d 8d 80 fb ff ff 	lea    -0x480(%rbp),%rcx
    390d:	ba 7c 00 00 00       	mov    $0x7c,%edx
    3912:	48 89 ce             	mov    %rcx,%rsi
    3915:	48 89 c7             	mov    %rax,%rdi
    3918:	e8 cd 14 00 00       	callq  4dea <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_>
			'|' + make_cell("TIME")+ 
    391d:	48 8d 85 00 fc ff ff 	lea    -0x400(%rbp),%rax
    3924:	48 8d 95 e0 fb ff ff 	lea    -0x420(%rbp),%rdx
    392b:	48 8d 8d a0 fb ff ff 	lea    -0x460(%rbp),%rcx
    3932:	48 89 ce             	mov    %rcx,%rsi
    3935:	48 89 c7             	mov    %rax,%rdi
    3938:	e8 45 13 00 00       	callq  4c82 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_>
    393d:	48 8d 85 20 fc ff ff 	lea    -0x3e0(%rbp),%rax
    3944:	48 8d 8d 00 fc ff ff 	lea    -0x400(%rbp),%rcx
    394b:	ba 7c 00 00 00       	mov    $0x7c,%edx
    3950:	48 89 ce             	mov    %rcx,%rsi
    3953:	48 89 c7             	mov    %rax,%rdi
    3956:	e8 8f 14 00 00       	callq  4dea <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_>
			'|' + make_cell("GFLOPS")+
    395b:	48 8d 85 80 fc ff ff 	lea    -0x380(%rbp),%rax
    3962:	48 8d 95 60 fc ff ff 	lea    -0x3a0(%rbp),%rdx
    3969:	48 8d 8d 20 fc ff ff 	lea    -0x3e0(%rbp),%rcx
    3970:	48 89 ce             	mov    %rcx,%rsi
    3973:	48 89 c7             	mov    %rax,%rdi
    3976:	e8 07 13 00 00       	callq  4c82 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_>
    397b:	48 8d 85 a0 fc ff ff 	lea    -0x360(%rbp),%rax
    3982:	48 8d 8d 80 fc ff ff 	lea    -0x380(%rbp),%rcx
    3989:	ba 7c 00 00 00       	mov    $0x7c,%edx
    398e:	48 89 ce             	mov    %rcx,%rsi
    3991:	48 89 c7             	mov    %rax,%rdi
    3994:	e8 51 14 00 00       	callq  4dea <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_>
			'|' + make_cell("PROCESSOR CLOCKS")+
    3999:	48 8d 85 00 fd ff ff 	lea    -0x300(%rbp),%rax
    39a0:	48 8d 95 e0 fc ff ff 	lea    -0x320(%rbp),%rdx
    39a7:	48 8d 8d a0 fc ff ff 	lea    -0x360(%rbp),%rcx
    39ae:	48 89 ce             	mov    %rcx,%rsi
    39b1:	48 89 c7             	mov    %rax,%rdi
    39b4:	e8 c9 12 00 00       	callq  4c82 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_>
    39b9:	48 8d 85 20 fd ff ff 	lea    -0x2e0(%rbp),%rax
    39c0:	48 8d 8d 00 fd ff ff 	lea    -0x300(%rbp),%rcx
    39c7:	ba 7c 00 00 00       	mov    $0x7c,%edx
    39cc:	48 89 ce             	mov    %rcx,%rsi
    39cf:	48 89 c7             	mov    %rax,%rdi
    39d2:	e8 13 14 00 00       	callq  4dea <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_>
			'|' + make_cell("CLOCK RATE, GHz") +
    39d7:	48 8d 85 80 fd ff ff 	lea    -0x280(%rbp),%rax
    39de:	48 8d 95 60 fd ff ff 	lea    -0x2a0(%rbp),%rdx
    39e5:	48 8d 8d 20 fd ff ff 	lea    -0x2e0(%rbp),%rcx
    39ec:	48 89 ce             	mov    %rcx,%rsi
    39ef:	48 89 c7             	mov    %rax,%rdi
    39f2:	e8 8b 12 00 00       	callq  4c82 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_>
    39f7:	48 8d 85 a0 fd ff ff 	lea    -0x260(%rbp),%rax
    39fe:	48 8d 8d 80 fd ff ff 	lea    -0x280(%rbp),%rcx
    3a05:	ba 7c 00 00 00       	mov    $0x7c,%edx
    3a0a:	48 89 ce             	mov    %rcx,%rsi
    3a0d:	48 89 c7             	mov    %rax,%rdi
    3a10:	e8 d5 13 00 00       	callq  4dea <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_>
			'|' + make_cell("PACE") +
    3a15:	48 8d 85 00 fe ff ff 	lea    -0x200(%rbp),%rax
    3a1c:	48 8d 95 e0 fd ff ff 	lea    -0x220(%rbp),%rdx
    3a23:	48 8d 8d a0 fd ff ff 	lea    -0x260(%rbp),%rcx
    3a2a:	48 89 ce             	mov    %rcx,%rsi
    3a2d:	48 89 c7             	mov    %rax,%rdi
    3a30:	e8 4d 12 00 00       	callq  4c82 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_>
    3a35:	48 8d 85 20 fe ff ff 	lea    -0x1e0(%rbp),%rax
    3a3c:	48 8d 8d 00 fe ff ff 	lea    -0x200(%rbp),%rcx
    3a43:	ba 7c 00 00 00       	mov    $0x7c,%edx
    3a48:	48 89 ce             	mov    %rcx,%rsi
    3a4b:	48 89 c7             	mov    %rax,%rdi
    3a4e:	e8 97 13 00 00       	callq  4dea <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_>
			'|' + make_cell("IPC") +
    3a53:	48 8d 85 80 fe ff ff 	lea    -0x180(%rbp),%rax
    3a5a:	48 8d 95 60 fe ff ff 	lea    -0x1a0(%rbp),%rdx
    3a61:	48 8d 8d 20 fe ff ff 	lea    -0x1e0(%rbp),%rcx
    3a68:	48 89 ce             	mov    %rcx,%rsi
    3a6b:	48 89 c7             	mov    %rax,%rdi
    3a6e:	e8 0f 12 00 00       	callq  4c82 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_>
    3a73:	48 8d 85 a0 fe ff ff 	lea    -0x160(%rbp),%rax
    3a7a:	48 8d 8d 80 fe ff ff 	lea    -0x180(%rbp),%rcx
    3a81:	ba 7c 00 00 00       	mov    $0x7c,%edx
    3a86:	48 89 ce             	mov    %rcx,%rsi
    3a89:	48 89 c7             	mov    %rax,%rdi
    3a8c:	e8 59 13 00 00       	callq  4dea <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_>
			'|' + make_cell("IPS, 10^9") +
    3a91:	48 8d 85 00 ff ff ff 	lea    -0x100(%rbp),%rax
    3a98:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
    3a9f:	48 8d 8d a0 fe ff ff 	lea    -0x160(%rbp),%rcx
    3aa6:	48 89 ce             	mov    %rcx,%rsi
    3aa9:	48 89 c7             	mov    %rax,%rdi
    3aac:	e8 d1 11 00 00       	callq  4c82 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_>
    3ab1:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
    3ab8:	48 8d 8d 00 ff ff ff 	lea    -0x100(%rbp),%rcx
    3abf:	ba 7c 00 00 00       	mov    $0x7c,%edx
    3ac4:	48 89 ce             	mov    %rcx,%rsi
    3ac7:	48 89 c7             	mov    %rax,%rdi
    3aca:	e8 1b 13 00 00       	callq  4dea <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_>
			'|' + make_cell("OPERATION RESULT")+ "|\n" + make_break();
    3acf:	48 8d 45 80          	lea    -0x80(%rbp),%rax
    3ad3:	48 8d 95 60 ff ff ff 	lea    -0xa0(%rbp),%rdx
    3ada:	48 8d 8d 20 ff ff ff 	lea    -0xe0(%rbp),%rcx
    3ae1:	48 89 ce             	mov    %rcx,%rsi
    3ae4:	48 89 c7             	mov    %rax,%rdi
    3ae7:	e8 96 11 00 00       	callq  4c82 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_>
    3aec:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    3af0:	48 8d 4d 80          	lea    -0x80(%rbp),%rcx
    3af4:	48 8d 15 71 25 00 00 	lea    0x2571(%rip),%rdx        # 606c <_ZStL19piecewise_construct+0xc>
    3afb:	48 89 ce             	mov    %rcx,%rsi
    3afe:	48 89 c7             	mov    %rax,%rdi
    3b01:	e8 32 13 00 00       	callq  4e38 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_>
    3b06:	48 8b 85 28 fb ff ff 	mov    -0x4d8(%rbp),%rax
    3b0d:	48 8d 55 c0          	lea    -0x40(%rbp),%rdx
    3b11:	48 8d 4d a0          	lea    -0x60(%rbp),%rcx
    3b15:	48 89 ce             	mov    %rcx,%rsi
    3b18:	48 89 c7             	mov    %rax,%rdi
    3b1b:	e8 62 11 00 00       	callq  4c82 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_>
    3b20:	90                   	nop
    3b21:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    3b25:	48 89 c7             	mov    %rax,%rdi
    3b28:	e8 e3 e7 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3b2d:	48 8d 45 80          	lea    -0x80(%rbp),%rax
    3b31:	48 89 c7             	mov    %rax,%rdi
    3b34:	e8 d7 e7 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
			'|' + make_cell("IPS, 10^9") +
    3b39:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
    3b40:	48 89 c7             	mov    %rax,%rdi
    3b43:	e8 c8 e7 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3b48:	48 8d 85 00 ff ff ff 	lea    -0x100(%rbp),%rax
    3b4f:	48 89 c7             	mov    %rax,%rdi
    3b52:	e8 b9 e7 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
			'|' + make_cell("IPC") +
    3b57:	48 8d 85 a0 fe ff ff 	lea    -0x160(%rbp),%rax
    3b5e:	48 89 c7             	mov    %rax,%rdi
    3b61:	e8 aa e7 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3b66:	48 8d 85 80 fe ff ff 	lea    -0x180(%rbp),%rax
    3b6d:	48 89 c7             	mov    %rax,%rdi
    3b70:	e8 9b e7 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
			'|' + make_cell("PACE") +
    3b75:	48 8d 85 20 fe ff ff 	lea    -0x1e0(%rbp),%rax
    3b7c:	48 89 c7             	mov    %rax,%rdi
    3b7f:	e8 8c e7 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3b84:	48 8d 85 00 fe ff ff 	lea    -0x200(%rbp),%rax
    3b8b:	48 89 c7             	mov    %rax,%rdi
    3b8e:	e8 7d e7 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
			'|' + make_cell("CLOCK RATE, GHz") +
    3b93:	48 8d 85 a0 fd ff ff 	lea    -0x260(%rbp),%rax
    3b9a:	48 89 c7             	mov    %rax,%rdi
    3b9d:	e8 6e e7 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3ba2:	48 8d 85 80 fd ff ff 	lea    -0x280(%rbp),%rax
    3ba9:	48 89 c7             	mov    %rax,%rdi
    3bac:	e8 5f e7 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
			'|' + make_cell("PROCESSOR CLOCKS")+
    3bb1:	48 8d 85 20 fd ff ff 	lea    -0x2e0(%rbp),%rax
    3bb8:	48 89 c7             	mov    %rax,%rdi
    3bbb:	e8 50 e7 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3bc0:	48 8d 85 00 fd ff ff 	lea    -0x300(%rbp),%rax
    3bc7:	48 89 c7             	mov    %rax,%rdi
    3bca:	e8 41 e7 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
			'|' + make_cell("GFLOPS")+
    3bcf:	48 8d 85 a0 fc ff ff 	lea    -0x360(%rbp),%rax
    3bd6:	48 89 c7             	mov    %rax,%rdi
    3bd9:	e8 32 e7 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3bde:	48 8d 85 80 fc ff ff 	lea    -0x380(%rbp),%rax
    3be5:	48 89 c7             	mov    %rax,%rdi
    3be8:	e8 23 e7 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
			'|' + make_cell("TIME")+ 
    3bed:	48 8d 85 20 fc ff ff 	lea    -0x3e0(%rbp),%rax
    3bf4:	48 89 c7             	mov    %rax,%rdi
    3bf7:	e8 14 e7 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3bfc:	48 8d 85 00 fc ff ff 	lea    -0x400(%rbp),%rax
    3c03:	48 89 c7             	mov    %rax,%rdi
    3c06:	e8 05 e7 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
		return  '|' + make_cell("OPERATIONS")+
    3c0b:	48 8d 85 a0 fb ff ff 	lea    -0x460(%rbp),%rax
    3c12:	48 89 c7             	mov    %rax,%rdi
    3c15:	e8 f6 e6 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3c1a:	48 8d 85 80 fb ff ff 	lea    -0x480(%rbp),%rax
    3c21:	48 89 c7             	mov    %rax,%rdi
    3c24:	e8 e7 e6 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3c29:	48 8d 85 60 fb ff ff 	lea    -0x4a0(%rbp),%rax
    3c30:	48 89 c7             	mov    %rax,%rdi
    3c33:	e8 d8 e6 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3c38:	48 8d 85 40 fb ff ff 	lea    -0x4c0(%rbp),%rax
    3c3f:	48 89 c7             	mov    %rax,%rdi
    3c42:	e8 c9 e6 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3c47:	48 8d 85 37 fb ff ff 	lea    -0x4c9(%rbp),%rax
    3c4e:	48 89 c7             	mov    %rax,%rdi
    3c51:	e8 7a e7 ff ff       	callq  23d0 <_ZNSaIcED1Ev@plt>
			'|' + make_cell("TIME")+ 
    3c56:	48 8d 85 e0 fb ff ff 	lea    -0x420(%rbp),%rax
    3c5d:	48 89 c7             	mov    %rax,%rdi
    3c60:	e8 ab e6 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3c65:	48 8d 85 c0 fb ff ff 	lea    -0x440(%rbp),%rax
    3c6c:	48 89 c7             	mov    %rax,%rdi
    3c6f:	e8 9c e6 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3c74:	48 8d 85 38 fb ff ff 	lea    -0x4c8(%rbp),%rax
    3c7b:	48 89 c7             	mov    %rax,%rdi
    3c7e:	e8 4d e7 ff ff       	callq  23d0 <_ZNSaIcED1Ev@plt>
			'|' + make_cell("GFLOPS")+
    3c83:	48 8d 85 60 fc ff ff 	lea    -0x3a0(%rbp),%rax
    3c8a:	48 89 c7             	mov    %rax,%rdi
    3c8d:	e8 7e e6 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3c92:	48 8d 85 40 fc ff ff 	lea    -0x3c0(%rbp),%rax
    3c99:	48 89 c7             	mov    %rax,%rdi
    3c9c:	e8 6f e6 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3ca1:	48 8d 85 39 fb ff ff 	lea    -0x4c7(%rbp),%rax
    3ca8:	48 89 c7             	mov    %rax,%rdi
    3cab:	e8 20 e7 ff ff       	callq  23d0 <_ZNSaIcED1Ev@plt>
			'|' + make_cell("PROCESSOR CLOCKS")+
    3cb0:	48 8d 85 e0 fc ff ff 	lea    -0x320(%rbp),%rax
    3cb7:	48 89 c7             	mov    %rax,%rdi
    3cba:	e8 51 e6 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3cbf:	48 8d 85 c0 fc ff ff 	lea    -0x340(%rbp),%rax
    3cc6:	48 89 c7             	mov    %rax,%rdi
    3cc9:	e8 42 e6 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3cce:	48 8d 85 3a fb ff ff 	lea    -0x4c6(%rbp),%rax
    3cd5:	48 89 c7             	mov    %rax,%rdi
    3cd8:	e8 f3 e6 ff ff       	callq  23d0 <_ZNSaIcED1Ev@plt>
			'|' + make_cell("CLOCK RATE, GHz") +
    3cdd:	48 8d 85 60 fd ff ff 	lea    -0x2a0(%rbp),%rax
    3ce4:	48 89 c7             	mov    %rax,%rdi
    3ce7:	e8 24 e6 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3cec:	48 8d 85 40 fd ff ff 	lea    -0x2c0(%rbp),%rax
    3cf3:	48 89 c7             	mov    %rax,%rdi
    3cf6:	e8 15 e6 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3cfb:	48 8d 85 3b fb ff ff 	lea    -0x4c5(%rbp),%rax
    3d02:	48 89 c7             	mov    %rax,%rdi
    3d05:	e8 c6 e6 ff ff       	callq  23d0 <_ZNSaIcED1Ev@plt>
			'|' + make_cell("PACE") +
    3d0a:	48 8d 85 e0 fd ff ff 	lea    -0x220(%rbp),%rax
    3d11:	48 89 c7             	mov    %rax,%rdi
    3d14:	e8 f7 e5 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3d19:	48 8d 85 c0 fd ff ff 	lea    -0x240(%rbp),%rax
    3d20:	48 89 c7             	mov    %rax,%rdi
    3d23:	e8 e8 e5 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3d28:	48 8d 85 3c fb ff ff 	lea    -0x4c4(%rbp),%rax
    3d2f:	48 89 c7             	mov    %rax,%rdi
    3d32:	e8 99 e6 ff ff       	callq  23d0 <_ZNSaIcED1Ev@plt>
			'|' + make_cell("IPC") +
    3d37:	48 8d 85 60 fe ff ff 	lea    -0x1a0(%rbp),%rax
    3d3e:	48 89 c7             	mov    %rax,%rdi
    3d41:	e8 ca e5 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3d46:	48 8d 85 40 fe ff ff 	lea    -0x1c0(%rbp),%rax
    3d4d:	48 89 c7             	mov    %rax,%rdi
    3d50:	e8 bb e5 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3d55:	48 8d 85 3d fb ff ff 	lea    -0x4c3(%rbp),%rax
    3d5c:	48 89 c7             	mov    %rax,%rdi
    3d5f:	e8 6c e6 ff ff       	callq  23d0 <_ZNSaIcED1Ev@plt>
			'|' + make_cell("IPS, 10^9") +
    3d64:	48 8d 85 e0 fe ff ff 	lea    -0x120(%rbp),%rax
    3d6b:	48 89 c7             	mov    %rax,%rdi
    3d6e:	e8 9d e5 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3d73:	48 8d 85 c0 fe ff ff 	lea    -0x140(%rbp),%rax
    3d7a:	48 89 c7             	mov    %rax,%rdi
    3d7d:	e8 8e e5 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3d82:	48 8d 85 3e fb ff ff 	lea    -0x4c2(%rbp),%rax
    3d89:	48 89 c7             	mov    %rax,%rdi
    3d8c:	e8 3f e6 ff ff       	callq  23d0 <_ZNSaIcED1Ev@plt>
			'|' + make_cell("OPERATION RESULT")+ "|\n" + make_break();
    3d91:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
    3d98:	48 89 c7             	mov    %rax,%rdi
    3d9b:	e8 70 e5 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3da0:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
    3da7:	48 89 c7             	mov    %rax,%rdi
    3daa:	e8 61 e5 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3daf:	48 8d 85 3f fb ff ff 	lea    -0x4c1(%rbp),%rax
    3db6:	48 89 c7             	mov    %rax,%rdi
    3db9:	e8 12 e6 ff ff       	callq  23d0 <_ZNSaIcED1Ev@plt>
    3dbe:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    3dc2:	48 89 c7             	mov    %rax,%rdi
    3dc5:	e8 46 e5 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3dca:	90                   	nop
	}
    3dcb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    3dcf:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    3dd6:	00 00 
    3dd8:	0f 84 09 04 00 00    	je     41e7 <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0xba2>
    3dde:	e9 ff 03 00 00       	jmpq   41e2 <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0xb9d>
    3de3:	f3 0f 1e fa          	endbr64 
    3de7:	48 89 c3             	mov    %rax,%rbx
			'|' + make_cell("OPERATION RESULT")+ "|\n" + make_break();
    3dea:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    3dee:	48 89 c7             	mov    %rax,%rdi
    3df1:	e8 1a e5 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3df6:	eb 07                	jmp    3dff <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0x7ba>
    3df8:	f3 0f 1e fa          	endbr64 
    3dfc:	48 89 c3             	mov    %rax,%rbx
    3dff:	48 8d 45 80          	lea    -0x80(%rbp),%rax
    3e03:	48 89 c7             	mov    %rax,%rdi
    3e06:	e8 05 e5 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3e0b:	eb 07                	jmp    3e14 <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0x7cf>
    3e0d:	f3 0f 1e fa          	endbr64 
    3e11:	48 89 c3             	mov    %rax,%rbx
			'|' + make_cell("IPS, 10^9") +
    3e14:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
    3e1b:	48 89 c7             	mov    %rax,%rdi
    3e1e:	e8 ed e4 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3e23:	eb 07                	jmp    3e2c <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0x7e7>
    3e25:	f3 0f 1e fa          	endbr64 
    3e29:	48 89 c3             	mov    %rax,%rbx
    3e2c:	48 8d 85 00 ff ff ff 	lea    -0x100(%rbp),%rax
    3e33:	48 89 c7             	mov    %rax,%rdi
    3e36:	e8 d5 e4 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3e3b:	eb 07                	jmp    3e44 <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0x7ff>
    3e3d:	f3 0f 1e fa          	endbr64 
    3e41:	48 89 c3             	mov    %rax,%rbx
			'|' + make_cell("IPC") +
    3e44:	48 8d 85 a0 fe ff ff 	lea    -0x160(%rbp),%rax
    3e4b:	48 89 c7             	mov    %rax,%rdi
    3e4e:	e8 bd e4 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3e53:	eb 07                	jmp    3e5c <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0x817>
    3e55:	f3 0f 1e fa          	endbr64 
    3e59:	48 89 c3             	mov    %rax,%rbx
    3e5c:	48 8d 85 80 fe ff ff 	lea    -0x180(%rbp),%rax
    3e63:	48 89 c7             	mov    %rax,%rdi
    3e66:	e8 a5 e4 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3e6b:	eb 07                	jmp    3e74 <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0x82f>
    3e6d:	f3 0f 1e fa          	endbr64 
    3e71:	48 89 c3             	mov    %rax,%rbx
			'|' + make_cell("PACE") +
    3e74:	48 8d 85 20 fe ff ff 	lea    -0x1e0(%rbp),%rax
    3e7b:	48 89 c7             	mov    %rax,%rdi
    3e7e:	e8 8d e4 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3e83:	eb 07                	jmp    3e8c <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0x847>
    3e85:	f3 0f 1e fa          	endbr64 
    3e89:	48 89 c3             	mov    %rax,%rbx
    3e8c:	48 8d 85 00 fe ff ff 	lea    -0x200(%rbp),%rax
    3e93:	48 89 c7             	mov    %rax,%rdi
    3e96:	e8 75 e4 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3e9b:	eb 07                	jmp    3ea4 <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0x85f>
    3e9d:	f3 0f 1e fa          	endbr64 
    3ea1:	48 89 c3             	mov    %rax,%rbx
			'|' + make_cell("CLOCK RATE, GHz") +
    3ea4:	48 8d 85 a0 fd ff ff 	lea    -0x260(%rbp),%rax
    3eab:	48 89 c7             	mov    %rax,%rdi
    3eae:	e8 5d e4 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3eb3:	eb 07                	jmp    3ebc <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0x877>
    3eb5:	f3 0f 1e fa          	endbr64 
    3eb9:	48 89 c3             	mov    %rax,%rbx
    3ebc:	48 8d 85 80 fd ff ff 	lea    -0x280(%rbp),%rax
    3ec3:	48 89 c7             	mov    %rax,%rdi
    3ec6:	e8 45 e4 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3ecb:	eb 07                	jmp    3ed4 <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0x88f>
    3ecd:	f3 0f 1e fa          	endbr64 
    3ed1:	48 89 c3             	mov    %rax,%rbx
			'|' + make_cell("PROCESSOR CLOCKS")+
    3ed4:	48 8d 85 20 fd ff ff 	lea    -0x2e0(%rbp),%rax
    3edb:	48 89 c7             	mov    %rax,%rdi
    3ede:	e8 2d e4 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3ee3:	eb 07                	jmp    3eec <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0x8a7>
    3ee5:	f3 0f 1e fa          	endbr64 
    3ee9:	48 89 c3             	mov    %rax,%rbx
    3eec:	48 8d 85 00 fd ff ff 	lea    -0x300(%rbp),%rax
    3ef3:	48 89 c7             	mov    %rax,%rdi
    3ef6:	e8 15 e4 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3efb:	eb 07                	jmp    3f04 <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0x8bf>
    3efd:	f3 0f 1e fa          	endbr64 
    3f01:	48 89 c3             	mov    %rax,%rbx
			'|' + make_cell("GFLOPS")+
    3f04:	48 8d 85 a0 fc ff ff 	lea    -0x360(%rbp),%rax
    3f0b:	48 89 c7             	mov    %rax,%rdi
    3f0e:	e8 fd e3 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3f13:	eb 07                	jmp    3f1c <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0x8d7>
    3f15:	f3 0f 1e fa          	endbr64 
    3f19:	48 89 c3             	mov    %rax,%rbx
    3f1c:	48 8d 85 80 fc ff ff 	lea    -0x380(%rbp),%rax
    3f23:	48 89 c7             	mov    %rax,%rdi
    3f26:	e8 e5 e3 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3f2b:	eb 07                	jmp    3f34 <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0x8ef>
    3f2d:	f3 0f 1e fa          	endbr64 
    3f31:	48 89 c3             	mov    %rax,%rbx
			'|' + make_cell("TIME")+ 
    3f34:	48 8d 85 20 fc ff ff 	lea    -0x3e0(%rbp),%rax
    3f3b:	48 89 c7             	mov    %rax,%rdi
    3f3e:	e8 cd e3 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3f43:	eb 07                	jmp    3f4c <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0x907>
    3f45:	f3 0f 1e fa          	endbr64 
    3f49:	48 89 c3             	mov    %rax,%rbx
    3f4c:	48 8d 85 00 fc ff ff 	lea    -0x400(%rbp),%rax
    3f53:	48 89 c7             	mov    %rax,%rdi
    3f56:	e8 b5 e3 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3f5b:	eb 07                	jmp    3f64 <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0x91f>
    3f5d:	f3 0f 1e fa          	endbr64 
    3f61:	48 89 c3             	mov    %rax,%rbx
		return  '|' + make_cell("OPERATIONS")+
    3f64:	48 8d 85 a0 fb ff ff 	lea    -0x460(%rbp),%rax
    3f6b:	48 89 c7             	mov    %rax,%rdi
    3f6e:	e8 9d e3 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3f73:	eb 07                	jmp    3f7c <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0x937>
    3f75:	f3 0f 1e fa          	endbr64 
    3f79:	48 89 c3             	mov    %rax,%rbx
    3f7c:	48 8d 85 80 fb ff ff 	lea    -0x480(%rbp),%rax
    3f83:	48 89 c7             	mov    %rax,%rdi
    3f86:	e8 85 e3 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3f8b:	eb 07                	jmp    3f94 <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0x94f>
    3f8d:	f3 0f 1e fa          	endbr64 
    3f91:	48 89 c3             	mov    %rax,%rbx
    3f94:	48 8d 85 60 fb ff ff 	lea    -0x4a0(%rbp),%rax
    3f9b:	48 89 c7             	mov    %rax,%rdi
    3f9e:	e8 6d e3 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3fa3:	eb 07                	jmp    3fac <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0x967>
    3fa5:	f3 0f 1e fa          	endbr64 
    3fa9:	48 89 c3             	mov    %rax,%rbx
    3fac:	48 8d 85 40 fb ff ff 	lea    -0x4c0(%rbp),%rax
    3fb3:	48 89 c7             	mov    %rax,%rdi
    3fb6:	e8 55 e3 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3fbb:	eb 07                	jmp    3fc4 <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0x97f>
    3fbd:	f3 0f 1e fa          	endbr64 
    3fc1:	48 89 c3             	mov    %rax,%rbx
    3fc4:	48 8d 85 37 fb ff ff 	lea    -0x4c9(%rbp),%rax
    3fcb:	48 89 c7             	mov    %rax,%rdi
    3fce:	e8 fd e3 ff ff       	callq  23d0 <_ZNSaIcED1Ev@plt>
			'|' + make_cell("TIME")+ 
    3fd3:	48 8d 85 e0 fb ff ff 	lea    -0x420(%rbp),%rax
    3fda:	48 89 c7             	mov    %rax,%rdi
    3fdd:	e8 2e e3 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3fe2:	eb 07                	jmp    3feb <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0x9a6>
    3fe4:	f3 0f 1e fa          	endbr64 
    3fe8:	48 89 c3             	mov    %rax,%rbx
    3feb:	48 8d 85 c0 fb ff ff 	lea    -0x440(%rbp),%rax
    3ff2:	48 89 c7             	mov    %rax,%rdi
    3ff5:	e8 16 e3 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3ffa:	eb 07                	jmp    4003 <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0x9be>
    3ffc:	f3 0f 1e fa          	endbr64 
    4000:	48 89 c3             	mov    %rax,%rbx
    4003:	48 8d 85 38 fb ff ff 	lea    -0x4c8(%rbp),%rax
    400a:	48 89 c7             	mov    %rax,%rdi
    400d:	e8 be e3 ff ff       	callq  23d0 <_ZNSaIcED1Ev@plt>
			'|' + make_cell("GFLOPS")+
    4012:	48 8d 85 60 fc ff ff 	lea    -0x3a0(%rbp),%rax
    4019:	48 89 c7             	mov    %rax,%rdi
    401c:	e8 ef e2 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    4021:	eb 07                	jmp    402a <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0x9e5>
    4023:	f3 0f 1e fa          	endbr64 
    4027:	48 89 c3             	mov    %rax,%rbx
    402a:	48 8d 85 40 fc ff ff 	lea    -0x3c0(%rbp),%rax
    4031:	48 89 c7             	mov    %rax,%rdi
    4034:	e8 d7 e2 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    4039:	eb 07                	jmp    4042 <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0x9fd>
    403b:	f3 0f 1e fa          	endbr64 
    403f:	48 89 c3             	mov    %rax,%rbx
    4042:	48 8d 85 39 fb ff ff 	lea    -0x4c7(%rbp),%rax
    4049:	48 89 c7             	mov    %rax,%rdi
    404c:	e8 7f e3 ff ff       	callq  23d0 <_ZNSaIcED1Ev@plt>
			'|' + make_cell("PROCESSOR CLOCKS")+
    4051:	48 8d 85 e0 fc ff ff 	lea    -0x320(%rbp),%rax
    4058:	48 89 c7             	mov    %rax,%rdi
    405b:	e8 b0 e2 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    4060:	eb 07                	jmp    4069 <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0xa24>
    4062:	f3 0f 1e fa          	endbr64 
    4066:	48 89 c3             	mov    %rax,%rbx
    4069:	48 8d 85 c0 fc ff ff 	lea    -0x340(%rbp),%rax
    4070:	48 89 c7             	mov    %rax,%rdi
    4073:	e8 98 e2 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    4078:	eb 07                	jmp    4081 <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0xa3c>
    407a:	f3 0f 1e fa          	endbr64 
    407e:	48 89 c3             	mov    %rax,%rbx
    4081:	48 8d 85 3a fb ff ff 	lea    -0x4c6(%rbp),%rax
    4088:	48 89 c7             	mov    %rax,%rdi
    408b:	e8 40 e3 ff ff       	callq  23d0 <_ZNSaIcED1Ev@plt>
			'|' + make_cell("CLOCK RATE, GHz") +
    4090:	48 8d 85 60 fd ff ff 	lea    -0x2a0(%rbp),%rax
    4097:	48 89 c7             	mov    %rax,%rdi
    409a:	e8 71 e2 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    409f:	eb 07                	jmp    40a8 <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0xa63>
    40a1:	f3 0f 1e fa          	endbr64 
    40a5:	48 89 c3             	mov    %rax,%rbx
    40a8:	48 8d 85 40 fd ff ff 	lea    -0x2c0(%rbp),%rax
    40af:	48 89 c7             	mov    %rax,%rdi
    40b2:	e8 59 e2 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    40b7:	eb 07                	jmp    40c0 <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0xa7b>
    40b9:	f3 0f 1e fa          	endbr64 
    40bd:	48 89 c3             	mov    %rax,%rbx
    40c0:	48 8d 85 3b fb ff ff 	lea    -0x4c5(%rbp),%rax
    40c7:	48 89 c7             	mov    %rax,%rdi
    40ca:	e8 01 e3 ff ff       	callq  23d0 <_ZNSaIcED1Ev@plt>
			'|' + make_cell("PACE") +
    40cf:	48 8d 85 e0 fd ff ff 	lea    -0x220(%rbp),%rax
    40d6:	48 89 c7             	mov    %rax,%rdi
    40d9:	e8 32 e2 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    40de:	eb 07                	jmp    40e7 <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0xaa2>
    40e0:	f3 0f 1e fa          	endbr64 
    40e4:	48 89 c3             	mov    %rax,%rbx
    40e7:	48 8d 85 c0 fd ff ff 	lea    -0x240(%rbp),%rax
    40ee:	48 89 c7             	mov    %rax,%rdi
    40f1:	e8 1a e2 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    40f6:	eb 07                	jmp    40ff <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0xaba>
    40f8:	f3 0f 1e fa          	endbr64 
    40fc:	48 89 c3             	mov    %rax,%rbx
    40ff:	48 8d 85 3c fb ff ff 	lea    -0x4c4(%rbp),%rax
    4106:	48 89 c7             	mov    %rax,%rdi
    4109:	e8 c2 e2 ff ff       	callq  23d0 <_ZNSaIcED1Ev@plt>
			'|' + make_cell("IPC") +
    410e:	48 8d 85 60 fe ff ff 	lea    -0x1a0(%rbp),%rax
    4115:	48 89 c7             	mov    %rax,%rdi
    4118:	e8 f3 e1 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    411d:	eb 07                	jmp    4126 <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0xae1>
    411f:	f3 0f 1e fa          	endbr64 
    4123:	48 89 c3             	mov    %rax,%rbx
    4126:	48 8d 85 40 fe ff ff 	lea    -0x1c0(%rbp),%rax
    412d:	48 89 c7             	mov    %rax,%rdi
    4130:	e8 db e1 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    4135:	eb 07                	jmp    413e <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0xaf9>
    4137:	f3 0f 1e fa          	endbr64 
    413b:	48 89 c3             	mov    %rax,%rbx
    413e:	48 8d 85 3d fb ff ff 	lea    -0x4c3(%rbp),%rax
    4145:	48 89 c7             	mov    %rax,%rdi
    4148:	e8 83 e2 ff ff       	callq  23d0 <_ZNSaIcED1Ev@plt>
			'|' + make_cell("IPS, 10^9") +
    414d:	48 8d 85 e0 fe ff ff 	lea    -0x120(%rbp),%rax
    4154:	48 89 c7             	mov    %rax,%rdi
    4157:	e8 b4 e1 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    415c:	eb 07                	jmp    4165 <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0xb20>
    415e:	f3 0f 1e fa          	endbr64 
    4162:	48 89 c3             	mov    %rax,%rbx
    4165:	48 8d 85 c0 fe ff ff 	lea    -0x140(%rbp),%rax
    416c:	48 89 c7             	mov    %rax,%rdi
    416f:	e8 9c e1 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    4174:	eb 07                	jmp    417d <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0xb38>
    4176:	f3 0f 1e fa          	endbr64 
    417a:	48 89 c3             	mov    %rax,%rbx
    417d:	48 8d 85 3e fb ff ff 	lea    -0x4c2(%rbp),%rax
    4184:	48 89 c7             	mov    %rax,%rdi
    4187:	e8 44 e2 ff ff       	callq  23d0 <_ZNSaIcED1Ev@plt>
			'|' + make_cell("OPERATION RESULT")+ "|\n" + make_break();
    418c:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
    4193:	48 89 c7             	mov    %rax,%rdi
    4196:	e8 75 e1 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    419b:	eb 07                	jmp    41a4 <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0xb5f>
    419d:	f3 0f 1e fa          	endbr64 
    41a1:	48 89 c3             	mov    %rax,%rbx
    41a4:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
    41ab:	48 89 c7             	mov    %rax,%rdi
    41ae:	e8 5d e1 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    41b3:	eb 07                	jmp    41bc <_ZN3hse8parallel4lab111make_headerB5cxx11Ev+0xb77>
    41b5:	f3 0f 1e fa          	endbr64 
    41b9:	48 89 c3             	mov    %rax,%rbx
    41bc:	48 8d 85 3f fb ff ff 	lea    -0x4c1(%rbp),%rax
    41c3:	48 89 c7             	mov    %rax,%rdi
    41c6:	e8 05 e2 ff ff       	callq  23d0 <_ZNSaIcED1Ev@plt>
    41cb:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    41cf:	48 89 c7             	mov    %rax,%rdi
    41d2:	e8 39 e1 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    41d7:	48 89 d8             	mov    %rbx,%rax
    41da:	48 89 c7             	mov    %rax,%rdi
    41dd:	e8 ae e2 ff ff       	callq  2490 <_Unwind_Resume@plt>
	}
    41e2:	e8 09 e2 ff ff       	callq  23f0 <__stack_chk_fail@plt>
    41e7:	48 8b 85 28 fb ff ff 	mov    -0x4d8(%rbp),%rax
    41ee:	48 81 c4 d8 04 00 00 	add    $0x4d8,%rsp
    41f5:	5b                   	pop    %rbx
    41f6:	5d                   	pop    %rbp
    41f7:	c3                   	retq   

00000000000041f8 <_ZN3hse8parallel4lab1lsERSoRKNS1_10Line_stateE>:
	
	
	std::ostream& operator <<(std::ostream& os, Line_state const& line)
		    {
    41f8:	f3 0f 1e fa          	endbr64 
    41fc:	55                   	push   %rbp
    41fd:	48 89 e5             	mov    %rsp,%rbp
    4200:	53                   	push   %rbx
    4201:	48 81 ec 68 02 00 00 	sub    $0x268,%rsp
    4208:	48 89 bd 98 fd ff ff 	mov    %rdi,-0x268(%rbp)
    420f:	48 89 b5 90 fd ff ff 	mov    %rsi,-0x270(%rbp)
    4216:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    421d:	00 00 
    421f:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    4223:	31 c0                	xor    %eax,%eax
				  <<  make_cell(std::to_string(line.tact_duration))<< '|'
				  <<  make_cell(std::to_string(line.tacts_per_sec))<< '|'
				  <<  make_cell(std::to_string(line.pace))<< '|'
				  <<  make_cell(std::to_string(line.IPC))<< '|'
				  <<  make_cell(std::to_string(line.IPS))<< '|'
				  <<  make_cell(std::to_string(line.result)) << "|\n";
    4225:	48 8b 85 98 fd ff ff 	mov    -0x268(%rbp),%rax
    422c:	be 7c 00 00 00       	mov    $0x7c,%esi
    4231:	48 89 c7             	mov    %rax,%rdi
    4234:	e8 c7 e1 ff ff       	callq  2400 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@plt>
    4239:	48 89 c3             	mov    %rax,%rbx
			return os <<  '|' << make_cell(std::to_string(line.operations))<< '|'
    423c:	48 8b 85 90 fd ff ff 	mov    -0x270(%rbp),%rax
    4243:	48 8b 10             	mov    (%rax),%rdx
    4246:	48 8d 85 a0 fd ff ff 	lea    -0x260(%rbp),%rax
    424d:	48 89 d6             	mov    %rdx,%rsi
    4250:	48 89 c7             	mov    %rax,%rdi
    4253:	e8 a0 06 00 00       	callq  48f8 <_ZNSt7__cxx119to_stringEm>
    4258:	48 8d 85 c0 fd ff ff 	lea    -0x240(%rbp),%rax
    425f:	48 8d 95 a0 fd ff ff 	lea    -0x260(%rbp),%rdx
    4266:	48 89 d6             	mov    %rdx,%rsi
    4269:	48 89 c7             	mov    %rax,%rdi
    426c:	e8 e8 f1 ff ff       	callq  3459 <_ZN3hse8parallel4lab19make_cellERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>
				  <<  make_cell(std::to_string(line.result)) << "|\n";
    4271:	48 8d 85 c0 fd ff ff 	lea    -0x240(%rbp),%rax
    4278:	48 89 c6             	mov    %rax,%rsi
    427b:	48 89 df             	mov    %rbx,%rdi
    427e:	e8 0d e1 ff ff       	callq  2390 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@plt>
    4283:	be 7c 00 00 00       	mov    $0x7c,%esi
    4288:	48 89 c7             	mov    %rax,%rdi
    428b:	e8 70 e1 ff ff       	callq  2400 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@plt>
    4290:	48 89 c3             	mov    %rax,%rbx
				  <<  make_cell(std::to_string(line.secs))<< '|'
    4293:	48 8b 85 90 fd ff ff 	mov    -0x270(%rbp),%rax
    429a:	48 8b 40 08          	mov    0x8(%rax),%rax
    429e:	48 8d 95 e0 fd ff ff 	lea    -0x220(%rbp),%rdx
    42a5:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
    42aa:	48 89 d7             	mov    %rdx,%rdi
    42ad:	e8 ae 06 00 00       	callq  4960 <_ZNSt7__cxx119to_stringEd>
    42b2:	48 8d 85 00 fe ff ff 	lea    -0x200(%rbp),%rax
    42b9:	48 8d 95 e0 fd ff ff 	lea    -0x220(%rbp),%rdx
    42c0:	48 89 d6             	mov    %rdx,%rsi
    42c3:	48 89 c7             	mov    %rax,%rdi
    42c6:	e8 8e f1 ff ff       	callq  3459 <_ZN3hse8parallel4lab19make_cellERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>
				  <<  make_cell(std::to_string(line.result)) << "|\n";
    42cb:	48 8d 85 00 fe ff ff 	lea    -0x200(%rbp),%rax
    42d2:	48 89 c6             	mov    %rax,%rsi
    42d5:	48 89 df             	mov    %rbx,%rdi
    42d8:	e8 b3 e0 ff ff       	callq  2390 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@plt>
    42dd:	be 7c 00 00 00       	mov    $0x7c,%esi
    42e2:	48 89 c7             	mov    %rax,%rdi
    42e5:	e8 16 e1 ff ff       	callq  2400 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@plt>
    42ea:	48 89 c3             	mov    %rax,%rbx
				  <<  make_cell(std::to_string(line.ops_per_sec))<< '|'
    42ed:	48 8b 85 90 fd ff ff 	mov    -0x270(%rbp),%rax
    42f4:	48 8b 40 10          	mov    0x10(%rax),%rax
    42f8:	48 8d 95 20 fe ff ff 	lea    -0x1e0(%rbp),%rdx
    42ff:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
    4304:	48 89 d7             	mov    %rdx,%rdi
    4307:	e8 54 06 00 00       	callq  4960 <_ZNSt7__cxx119to_stringEd>
    430c:	48 8d 85 40 fe ff ff 	lea    -0x1c0(%rbp),%rax
    4313:	48 8d 95 20 fe ff ff 	lea    -0x1e0(%rbp),%rdx
    431a:	48 89 d6             	mov    %rdx,%rsi
    431d:	48 89 c7             	mov    %rax,%rdi
    4320:	e8 34 f1 ff ff       	callq  3459 <_ZN3hse8parallel4lab19make_cellERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>
				  <<  make_cell(std::to_string(line.result)) << "|\n";
    4325:	48 8d 85 40 fe ff ff 	lea    -0x1c0(%rbp),%rax
    432c:	48 89 c6             	mov    %rax,%rsi
    432f:	48 89 df             	mov    %rbx,%rdi
    4332:	e8 59 e0 ff ff       	callq  2390 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@plt>
    4337:	be 7c 00 00 00       	mov    $0x7c,%esi
    433c:	48 89 c7             	mov    %rax,%rdi
    433f:	e8 bc e0 ff ff       	callq  2400 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@plt>
    4344:	48 89 c3             	mov    %rax,%rbx
				  <<  make_cell(std::to_string(line.tact_duration))<< '|'
    4347:	48 8b 85 90 fd ff ff 	mov    -0x270(%rbp),%rax
    434e:	48 8b 50 18          	mov    0x18(%rax),%rdx
    4352:	48 8d 85 60 fe ff ff 	lea    -0x1a0(%rbp),%rax
    4359:	48 89 d6             	mov    %rdx,%rsi
    435c:	48 89 c7             	mov    %rax,%rdi
    435f:	e8 94 05 00 00       	callq  48f8 <_ZNSt7__cxx119to_stringEm>
    4364:	48 8d 85 80 fe ff ff 	lea    -0x180(%rbp),%rax
    436b:	48 8d 95 60 fe ff ff 	lea    -0x1a0(%rbp),%rdx
    4372:	48 89 d6             	mov    %rdx,%rsi
    4375:	48 89 c7             	mov    %rax,%rdi
    4378:	e8 dc f0 ff ff       	callq  3459 <_ZN3hse8parallel4lab19make_cellERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>
				  <<  make_cell(std::to_string(line.result)) << "|\n";
    437d:	48 8d 85 80 fe ff ff 	lea    -0x180(%rbp),%rax
    4384:	48 89 c6             	mov    %rax,%rsi
    4387:	48 89 df             	mov    %rbx,%rdi
    438a:	e8 01 e0 ff ff       	callq  2390 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@plt>
    438f:	be 7c 00 00 00       	mov    $0x7c,%esi
    4394:	48 89 c7             	mov    %rax,%rdi
    4397:	e8 64 e0 ff ff       	callq  2400 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@plt>
    439c:	48 89 c3             	mov    %rax,%rbx
				  <<  make_cell(std::to_string(line.tacts_per_sec))<< '|'
    439f:	48 8b 85 90 fd ff ff 	mov    -0x270(%rbp),%rax
    43a6:	48 8b 40 20          	mov    0x20(%rax),%rax
    43aa:	48 8d 95 a0 fe ff ff 	lea    -0x160(%rbp),%rdx
    43b1:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
    43b6:	48 89 d7             	mov    %rdx,%rdi
    43b9:	e8 a2 05 00 00       	callq  4960 <_ZNSt7__cxx119to_stringEd>
    43be:	48 8d 85 c0 fe ff ff 	lea    -0x140(%rbp),%rax
    43c5:	48 8d 95 a0 fe ff ff 	lea    -0x160(%rbp),%rdx
    43cc:	48 89 d6             	mov    %rdx,%rsi
    43cf:	48 89 c7             	mov    %rax,%rdi
    43d2:	e8 82 f0 ff ff       	callq  3459 <_ZN3hse8parallel4lab19make_cellERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>
				  <<  make_cell(std::to_string(line.result)) << "|\n";
    43d7:	48 8d 85 c0 fe ff ff 	lea    -0x140(%rbp),%rax
    43de:	48 89 c6             	mov    %rax,%rsi
    43e1:	48 89 df             	mov    %rbx,%rdi
    43e4:	e8 a7 df ff ff       	callq  2390 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@plt>
    43e9:	be 7c 00 00 00       	mov    $0x7c,%esi
    43ee:	48 89 c7             	mov    %rax,%rdi
    43f1:	e8 0a e0 ff ff       	callq  2400 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@plt>
    43f6:	48 89 c3             	mov    %rax,%rbx
				  <<  make_cell(std::to_string(line.pace))<< '|'
    43f9:	48 8b 85 90 fd ff ff 	mov    -0x270(%rbp),%rax
    4400:	48 8b 40 28          	mov    0x28(%rax),%rax
    4404:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
    440b:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
    4410:	48 89 d7             	mov    %rdx,%rdi
    4413:	e8 48 05 00 00       	callq  4960 <_ZNSt7__cxx119to_stringEd>
    4418:	48 8d 85 00 ff ff ff 	lea    -0x100(%rbp),%rax
    441f:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
    4426:	48 89 d6             	mov    %rdx,%rsi
    4429:	48 89 c7             	mov    %rax,%rdi
    442c:	e8 28 f0 ff ff       	callq  3459 <_ZN3hse8parallel4lab19make_cellERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>
				  <<  make_cell(std::to_string(line.result)) << "|\n";
    4431:	48 8d 85 00 ff ff ff 	lea    -0x100(%rbp),%rax
    4438:	48 89 c6             	mov    %rax,%rsi
    443b:	48 89 df             	mov    %rbx,%rdi
    443e:	e8 4d df ff ff       	callq  2390 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@plt>
    4443:	be 7c 00 00 00       	mov    $0x7c,%esi
    4448:	48 89 c7             	mov    %rax,%rdi
    444b:	e8 b0 df ff ff       	callq  2400 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@plt>
    4450:	48 89 c3             	mov    %rax,%rbx
				  <<  make_cell(std::to_string(line.IPC))<< '|'
    4453:	48 8b 85 90 fd ff ff 	mov    -0x270(%rbp),%rax
    445a:	48 8b 40 30          	mov    0x30(%rax),%rax
    445e:	48 8d 95 20 ff ff ff 	lea    -0xe0(%rbp),%rdx
    4465:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
    446a:	48 89 d7             	mov    %rdx,%rdi
    446d:	e8 ee 04 00 00       	callq  4960 <_ZNSt7__cxx119to_stringEd>
    4472:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
    4479:	48 8d 95 20 ff ff ff 	lea    -0xe0(%rbp),%rdx
    4480:	48 89 d6             	mov    %rdx,%rsi
    4483:	48 89 c7             	mov    %rax,%rdi
    4486:	e8 ce ef ff ff       	callq  3459 <_ZN3hse8parallel4lab19make_cellERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>
				  <<  make_cell(std::to_string(line.result)) << "|\n";
    448b:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
    4492:	48 89 c6             	mov    %rax,%rsi
    4495:	48 89 df             	mov    %rbx,%rdi
    4498:	e8 f3 de ff ff       	callq  2390 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@plt>
    449d:	be 7c 00 00 00       	mov    $0x7c,%esi
    44a2:	48 89 c7             	mov    %rax,%rdi
    44a5:	e8 56 df ff ff       	callq  2400 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@plt>
    44aa:	48 89 c3             	mov    %rax,%rbx
				  <<  make_cell(std::to_string(line.IPS))<< '|'
    44ad:	48 8b 85 90 fd ff ff 	mov    -0x270(%rbp),%rax
    44b4:	48 8b 40 38          	mov    0x38(%rax),%rax
    44b8:	48 8d 95 60 ff ff ff 	lea    -0xa0(%rbp),%rdx
    44bf:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
    44c4:	48 89 d7             	mov    %rdx,%rdi
    44c7:	e8 94 04 00 00       	callq  4960 <_ZNSt7__cxx119to_stringEd>
    44cc:	48 8d 45 80          	lea    -0x80(%rbp),%rax
    44d0:	48 8d 95 60 ff ff ff 	lea    -0xa0(%rbp),%rdx
    44d7:	48 89 d6             	mov    %rdx,%rsi
    44da:	48 89 c7             	mov    %rax,%rdi
    44dd:	e8 77 ef ff ff       	callq  3459 <_ZN3hse8parallel4lab19make_cellERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>
				  <<  make_cell(std::to_string(line.result)) << "|\n";
    44e2:	48 8d 45 80          	lea    -0x80(%rbp),%rax
    44e6:	48 89 c6             	mov    %rax,%rsi
    44e9:	48 89 df             	mov    %rbx,%rdi
    44ec:	e8 9f de ff ff       	callq  2390 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@plt>
    44f1:	be 7c 00 00 00       	mov    $0x7c,%esi
    44f6:	48 89 c7             	mov    %rax,%rdi
    44f9:	e8 02 df ff ff       	callq  2400 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@plt>
    44fe:	48 89 c3             	mov    %rax,%rbx
    4501:	48 8b 85 90 fd ff ff 	mov    -0x270(%rbp),%rax
    4508:	8b 50 40             	mov    0x40(%rax),%edx
    450b:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    450f:	89 d6                	mov    %edx,%esi
    4511:	48 89 c7             	mov    %rax,%rdi
    4514:	e8 79 03 00 00       	callq  4892 <_ZNSt7__cxx119to_stringEi>
    4519:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    451d:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
    4521:	48 89 d6             	mov    %rdx,%rsi
    4524:	48 89 c7             	mov    %rax,%rdi
    4527:	e8 2d ef ff ff       	callq  3459 <_ZN3hse8parallel4lab19make_cellERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>
    452c:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    4530:	48 89 c6             	mov    %rax,%rsi
    4533:	48 89 df             	mov    %rbx,%rdi
    4536:	e8 55 de ff ff       	callq  2390 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@plt>
    453b:	48 8d 35 2a 1b 00 00 	lea    0x1b2a(%rip),%rsi        # 606c <_ZStL19piecewise_construct+0xc>
    4542:	48 89 c7             	mov    %rax,%rdi
    4545:	e8 56 de ff ff       	callq  23a0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    454a:	48 89 c3             	mov    %rax,%rbx
    454d:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    4551:	48 89 c7             	mov    %rax,%rdi
    4554:	e8 b7 dd ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    4559:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    455d:	48 89 c7             	mov    %rax,%rdi
    4560:	e8 ab dd ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
				  <<  make_cell(std::to_string(line.IPS))<< '|'
    4565:	48 8d 45 80          	lea    -0x80(%rbp),%rax
    4569:	48 89 c7             	mov    %rax,%rdi
    456c:	e8 9f dd ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    4571:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
    4578:	48 89 c7             	mov    %rax,%rdi
    457b:	e8 90 dd ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
				  <<  make_cell(std::to_string(line.IPC))<< '|'
    4580:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
    4587:	48 89 c7             	mov    %rax,%rdi
    458a:	e8 81 dd ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    458f:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
    4596:	48 89 c7             	mov    %rax,%rdi
    4599:	e8 72 dd ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
				  <<  make_cell(std::to_string(line.pace))<< '|'
    459e:	48 8d 85 00 ff ff ff 	lea    -0x100(%rbp),%rax
    45a5:	48 89 c7             	mov    %rax,%rdi
    45a8:	e8 63 dd ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    45ad:	48 8d 85 e0 fe ff ff 	lea    -0x120(%rbp),%rax
    45b4:	48 89 c7             	mov    %rax,%rdi
    45b7:	e8 54 dd ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
				  <<  make_cell(std::to_string(line.tacts_per_sec))<< '|'
    45bc:	48 8d 85 c0 fe ff ff 	lea    -0x140(%rbp),%rax
    45c3:	48 89 c7             	mov    %rax,%rdi
    45c6:	e8 45 dd ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    45cb:	48 8d 85 a0 fe ff ff 	lea    -0x160(%rbp),%rax
    45d2:	48 89 c7             	mov    %rax,%rdi
    45d5:	e8 36 dd ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
				  <<  make_cell(std::to_string(line.tact_duration))<< '|'
    45da:	48 8d 85 80 fe ff ff 	lea    -0x180(%rbp),%rax
    45e1:	48 89 c7             	mov    %rax,%rdi
    45e4:	e8 27 dd ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    45e9:	48 8d 85 60 fe ff ff 	lea    -0x1a0(%rbp),%rax
    45f0:	48 89 c7             	mov    %rax,%rdi
    45f3:	e8 18 dd ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
				  <<  make_cell(std::to_string(line.ops_per_sec))<< '|'
    45f8:	48 8d 85 40 fe ff ff 	lea    -0x1c0(%rbp),%rax
    45ff:	48 89 c7             	mov    %rax,%rdi
    4602:	e8 09 dd ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    4607:	48 8d 85 20 fe ff ff 	lea    -0x1e0(%rbp),%rax
    460e:	48 89 c7             	mov    %rax,%rdi
    4611:	e8 fa dc ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
				  <<  make_cell(std::to_string(line.secs))<< '|'
    4616:	48 8d 85 00 fe ff ff 	lea    -0x200(%rbp),%rax
    461d:	48 89 c7             	mov    %rax,%rdi
    4620:	e8 eb dc ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    4625:	48 8d 85 e0 fd ff ff 	lea    -0x220(%rbp),%rax
    462c:	48 89 c7             	mov    %rax,%rdi
    462f:	e8 dc dc ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
			return os <<  '|' << make_cell(std::to_string(line.operations))<< '|'
    4634:	48 8d 85 c0 fd ff ff 	lea    -0x240(%rbp),%rax
    463b:	48 89 c7             	mov    %rax,%rdi
    463e:	e8 cd dc ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    4643:	48 8d 85 a0 fd ff ff 	lea    -0x260(%rbp),%rax
    464a:	48 89 c7             	mov    %rax,%rdi
    464d:	e8 be dc ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
				  <<  make_cell(std::to_string(line.result)) << "|\n";
    4652:	48 89 d8             	mov    %rbx,%rax
		    }
    4655:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    4659:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    4660:	00 00 
    4662:	0f 84 ba 01 00 00    	je     4822 <_ZN3hse8parallel4lab1lsERSoRKNS1_10Line_stateE+0x62a>
    4668:	e9 b0 01 00 00       	jmpq   481d <_ZN3hse8parallel4lab1lsERSoRKNS1_10Line_stateE+0x625>
    466d:	f3 0f 1e fa          	endbr64 
    4671:	48 89 c3             	mov    %rax,%rbx
				  <<  make_cell(std::to_string(line.result)) << "|\n";
    4674:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    4678:	48 89 c7             	mov    %rax,%rdi
    467b:	e8 90 dc ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    4680:	eb 07                	jmp    4689 <_ZN3hse8parallel4lab1lsERSoRKNS1_10Line_stateE+0x491>
    4682:	f3 0f 1e fa          	endbr64 
    4686:	48 89 c3             	mov    %rax,%rbx
    4689:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    468d:	48 89 c7             	mov    %rax,%rdi
    4690:	e8 7b dc ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    4695:	eb 07                	jmp    469e <_ZN3hse8parallel4lab1lsERSoRKNS1_10Line_stateE+0x4a6>
    4697:	f3 0f 1e fa          	endbr64 
    469b:	48 89 c3             	mov    %rax,%rbx
				  <<  make_cell(std::to_string(line.IPS))<< '|'
    469e:	48 8d 45 80          	lea    -0x80(%rbp),%rax
    46a2:	48 89 c7             	mov    %rax,%rdi
    46a5:	e8 66 dc ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    46aa:	eb 07                	jmp    46b3 <_ZN3hse8parallel4lab1lsERSoRKNS1_10Line_stateE+0x4bb>
    46ac:	f3 0f 1e fa          	endbr64 
    46b0:	48 89 c3             	mov    %rax,%rbx
    46b3:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
    46ba:	48 89 c7             	mov    %rax,%rdi
    46bd:	e8 4e dc ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    46c2:	eb 07                	jmp    46cb <_ZN3hse8parallel4lab1lsERSoRKNS1_10Line_stateE+0x4d3>
    46c4:	f3 0f 1e fa          	endbr64 
    46c8:	48 89 c3             	mov    %rax,%rbx
				  <<  make_cell(std::to_string(line.IPC))<< '|'
    46cb:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
    46d2:	48 89 c7             	mov    %rax,%rdi
    46d5:	e8 36 dc ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    46da:	eb 07                	jmp    46e3 <_ZN3hse8parallel4lab1lsERSoRKNS1_10Line_stateE+0x4eb>
    46dc:	f3 0f 1e fa          	endbr64 
    46e0:	48 89 c3             	mov    %rax,%rbx
    46e3:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
    46ea:	48 89 c7             	mov    %rax,%rdi
    46ed:	e8 1e dc ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    46f2:	eb 07                	jmp    46fb <_ZN3hse8parallel4lab1lsERSoRKNS1_10Line_stateE+0x503>
    46f4:	f3 0f 1e fa          	endbr64 
    46f8:	48 89 c3             	mov    %rax,%rbx
				  <<  make_cell(std::to_string(line.pace))<< '|'
    46fb:	48 8d 85 00 ff ff ff 	lea    -0x100(%rbp),%rax
    4702:	48 89 c7             	mov    %rax,%rdi
    4705:	e8 06 dc ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    470a:	eb 07                	jmp    4713 <_ZN3hse8parallel4lab1lsERSoRKNS1_10Line_stateE+0x51b>
    470c:	f3 0f 1e fa          	endbr64 
    4710:	48 89 c3             	mov    %rax,%rbx
    4713:	48 8d 85 e0 fe ff ff 	lea    -0x120(%rbp),%rax
    471a:	48 89 c7             	mov    %rax,%rdi
    471d:	e8 ee db ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    4722:	eb 07                	jmp    472b <_ZN3hse8parallel4lab1lsERSoRKNS1_10Line_stateE+0x533>
    4724:	f3 0f 1e fa          	endbr64 
    4728:	48 89 c3             	mov    %rax,%rbx
				  <<  make_cell(std::to_string(line.tacts_per_sec))<< '|'
    472b:	48 8d 85 c0 fe ff ff 	lea    -0x140(%rbp),%rax
    4732:	48 89 c7             	mov    %rax,%rdi
    4735:	e8 d6 db ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    473a:	eb 07                	jmp    4743 <_ZN3hse8parallel4lab1lsERSoRKNS1_10Line_stateE+0x54b>
    473c:	f3 0f 1e fa          	endbr64 
    4740:	48 89 c3             	mov    %rax,%rbx
    4743:	48 8d 85 a0 fe ff ff 	lea    -0x160(%rbp),%rax
    474a:	48 89 c7             	mov    %rax,%rdi
    474d:	e8 be db ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    4752:	eb 07                	jmp    475b <_ZN3hse8parallel4lab1lsERSoRKNS1_10Line_stateE+0x563>
    4754:	f3 0f 1e fa          	endbr64 
    4758:	48 89 c3             	mov    %rax,%rbx
				  <<  make_cell(std::to_string(line.tact_duration))<< '|'
    475b:	48 8d 85 80 fe ff ff 	lea    -0x180(%rbp),%rax
    4762:	48 89 c7             	mov    %rax,%rdi
    4765:	e8 a6 db ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    476a:	eb 07                	jmp    4773 <_ZN3hse8parallel4lab1lsERSoRKNS1_10Line_stateE+0x57b>
    476c:	f3 0f 1e fa          	endbr64 
    4770:	48 89 c3             	mov    %rax,%rbx
    4773:	48 8d 85 60 fe ff ff 	lea    -0x1a0(%rbp),%rax
    477a:	48 89 c7             	mov    %rax,%rdi
    477d:	e8 8e db ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    4782:	eb 07                	jmp    478b <_ZN3hse8parallel4lab1lsERSoRKNS1_10Line_stateE+0x593>
    4784:	f3 0f 1e fa          	endbr64 
    4788:	48 89 c3             	mov    %rax,%rbx
				  <<  make_cell(std::to_string(line.ops_per_sec))<< '|'
    478b:	48 8d 85 40 fe ff ff 	lea    -0x1c0(%rbp),%rax
    4792:	48 89 c7             	mov    %rax,%rdi
    4795:	e8 76 db ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    479a:	eb 07                	jmp    47a3 <_ZN3hse8parallel4lab1lsERSoRKNS1_10Line_stateE+0x5ab>
    479c:	f3 0f 1e fa          	endbr64 
    47a0:	48 89 c3             	mov    %rax,%rbx
    47a3:	48 8d 85 20 fe ff ff 	lea    -0x1e0(%rbp),%rax
    47aa:	48 89 c7             	mov    %rax,%rdi
    47ad:	e8 5e db ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    47b2:	eb 07                	jmp    47bb <_ZN3hse8parallel4lab1lsERSoRKNS1_10Line_stateE+0x5c3>
    47b4:	f3 0f 1e fa          	endbr64 
    47b8:	48 89 c3             	mov    %rax,%rbx
				  <<  make_cell(std::to_string(line.secs))<< '|'
    47bb:	48 8d 85 00 fe ff ff 	lea    -0x200(%rbp),%rax
    47c2:	48 89 c7             	mov    %rax,%rdi
    47c5:	e8 46 db ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    47ca:	eb 07                	jmp    47d3 <_ZN3hse8parallel4lab1lsERSoRKNS1_10Line_stateE+0x5db>
    47cc:	f3 0f 1e fa          	endbr64 
    47d0:	48 89 c3             	mov    %rax,%rbx
    47d3:	48 8d 85 e0 fd ff ff 	lea    -0x220(%rbp),%rax
    47da:	48 89 c7             	mov    %rax,%rdi
    47dd:	e8 2e db ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    47e2:	eb 07                	jmp    47eb <_ZN3hse8parallel4lab1lsERSoRKNS1_10Line_stateE+0x5f3>
    47e4:	f3 0f 1e fa          	endbr64 
    47e8:	48 89 c3             	mov    %rax,%rbx
			return os <<  '|' << make_cell(std::to_string(line.operations))<< '|'
    47eb:	48 8d 85 c0 fd ff ff 	lea    -0x240(%rbp),%rax
    47f2:	48 89 c7             	mov    %rax,%rdi
    47f5:	e8 16 db ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    47fa:	eb 07                	jmp    4803 <_ZN3hse8parallel4lab1lsERSoRKNS1_10Line_stateE+0x60b>
    47fc:	f3 0f 1e fa          	endbr64 
    4800:	48 89 c3             	mov    %rax,%rbx
    4803:	48 8d 85 a0 fd ff ff 	lea    -0x260(%rbp),%rax
    480a:	48 89 c7             	mov    %rax,%rdi
    480d:	e8 fe da ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    4812:	48 89 d8             	mov    %rbx,%rax
    4815:	48 89 c7             	mov    %rax,%rdi
    4818:	e8 73 dc ff ff       	callq  2490 <_Unwind_Resume@plt>
		    }
    481d:	e8 ce db ff ff       	callq  23f0 <__stack_chk_fail@plt>
    4822:	48 81 c4 68 02 00 00 	add    $0x268,%rsp
    4829:	5b                   	pop    %rbx
    482a:	5d                   	pop    %rbp
    482b:	c3                   	retq   

000000000000482c <_Z41__static_initialization_and_destruction_0ii>:

}
    482c:	f3 0f 1e fa          	endbr64 
    4830:	55                   	push   %rbp
    4831:	48 89 e5             	mov    %rsp,%rbp
    4834:	48 83 ec 10          	sub    $0x10,%rsp
    4838:	89 7d fc             	mov    %edi,-0x4(%rbp)
    483b:	89 75 f8             	mov    %esi,-0x8(%rbp)
    483e:	83 7d fc 01          	cmpl   $0x1,-0x4(%rbp)
    4842:	75 32                	jne    4876 <_Z41__static_initialization_and_destruction_0ii+0x4a>
    4844:	81 7d f8 ff ff 00 00 	cmpl   $0xffff,-0x8(%rbp)
    484b:	75 29                	jne    4876 <_Z41__static_initialization_and_destruction_0ii+0x4a>
    484d:	48 8d 3d fe 38 00 00 	lea    0x38fe(%rip),%rdi        # 8152 <_ZStL8__ioinit>
    4854:	e8 07 dc ff ff       	callq  2460 <_ZNSt8ios_base4InitC1Ev@plt>
    4859:	48 8d 15 a8 37 00 00 	lea    0x37a8(%rip),%rdx        # 8008 <__dso_handle>
    4860:	48 8d 35 eb 38 00 00 	lea    0x38eb(%rip),%rsi        # 8152 <_ZStL8__ioinit>
    4867:	48 8b 05 8a 37 00 00 	mov    0x378a(%rip),%rax        # 7ff8 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
    486e:	48 89 c7             	mov    %rax,%rdi
    4871:	e8 0a db ff ff       	callq  2380 <__cxa_atexit@plt>
    4876:	90                   	nop
    4877:	c9                   	leaveq 
    4878:	c3                   	retq   

0000000000004879 <_GLOBAL__sub_I__ZN3hse8parallel4lab110make_breakB5cxx11Ev>:
    4879:	f3 0f 1e fa          	endbr64 
    487d:	55                   	push   %rbp
    487e:	48 89 e5             	mov    %rsp,%rbp
    4881:	be ff ff 00 00       	mov    $0xffff,%esi
    4886:	bf 01 00 00 00       	mov    $0x1,%edi
    488b:	e8 9c ff ff ff       	callq  482c <_Z41__static_initialization_and_destruction_0ii>
    4890:	5d                   	pop    %rbp
    4891:	c3                   	retq   

0000000000004892 <_ZNSt7__cxx119to_stringEi>:
  // NB: (v)snprintf vs sprintf.

  // DR 1261.
  inline string
  to_string(int __val)
  { return __gnu_cxx::__to_xstring<string>(&std::vsnprintf, 4 * sizeof(int),
    4892:	f3 0f 1e fa          	endbr64 
    4896:	55                   	push   %rbp
    4897:	48 89 e5             	mov    %rsp,%rbp
    489a:	48 83 ec 20          	sub    $0x20,%rsp
    489e:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    48a2:	89 75 e4             	mov    %esi,-0x1c(%rbp)
    48a5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    48ac:	00 00 
    48ae:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    48b2:	31 c0                	xor    %eax,%eax
					   "%d", __val); }
    48b4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    48b8:	8b 55 e4             	mov    -0x1c(%rbp),%edx
    48bb:	41 89 d0             	mov    %edx,%r8d
    48be:	48 8d 0d 9c 17 00 00 	lea    0x179c(%rip),%rcx        # 6061 <_ZStL19piecewise_construct+0x1>
    48c5:	ba 10 00 00 00       	mov    $0x10,%edx
    48ca:	48 8b 35 ff 36 00 00 	mov    0x36ff(%rip),%rsi        # 7fd0 <vsnprintf@GLIBC_2.2.5>
    48d1:	48 89 c7             	mov    %rax,%rdi
    48d4:	b8 00 00 00 00       	mov    $0x0,%eax
    48d9:	e8 f4 00 00 00       	callq  49d2 <_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z>
    48de:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    48e2:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    48e9:	00 00 
    48eb:	74 05                	je     48f2 <_ZNSt7__cxx119to_stringEi+0x60>
    48ed:	e8 fe da ff ff       	callq  23f0 <__stack_chk_fail@plt>
    48f2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    48f6:	c9                   	leaveq 
    48f7:	c3                   	retq   

00000000000048f8 <_ZNSt7__cxx119to_stringEm>:
  { return __gnu_cxx::__to_xstring<string>(&std::vsnprintf, 4 * sizeof(long),
					   "%ld", __val); }

  inline string
  to_string(unsigned long __val)
  { return __gnu_cxx::__to_xstring<string>(&std::vsnprintf,
    48f8:	f3 0f 1e fa          	endbr64 
    48fc:	55                   	push   %rbp
    48fd:	48 89 e5             	mov    %rsp,%rbp
    4900:	48 83 ec 20          	sub    $0x20,%rsp
    4904:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    4908:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    490c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    4913:	00 00 
    4915:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    4919:	31 c0                	xor    %eax,%eax
					   4 * sizeof(unsigned long),
					   "%lu", __val); }
    491b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    491f:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    4923:	49 89 d0             	mov    %rdx,%r8
    4926:	48 8d 0d 37 17 00 00 	lea    0x1737(%rip),%rcx        # 6064 <_ZStL19piecewise_construct+0x4>
    492d:	ba 20 00 00 00       	mov    $0x20,%edx
    4932:	48 8b 35 97 36 00 00 	mov    0x3697(%rip),%rsi        # 7fd0 <vsnprintf@GLIBC_2.2.5>
    4939:	48 89 c7             	mov    %rax,%rdi
    493c:	b8 00 00 00 00       	mov    $0x0,%eax
    4941:	e8 8c 00 00 00       	callq  49d2 <_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z>
    4946:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    494a:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    4951:	00 00 
    4953:	74 05                	je     495a <_ZNSt7__cxx119to_stringEm+0x62>
    4955:	e8 96 da ff ff       	callq  23f0 <__stack_chk_fail@plt>
    495a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    495e:	c9                   	leaveq 
    495f:	c3                   	retq   

0000000000004960 <_ZNSt7__cxx119to_stringEd>:
					   "%f", __val);
  }

  inline string
  to_string(double __val)
  {
    4960:	f3 0f 1e fa          	endbr64 
    4964:	55                   	push   %rbp
    4965:	48 89 e5             	mov    %rsp,%rbp
    4968:	48 83 ec 20          	sub    $0x20,%rsp
    496c:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    4970:	c5 fb 11 45 e0       	vmovsd %xmm0,-0x20(%rbp)
    4975:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    497c:	00 00 
    497e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    4982:	31 c0                	xor    %eax,%eax
    const int __n = 
    4984:	c7 45 f4 48 01 00 00 	movl   $0x148,-0xc(%rbp)
      __gnu_cxx::__numeric_traits<double>::__max_exponent10 + 20;
    return __gnu_cxx::__to_xstring<string>(&std::vsnprintf, __n,
					   "%f", __val);
    498b:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
    498f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    4993:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
    4998:	48 8d 0d c9 16 00 00 	lea    0x16c9(%rip),%rcx        # 6068 <_ZStL19piecewise_construct+0x8>
    499f:	ba 48 01 00 00       	mov    $0x148,%edx
    49a4:	48 8b 05 25 36 00 00 	mov    0x3625(%rip),%rax        # 7fd0 <vsnprintf@GLIBC_2.2.5>
    49ab:	48 89 c6             	mov    %rax,%rsi
    49ae:	b8 01 00 00 00       	mov    $0x1,%eax
    49b3:	e8 1a 00 00 00       	callq  49d2 <_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z>
  }
    49b8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    49bc:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    49c3:	00 00 
    49c5:	74 05                	je     49cc <_ZNSt7__cxx119to_stringEd+0x6c>
    49c7:	e8 24 da ff ff       	callq  23f0 <__stack_chk_fail@plt>
    49cc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    49d0:	c9                   	leaveq 
    49d1:	c3                   	retq   

00000000000049d2 <_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z>:
    }

  // Helper for the to_string / to_wstring functions.
  template<typename _String, typename _CharT = typename _String::value_type>
    _String
    __to_xstring(int (*__convf) (_CharT*, std::size_t, const _CharT*,
    49d2:	f3 0f 1e fa          	endbr64 
    49d6:	55                   	push   %rbp
    49d7:	48 89 e5             	mov    %rsp,%rbp
    49da:	53                   	push   %rbx
    49db:	48 81 ec 08 01 00 00 	sub    $0x108,%rsp
    49e2:	48 89 bd 08 ff ff ff 	mov    %rdi,-0xf8(%rbp)
    49e9:	48 89 b5 00 ff ff ff 	mov    %rsi,-0x100(%rbp)
    49f0:	48 89 95 f8 fe ff ff 	mov    %rdx,-0x108(%rbp)
    49f7:	48 89 8d f0 fe ff ff 	mov    %rcx,-0x110(%rbp)
    49fe:	4c 89 85 60 ff ff ff 	mov    %r8,-0xa0(%rbp)
    4a05:	4c 89 8d 68 ff ff ff 	mov    %r9,-0x98(%rbp)
    4a0c:	84 c0                	test   %al,%al
    4a0e:	74 2b                	je     4a3b <_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z+0x69>
    4a10:	c5 f8 29 85 70 ff ff 	vmovaps %xmm0,-0x90(%rbp)
    4a17:	ff 
    4a18:	c5 f8 29 4d 80       	vmovaps %xmm1,-0x80(%rbp)
    4a1d:	c5 f8 29 55 90       	vmovaps %xmm2,-0x70(%rbp)
    4a22:	c5 f8 29 5d a0       	vmovaps %xmm3,-0x60(%rbp)
    4a27:	c5 f8 29 65 b0       	vmovaps %xmm4,-0x50(%rbp)
    4a2c:	c5 f8 29 6d c0       	vmovaps %xmm5,-0x40(%rbp)
    4a31:	c5 f8 29 75 d0       	vmovaps %xmm6,-0x30(%rbp)
    4a36:	c5 f8 29 7d e0       	vmovaps %xmm7,-0x20(%rbp)
    4a3b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    4a42:	00 00 
    4a44:	48 89 85 38 ff ff ff 	mov    %rax,-0xc8(%rbp)
    4a4b:	31 c0                	xor    %eax,%eax
				 __builtin_va_list), std::size_t __n,
		 const _CharT* __fmt, ...)
    {
      // XXX Eventually the result should be constructed in-place in
      // the __cxx11 string, likely with the help of internal hooks.
      _CharT* __s = static_cast<_CharT*>(__builtin_alloca(sizeof(_CharT)
    4a4d:	48 8b 85 f8 fe ff ff 	mov    -0x108(%rbp),%rax
    4a54:	48 8d 50 18          	lea    0x18(%rax),%rdx
    4a58:	b8 10 00 00 00       	mov    $0x10,%eax
    4a5d:	48 ff c8             	dec    %rax
    4a60:	48 01 d0             	add    %rdx,%rax
    4a63:	b9 10 00 00 00       	mov    $0x10,%ecx
    4a68:	ba 00 00 00 00       	mov    $0x0,%edx
    4a6d:	48 f7 f1             	div    %rcx
    4a70:	48 6b c0 10          	imul   $0x10,%rax,%rax
    4a74:	48 89 c2             	mov    %rax,%rdx
    4a77:	48 81 e2 00 f0 ff ff 	and    $0xfffffffffffff000,%rdx
    4a7e:	48 89 e3             	mov    %rsp,%rbx
    4a81:	48 29 d3             	sub    %rdx,%rbx
    4a84:	48 89 da             	mov    %rbx,%rdx
    4a87:	48 39 d4             	cmp    %rdx,%rsp
    4a8a:	74 12                	je     4a9e <_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z+0xcc>
    4a8c:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    4a93:	48 83 8c 24 f8 0f 00 	orq    $0x0,0xff8(%rsp)
    4a9a:	00 00 
    4a9c:	eb e9                	jmp    4a87 <_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z+0xb5>
    4a9e:	48 89 c2             	mov    %rax,%rdx
    4aa1:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
    4aa7:	48 29 d4             	sub    %rdx,%rsp
    4aaa:	48 89 c2             	mov    %rax,%rdx
    4aad:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
    4ab3:	48 85 d2             	test   %rdx,%rdx
    4ab6:	74 10                	je     4ac8 <_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z+0xf6>
    4ab8:	25 ff 0f 00 00       	and    $0xfff,%eax
    4abd:	48 83 e8 08          	sub    $0x8,%rax
    4ac1:	48 01 e0             	add    %rsp,%rax
    4ac4:	48 83 08 00          	orq    $0x0,(%rax)
    4ac8:	48 89 e0             	mov    %rsp,%rax
    4acb:	48 83 c0 1f          	add    $0x1f,%rax
    4acf:	48 c1 e8 05          	shr    $0x5,%rax
    4ad3:	48 c1 e0 05          	shl    $0x5,%rax
    4ad7:	48 89 85 18 ff ff ff 	mov    %rax,-0xe8(%rbp)
							  * __n));

      __builtin_va_list __args;
      __builtin_va_start(__args, __fmt);
    4ade:	c7 85 20 ff ff ff 20 	movl   $0x20,-0xe0(%rbp)
    4ae5:	00 00 00 
    4ae8:	c7 85 24 ff ff ff 30 	movl   $0x30,-0xdc(%rbp)
    4aef:	00 00 00 
    4af2:	48 8d 45 10          	lea    0x10(%rbp),%rax
    4af6:	48 89 85 28 ff ff ff 	mov    %rax,-0xd8(%rbp)
    4afd:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
    4b04:	48 89 85 30 ff ff ff 	mov    %rax,-0xd0(%rbp)

      const int __len = __convf(__s, __n, __fmt, __args);
    4b0b:	48 8d 8d 20 ff ff ff 	lea    -0xe0(%rbp),%rcx
    4b12:	48 8b 95 f0 fe ff ff 	mov    -0x110(%rbp),%rdx
    4b19:	48 8b b5 f8 fe ff ff 	mov    -0x108(%rbp),%rsi
    4b20:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
    4b27:	4c 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%r8
    4b2e:	48 89 c7             	mov    %rax,%rdi
    4b31:	41 ff d0             	callq  *%r8
    4b34:	89 85 14 ff ff ff    	mov    %eax,-0xec(%rbp)

      __builtin_va_end(__args);

      return _String(__s, __s + __len);
    4b3a:	48 8d 85 13 ff ff ff 	lea    -0xed(%rbp),%rax
    4b41:	48 89 c7             	mov    %rax,%rdi
    4b44:	e8 57 d9 ff ff       	callq  24a0 <_ZNSaIcEC1Ev@plt>
    4b49:	8b 85 14 ff ff ff    	mov    -0xec(%rbp),%eax
    4b4f:	48 63 d0             	movslq %eax,%rdx
    4b52:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
    4b59:	48 8d 3c 02          	lea    (%rdx,%rax,1),%rdi
    4b5d:	48 8d 95 13 ff ff ff 	lea    -0xed(%rbp),%rdx
    4b64:	48 8b b5 18 ff ff ff 	mov    -0xe8(%rbp),%rsi
    4b6b:	48 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%rax
    4b72:	48 89 d1             	mov    %rdx,%rcx
    4b75:	48 89 fa             	mov    %rdi,%rdx
    4b78:	48 89 c7             	mov    %rax,%rdi
    4b7b:	e8 04 03 00 00       	callq  4e84 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IPcvEET_S7_RKS3_>
    4b80:	48 8d 85 13 ff ff ff 	lea    -0xed(%rbp),%rax
    4b87:	48 89 c7             	mov    %rax,%rdi
    4b8a:	e8 41 d8 ff ff       	callq  23d0 <_ZNSaIcED1Ev@plt>
    }
    4b8f:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
    4b96:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    4b9d:	00 00 
    4b9f:	74 28                	je     4bc9 <_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z+0x1f7>
    4ba1:	eb 21                	jmp    4bc4 <_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z+0x1f2>
    4ba3:	f3 0f 1e fa          	endbr64 
    4ba7:	48 89 c3             	mov    %rax,%rbx
      return _String(__s, __s + __len);
    4baa:	48 8d 85 13 ff ff ff 	lea    -0xed(%rbp),%rax
    4bb1:	48 89 c7             	mov    %rax,%rdi
    4bb4:	e8 17 d8 ff ff       	callq  23d0 <_ZNSaIcED1Ev@plt>
    4bb9:	48 89 d8             	mov    %rbx,%rax
    4bbc:	48 89 c7             	mov    %rax,%rdi
    4bbf:	e8 cc d8 ff ff       	callq  2490 <_Unwind_Resume@plt>
    }
    4bc4:	e8 27 d8 ff ff       	callq  23f0 <__stack_chk_fail@plt>
    4bc9:	48 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%rax
    4bd0:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    4bd4:	c9                   	leaveq 
    4bd5:	c3                   	retq   

0000000000004bd6 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev>:
      struct _Alloc_hider : allocator_type // TODO check __is_final
    4bd6:	f3 0f 1e fa          	endbr64 
    4bda:	55                   	push   %rbp
    4bdb:	48 89 e5             	mov    %rsp,%rbp
    4bde:	48 83 ec 10          	sub    $0x10,%rsp
    4be2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    4be6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4bea:	48 89 c7             	mov    %rax,%rdi
    4bed:	e8 ce d6 ff ff       	callq  22c0 <_ZNSaIcED2Ev@plt>
    4bf2:	90                   	nop
    4bf3:	c9                   	leaveq 
    4bf4:	c3                   	retq   

0000000000004bf5 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_>:
    operator+(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
    4bf5:	f3 0f 1e fa          	endbr64 
    4bf9:	55                   	push   %rbp
    4bfa:	48 89 e5             	mov    %rsp,%rbp
    4bfd:	53                   	push   %rbx
    4bfe:	48 83 ec 38          	sub    $0x38,%rsp
    4c02:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    4c06:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    4c0a:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    4c0e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    4c15:	00 00 
    4c17:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    4c1b:	31 c0                	xor    %eax,%eax
      basic_string<_CharT, _Traits, _Alloc> __str(__lhs);
    4c1d:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    4c21:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4c25:	48 89 d6             	mov    %rdx,%rsi
    4c28:	48 89 c7             	mov    %rax,%rdi
    4c2b:	e8 c0 d6 ff ff       	callq  22f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_@plt>
      __str.append(__rhs);
    4c30:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    4c34:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4c38:	48 89 d6             	mov    %rdx,%rsi
    4c3b:	48 89 c7             	mov    %rax,%rdi
    4c3e:	e8 7d d8 ff ff       	callq  24c0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc@plt>
      return __str;
    4c43:	eb 1e                	jmp    4c63 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_+0x6e>
    4c45:	f3 0f 1e fa          	endbr64 
    4c49:	48 89 c3             	mov    %rax,%rbx
    4c4c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4c50:	48 89 c7             	mov    %rax,%rdi
    4c53:	e8 b8 d6 ff ff       	callq  2310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    4c58:	48 89 d8             	mov    %rbx,%rax
    4c5b:	48 89 c7             	mov    %rax,%rdi
    4c5e:	e8 2d d8 ff ff       	callq  2490 <_Unwind_Resume@plt>
    }
    4c63:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4c67:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    4c6e:	00 00 
    4c70:	74 05                	je     4c77 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_+0x82>
    4c72:	e8 79 d7 ff ff       	callq  23f0 <__stack_chk_fail@plt>
    4c77:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4c7b:	48 83 c4 38          	add    $0x38,%rsp
    4c7f:	5b                   	pop    %rbx
    4c80:	5d                   	pop    %rbp
    4c81:	c3                   	retq   

0000000000004c82 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_>:
    operator+(basic_string<_CharT, _Traits, _Alloc>&& __lhs,
    4c82:	f3 0f 1e fa          	endbr64 
    4c86:	55                   	push   %rbp
    4c87:	48 89 e5             	mov    %rsp,%rbp
    4c8a:	53                   	push   %rbx
    4c8b:	48 83 ec 38          	sub    $0x38,%rsp
    4c8f:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    4c93:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    4c97:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
      const auto __size = __lhs.size() + __rhs.size();
    4c9b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    4c9f:	48 89 c7             	mov    %rax,%rdi
    4ca2:	e8 99 d6 ff ff       	callq  2340 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv@plt>
    4ca7:	48 89 c3             	mov    %rax,%rbx
    4caa:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    4cae:	48 89 c7             	mov    %rax,%rdi
    4cb1:	e8 8a d6 ff ff       	callq  2340 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv@plt>
    4cb6:	48 01 d8             	add    %rbx,%rax
    4cb9:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
      const bool __cond = (__size > __lhs.capacity()
    4cbd:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    4cc1:	48 89 c7             	mov    %rax,%rdi
    4cc4:	e8 d7 d5 ff ff       	callq  22a0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv@plt>
			   && __size <= __rhs.capacity());
    4cc9:	48 39 45 e8          	cmp    %rax,-0x18(%rbp)
    4ccd:	76 19                	jbe    4ce8 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_+0x66>
    4ccf:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    4cd3:	48 89 c7             	mov    %rax,%rdi
    4cd6:	e8 c5 d5 ff ff       	callq  22a0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv@plt>
    4cdb:	48 39 45 e8          	cmp    %rax,-0x18(%rbp)
    4cdf:	77 07                	ja     4ce8 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_+0x66>
    4ce1:	b8 01 00 00 00       	mov    $0x1,%eax
    4ce6:	eb 05                	jmp    4ced <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_+0x6b>
    4ce8:	b8 00 00 00 00       	mov    $0x0,%eax
      const bool __cond = (__size > __lhs.capacity()
    4ced:	88 45 e7             	mov    %al,-0x19(%rbp)
	            : std::move(__lhs.append(__rhs));
    4cf0:	80 7d e7 00          	cmpb   $0x0,-0x19(%rbp)
    4cf4:	74 1f                	je     4d15 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_+0x93>
      return __cond ? std::move(__rhs.insert(0, __lhs))
    4cf6:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    4cfa:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    4cfe:	be 00 00 00 00       	mov    $0x0,%esi
    4d03:	48 89 c7             	mov    %rax,%rdi
    4d06:	e8 65 d7 ff ff       	callq  2470 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmRKS4_@plt>
    4d0b:	48 89 c7             	mov    %rax,%rdi
    4d0e:	e8 f1 01 00 00       	callq  4f04 <_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_>
    4d13:	eb 1b                	jmp    4d30 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_+0xae>
	            : std::move(__lhs.append(__rhs));
    4d15:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    4d19:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    4d1d:	48 89 d6             	mov    %rdx,%rsi
    4d20:	48 89 c7             	mov    %rax,%rdi
    4d23:	e8 a8 d7 ff ff       	callq  24d0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_@plt>
    4d28:	48 89 c7             	mov    %rax,%rdi
    4d2b:	e8 d4 01 00 00       	callq  4f04 <_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_>
    4d30:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    4d34:	48 89 c6             	mov    %rax,%rsi
    4d37:	48 89 d7             	mov    %rdx,%rdi
    4d3a:	e8 c1 d5 ff ff       	callq  2300 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_@plt>
    }
    4d3f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4d43:	48 83 c4 38          	add    $0x38,%rsp
    4d47:	5b                   	pop    %rbx
    4d48:	5d                   	pop    %rbp
    4d49:	c3                   	retq   

0000000000004d4a <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_OS8_>:
    operator+(_CharT __lhs,
    4d4a:	f3 0f 1e fa          	endbr64 
    4d4e:	55                   	push   %rbp
    4d4f:	48 89 e5             	mov    %rsp,%rbp
    4d52:	48 83 ec 20          	sub    $0x20,%rsp
    4d56:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    4d5a:	89 f0                	mov    %esi,%eax
    4d5c:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    4d60:	88 45 f4             	mov    %al,-0xc(%rbp)
    { return std::move(__rhs.insert(0, 1, __lhs)); }
    4d63:	0f be 55 f4          	movsbl -0xc(%rbp),%edx
    4d67:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4d6b:	89 d1                	mov    %edx,%ecx
    4d6d:	ba 01 00 00 00       	mov    $0x1,%edx
    4d72:	be 00 00 00 00       	mov    $0x0,%esi
    4d77:	48 89 c7             	mov    %rax,%rdi
    4d7a:	e8 71 d7 ff ff       	callq  24f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmmc@plt>
    4d7f:	48 89 c7             	mov    %rax,%rdi
    4d82:	e8 7d 01 00 00       	callq  4f04 <_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_>
    4d87:	48 89 c2             	mov    %rax,%rdx
    4d8a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4d8e:	48 89 d6             	mov    %rdx,%rsi
    4d91:	48 89 c7             	mov    %rax,%rdi
    4d94:	e8 67 d5 ff ff       	callq  2300 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_@plt>
    4d99:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4d9d:	c9                   	leaveq 
    4d9e:	c3                   	retq   

0000000000004d9f <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_>:
    operator+(basic_string<_CharT, _Traits, _Alloc>&& __lhs,
    4d9f:	f3 0f 1e fa          	endbr64 
    4da3:	55                   	push   %rbp
    4da4:	48 89 e5             	mov    %rsp,%rbp
    4da7:	48 83 ec 20          	sub    $0x20,%rsp
    4dab:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    4daf:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    4db3:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    { return std::move(__lhs.append(__rhs)); }
    4db7:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    4dbb:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    4dbf:	48 89 d6             	mov    %rdx,%rsi
    4dc2:	48 89 c7             	mov    %rax,%rdi
    4dc5:	e8 06 d7 ff ff       	callq  24d0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_@plt>
    4dca:	48 89 c7             	mov    %rax,%rdi
    4dcd:	e8 32 01 00 00       	callq  4f04 <_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_>
    4dd2:	48 89 c2             	mov    %rax,%rdx
    4dd5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4dd9:	48 89 d6             	mov    %rdx,%rsi
    4ddc:	48 89 c7             	mov    %rax,%rdi
    4ddf:	e8 1c d5 ff ff       	callq  2300 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_@plt>
    4de4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4de8:	c9                   	leaveq 
    4de9:	c3                   	retq   

0000000000004dea <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_>:
    operator+(basic_string<_CharT, _Traits, _Alloc>&& __lhs,
    4dea:	f3 0f 1e fa          	endbr64 
    4dee:	55                   	push   %rbp
    4def:	48 89 e5             	mov    %rsp,%rbp
    4df2:	48 83 ec 20          	sub    $0x20,%rsp
    4df6:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    4dfa:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    4dfe:	89 d0                	mov    %edx,%eax
    4e00:	88 45 ec             	mov    %al,-0x14(%rbp)
    { return std::move(__lhs.append(1, __rhs)); }
    4e03:	0f be 55 ec          	movsbl -0x14(%rbp),%edx
    4e07:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    4e0b:	be 01 00 00 00       	mov    $0x1,%esi
    4e10:	48 89 c7             	mov    %rax,%rdi
    4e13:	e8 a8 d5 ff ff       	callq  23c0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc@plt>
    4e18:	48 89 c7             	mov    %rax,%rdi
    4e1b:	e8 e4 00 00 00       	callq  4f04 <_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_>
    4e20:	48 89 c2             	mov    %rax,%rdx
    4e23:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4e27:	48 89 d6             	mov    %rdx,%rsi
    4e2a:	48 89 c7             	mov    %rax,%rdi
    4e2d:	e8 ce d4 ff ff       	callq  2300 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_@plt>
    4e32:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4e36:	c9                   	leaveq 
    4e37:	c3                   	retq   

0000000000004e38 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_>:
    operator+(basic_string<_CharT, _Traits, _Alloc>&& __lhs,
    4e38:	f3 0f 1e fa          	endbr64 
    4e3c:	55                   	push   %rbp
    4e3d:	48 89 e5             	mov    %rsp,%rbp
    4e40:	48 83 ec 20          	sub    $0x20,%rsp
    4e44:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    4e48:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    4e4c:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    { return std::move(__lhs.append(__rhs)); }
    4e50:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    4e54:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    4e58:	48 89 d6             	mov    %rdx,%rsi
    4e5b:	48 89 c7             	mov    %rax,%rdi
    4e5e:	e8 5d d6 ff ff       	callq  24c0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc@plt>
    4e63:	48 89 c7             	mov    %rax,%rdi
    4e66:	e8 99 00 00 00       	callq  4f04 <_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_>
    4e6b:	48 89 c2             	mov    %rax,%rdx
    4e6e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4e72:	48 89 d6             	mov    %rdx,%rsi
    4e75:	48 89 c7             	mov    %rax,%rdi
    4e78:	e8 83 d4 ff ff       	callq  2300 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_@plt>
    4e7d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4e81:	c9                   	leaveq 
    4e82:	c3                   	retq   
    4e83:	90                   	nop

0000000000004e84 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IPcvEET_S7_RKS3_>:
        basic_string(_InputIterator __beg, _InputIterator __end,
    4e84:	f3 0f 1e fa          	endbr64 
    4e88:	55                   	push   %rbp
    4e89:	48 89 e5             	mov    %rsp,%rbp
    4e8c:	53                   	push   %rbx
    4e8d:	48 83 ec 28          	sub    $0x28,%rsp
    4e91:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    4e95:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    4e99:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    4e9d:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
	: _M_dataplus(_M_local_data(), __a)
    4ea1:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
    4ea5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4ea9:	48 89 c7             	mov    %rax,%rdi
    4eac:	e8 af d4 ff ff       	callq  2360 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv@plt>
    4eb1:	48 89 c1             	mov    %rax,%rcx
    4eb4:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    4eb8:	48 89 c2             	mov    %rax,%rdx
    4ebb:	48 89 ce             	mov    %rcx,%rsi
    4ebe:	48 89 df             	mov    %rbx,%rdi
    4ec1:	e8 ea d4 ff ff       	callq  23b0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_@plt>
	{ _M_construct(__beg, __end); }
    4ec6:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    4eca:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    4ece:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4ed2:	48 89 ce             	mov    %rcx,%rsi
    4ed5:	48 89 c7             	mov    %rax,%rdi
    4ed8:	e8 39 00 00 00       	callq  4f16 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_>
    4edd:	eb 1e                	jmp    4efd <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IPcvEET_S7_RKS3_+0x79>
    4edf:	f3 0f 1e fa          	endbr64 
    4ee3:	48 89 c3             	mov    %rax,%rbx
	: _M_dataplus(_M_local_data(), __a)
    4ee6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4eea:	48 89 c7             	mov    %rax,%rdi
    4eed:	e8 e4 fc ff ff       	callq  4bd6 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev>
    4ef2:	48 89 d8             	mov    %rbx,%rax
    4ef5:	48 89 c7             	mov    %rax,%rdi
    4ef8:	e8 93 d5 ff ff       	callq  2490 <_Unwind_Resume@plt>
	{ _M_construct(__beg, __end); }
    4efd:	48 83 c4 28          	add    $0x28,%rsp
    4f01:	5b                   	pop    %rbx
    4f02:	5d                   	pop    %rbp
    4f03:	c3                   	retq   

0000000000004f04 <_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_>:
   *  @param  __t  A thing of arbitrary type.
   *  @return The parameter cast to an rvalue-reference to allow moving it.
  */
  template<typename _Tp>
    constexpr typename std::remove_reference<_Tp>::type&&
    move(_Tp&& __t) noexcept
    4f04:	f3 0f 1e fa          	endbr64 
    4f08:	55                   	push   %rbp
    4f09:	48 89 e5             	mov    %rsp,%rbp
    4f0c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return static_cast<typename std::remove_reference<_Tp>::type&&>(__t); }
    4f10:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4f14:	5d                   	pop    %rbp
    4f15:	c3                   	retq   

0000000000004f16 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_>:
        _M_construct(_InIterator __beg, _InIterator __end)
    4f16:	f3 0f 1e fa          	endbr64 
    4f1a:	55                   	push   %rbp
    4f1b:	48 89 e5             	mov    %rsp,%rbp
    4f1e:	48 83 ec 30          	sub    $0x30,%rsp
    4f22:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    4f26:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    4f2a:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    4f2e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    4f35:	00 00 
    4f37:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    4f3b:	31 c0                	xor    %eax,%eax
	  _M_construct_aux(__beg, __end, _Integral());
    4f3d:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    4f41:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    4f45:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4f49:	48 89 ce             	mov    %rcx,%rsi
    4f4c:	48 89 c7             	mov    %rax,%rdi
    4f4f:	e8 18 00 00 00       	callq  4f6c <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPcEEvT_S7_St12__false_type>
        }
    4f54:	90                   	nop
    4f55:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4f59:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    4f60:	00 00 
    4f62:	74 05                	je     4f69 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_+0x53>
    4f64:	e8 87 d4 ff ff       	callq  23f0 <__stack_chk_fail@plt>
    4f69:	c9                   	leaveq 
    4f6a:	c3                   	retq   
    4f6b:	90                   	nop

0000000000004f6c <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPcEEvT_S7_St12__false_type>:
        _M_construct_aux(_InIterator __beg, _InIterator __end,
    4f6c:	f3 0f 1e fa          	endbr64 
    4f70:	55                   	push   %rbp
    4f71:	48 89 e5             	mov    %rsp,%rbp
    4f74:	48 83 ec 30          	sub    $0x30,%rsp
    4f78:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    4f7c:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    4f80:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    4f84:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    4f8b:	00 00 
    4f8d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    4f91:	31 c0                	xor    %eax,%eax
          _M_construct(__beg, __end, _Tag());
    4f93:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    4f97:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    4f9b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4f9f:	48 89 ce             	mov    %rcx,%rsi
    4fa2:	48 89 c7             	mov    %rax,%rdi
    4fa5:	e8 18 00 00 00       	callq  4fc2 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag>
	}
    4faa:	90                   	nop
    4fab:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4faf:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    4fb6:	00 00 
    4fb8:	74 05                	je     4fbf <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPcEEvT_S7_St12__false_type+0x53>
    4fba:	e8 31 d4 ff ff       	callq  23f0 <__stack_chk_fail@plt>
    4fbf:	c9                   	leaveq 
    4fc0:	c3                   	retq   
    4fc1:	90                   	nop

0000000000004fc2 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag>:
      }

  template<typename _CharT, typename _Traits, typename _Alloc>
    template<typename _InIterator>
      void
      basic_string<_CharT, _Traits, _Alloc>::
    4fc2:	f3 0f 1e fa          	endbr64 
    4fc6:	55                   	push   %rbp
    4fc7:	48 89 e5             	mov    %rsp,%rbp
    4fca:	53                   	push   %rbx
    4fcb:	48 83 ec 38          	sub    $0x38,%rsp
    4fcf:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    4fd3:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    4fd7:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    4fdb:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    4fe2:	00 00 
    4fe4:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    4fe8:	31 c0                	xor    %eax,%eax
      _M_construct(_InIterator __beg, _InIterator __end,
		   std::forward_iterator_tag)
      {
	// NB: Not required, but considered best practice.
	if (__gnu_cxx::__is_null_pointer(__beg) && __beg != __end)
    4fea:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    4fee:	48 89 c7             	mov    %rax,%rdi
    4ff1:	e8 0f 01 00 00       	callq  5105 <_ZN9__gnu_cxx17__is_null_pointerIcEEbPT_>
    4ff6:	84 c0                	test   %al,%al
    4ff8:	74 11                	je     500b <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag+0x49>
    4ffa:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    4ffe:	48 3b 45 c8          	cmp    -0x38(%rbp),%rax
    5002:	74 07                	je     500b <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag+0x49>
    5004:	b8 01 00 00 00       	mov    $0x1,%eax
    5009:	eb 05                	jmp    5010 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag+0x4e>
    500b:	b8 00 00 00 00       	mov    $0x0,%eax
    5010:	84 c0                	test   %al,%al
    5012:	74 0c                	je     5020 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag+0x5e>
	  std::__throw_logic_error(__N("basic_string::"
    5014:	48 8d 3d b5 10 00 00 	lea    0x10b5(%rip),%rdi        # 60d0 <_ZStL19piecewise_construct+0x70>
    501b:	e8 30 d3 ff ff       	callq  2350 <_ZSt19__throw_logic_errorPKc@plt>
				       "_M_construct null not valid"));

	size_type __dnew = static_cast<size_type>(std::distance(__beg, __end));
    5020:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    5024:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    5028:	48 89 d6             	mov    %rdx,%rsi
    502b:	48 89 c7             	mov    %rax,%rdi
    502e:	e8 e8 00 00 00       	callq  511b <_ZSt8distanceIPcENSt15iterator_traitsIT_E15difference_typeES2_S2_>
    5033:	48 89 45 e0          	mov    %rax,-0x20(%rbp)

	if (__dnew > size_type(_S_local_capacity))
    5037:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    503b:	48 83 f8 0f          	cmp    $0xf,%rax
    503f:	76 3d                	jbe    507e <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag+0xbc>
	  {
	    _M_data(_M_create(__dnew, size_type(0)));
    5041:	48 8d 4d e0          	lea    -0x20(%rbp),%rcx
    5045:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    5049:	ba 00 00 00 00       	mov    $0x0,%edx
    504e:	48 89 ce             	mov    %rcx,%rsi
    5051:	48 89 c7             	mov    %rax,%rdi
    5054:	e8 57 d4 ff ff       	callq  24b0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
    5059:	48 89 c2             	mov    %rax,%rdx
    505c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    5060:	48 89 d6             	mov    %rdx,%rsi
    5063:	48 89 c7             	mov    %rax,%rdi
    5066:	e8 05 d3 ff ff       	callq  2370 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc@plt>
	    _M_capacity(__dnew);
    506b:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    506f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    5073:	48 89 d6             	mov    %rdx,%rsi
    5076:	48 89 c7             	mov    %rax,%rdi
    5079:	e8 62 d4 ff ff       	callq  24e0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm@plt>
	  }

	// Check for out_of_range and length_error exceptions.
	__try
	  { this->_S_copy_chars(_M_data(), __beg, __end); }
    507e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    5082:	48 89 c7             	mov    %rax,%rdi
    5085:	e8 56 d3 ff ff       	callq  23e0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv@plt>
    508a:	48 89 c1             	mov    %rax,%rcx
    508d:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    5091:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    5095:	48 89 c6             	mov    %rax,%rsi
    5098:	48 89 cf             	mov    %rcx,%rdi
    509b:	e8 30 d2 ff ff       	callq  22d0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcS5_S5_@plt>
	  {
	    _M_dispose();
	    __throw_exception_again;
	  }

	_M_set_length(__dnew);
    50a0:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    50a4:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    50a8:	48 89 d6             	mov    %rdx,%rsi
    50ab:	48 89 c7             	mov    %rax,%rdi
    50ae:	e8 7d d2 ff ff       	callq  2330 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm@plt>
      }
    50b3:	90                   	nop
    50b4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    50b8:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    50bf:	00 00 
    50c1:	74 3b                	je     50fe <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag+0x13c>
    50c3:	eb 34                	jmp    50f9 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag+0x137>
    50c5:	f3 0f 1e fa          	endbr64 
	__catch(...)
    50c9:	48 89 c7             	mov    %rax,%rdi
    50cc:	e8 0f d2 ff ff       	callq  22e0 <__cxa_begin_catch@plt>
	    _M_dispose();
    50d1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    50d5:	48 89 c7             	mov    %rax,%rdi
    50d8:	e8 33 d3 ff ff       	callq  2410 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@plt>
	    __throw_exception_again;
    50dd:	e8 5e d3 ff ff       	callq  2440 <__cxa_rethrow@plt>
    50e2:	f3 0f 1e fa          	endbr64 
    50e6:	48 89 c3             	mov    %rax,%rbx
	__catch(...)
    50e9:	e8 92 d3 ff ff       	callq  2480 <__cxa_end_catch@plt>
    50ee:	48 89 d8             	mov    %rbx,%rax
    50f1:	48 89 c7             	mov    %rax,%rdi
    50f4:	e8 97 d3 ff ff       	callq  2490 <_Unwind_Resume@plt>
      }
    50f9:	e8 f2 d2 ff ff       	callq  23f0 <__stack_chk_fail@plt>
    50fe:	48 83 c4 38          	add    $0x38,%rsp
    5102:	5b                   	pop    %rbx
    5103:	5d                   	pop    %rbp
    5104:	c3                   	retq   

0000000000005105 <_ZN9__gnu_cxx17__is_null_pointerIcEEbPT_>:


  // For use in string and vstring.
  template<typename _Type>
    inline bool
    __is_null_pointer(_Type* __ptr)
    5105:	f3 0f 1e fa          	endbr64 
    5109:	55                   	push   %rbp
    510a:	48 89 e5             	mov    %rsp,%rbp
    510d:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return __ptr == 0; }
    5111:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    5116:	0f 94 c0             	sete   %al
    5119:	5d                   	pop    %rbp
    511a:	c3                   	retq   

000000000000511b <_ZSt8distanceIPcENSt15iterator_traitsIT_E15difference_typeES2_S2_>:
   *  and are constant time.  For other %iterator classes they are linear time.
  */
  template<typename _InputIterator>
    inline _GLIBCXX17_CONSTEXPR
    typename iterator_traits<_InputIterator>::difference_type
    distance(_InputIterator __first, _InputIterator __last)
    511b:	f3 0f 1e fa          	endbr64 
    511f:	55                   	push   %rbp
    5120:	48 89 e5             	mov    %rsp,%rbp
    5123:	48 83 ec 20          	sub    $0x20,%rsp
    5127:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    512b:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    512f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    5136:	00 00 
    5138:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    513c:	31 c0                	xor    %eax,%eax
    {
      // concept requirements -- taken care of in __distance
      return std::__distance(__first, __last,
			     std::__iterator_category(__first));
    513e:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
    5142:	48 89 c7             	mov    %rax,%rdi
    5145:	e8 29 00 00 00       	callq  5173 <_ZSt19__iterator_categoryIPcENSt15iterator_traitsIT_E17iterator_categoryERKS2_>
      return std::__distance(__first, __last,
    514a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    514e:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    5152:	48 89 d6             	mov    %rdx,%rsi
    5155:	48 89 c7             	mov    %rax,%rdi
    5158:	e8 24 00 00 00       	callq  5181 <_ZSt10__distanceIPcENSt15iterator_traitsIT_E15difference_typeES2_S2_St26random_access_iterator_tag>
    }
    515d:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    5161:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    5168:	00 00 
    516a:	74 05                	je     5171 <_ZSt8distanceIPcENSt15iterator_traitsIT_E15difference_typeES2_S2_+0x56>
    516c:	e8 7f d2 ff ff       	callq  23f0 <__stack_chk_fail@plt>
    5171:	c9                   	leaveq 
    5172:	c3                   	retq   

0000000000005173 <_ZSt19__iterator_categoryIPcENSt15iterator_traitsIT_E17iterator_categoryERKS2_>:
   *  sugar for internal library use only.
  */
  template<typename _Iter>
    inline _GLIBCXX_CONSTEXPR
    typename iterator_traits<_Iter>::iterator_category
    __iterator_category(const _Iter&)
    5173:	f3 0f 1e fa          	endbr64 
    5177:	55                   	push   %rbp
    5178:	48 89 e5             	mov    %rsp,%rbp
    517b:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return typename iterator_traits<_Iter>::iterator_category(); }
    517f:	5d                   	pop    %rbp
    5180:	c3                   	retq   

0000000000005181 <_ZSt10__distanceIPcENSt15iterator_traitsIT_E15difference_typeES2_S2_St26random_access_iterator_tag>:
    __distance(_RandomAccessIterator __first, _RandomAccessIterator __last,
    5181:	f3 0f 1e fa          	endbr64 
    5185:	55                   	push   %rbp
    5186:	48 89 e5             	mov    %rsp,%rbp
    5189:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    518d:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
      return __last - __first;
    5191:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    5195:	48 2b 45 f8          	sub    -0x8(%rbp),%rax
    }
    5199:	5d                   	pop    %rbp
    519a:	c3                   	retq   
    519b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000051a0 <__libc_csu_init>:
    51a0:	f3 0f 1e fa          	endbr64 
    51a4:	41 57                	push   %r15
    51a6:	4c 8d 3d a3 2a 00 00 	lea    0x2aa3(%rip),%r15        # 7c50 <__frame_dummy_init_array_entry>
    51ad:	41 56                	push   %r14
    51af:	49 89 d6             	mov    %rdx,%r14
    51b2:	41 55                	push   %r13
    51b4:	49 89 f5             	mov    %rsi,%r13
    51b7:	41 54                	push   %r12
    51b9:	41 89 fc             	mov    %edi,%r12d
    51bc:	55                   	push   %rbp
    51bd:	48 8d 2d a4 2a 00 00 	lea    0x2aa4(%rip),%rbp        # 7c68 <__do_global_dtors_aux_fini_array_entry>
    51c4:	53                   	push   %rbx
    51c5:	4c 29 fd             	sub    %r15,%rbp
    51c8:	48 83 ec 08          	sub    $0x8,%rsp
    51cc:	e8 2f ce ff ff       	callq  2000 <_init>
    51d1:	48 c1 fd 03          	sar    $0x3,%rbp
    51d5:	74 1f                	je     51f6 <__libc_csu_init+0x56>
    51d7:	31 db                	xor    %ebx,%ebx
    51d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    51e0:	4c 89 f2             	mov    %r14,%rdx
    51e3:	4c 89 ee             	mov    %r13,%rsi
    51e6:	44 89 e7             	mov    %r12d,%edi
    51e9:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    51ed:	48 83 c3 01          	add    $0x1,%rbx
    51f1:	48 39 dd             	cmp    %rbx,%rbp
    51f4:	75 ea                	jne    51e0 <__libc_csu_init+0x40>
    51f6:	48 83 c4 08          	add    $0x8,%rsp
    51fa:	5b                   	pop    %rbx
    51fb:	5d                   	pop    %rbp
    51fc:	41 5c                	pop    %r12
    51fe:	41 5d                	pop    %r13
    5200:	41 5e                	pop    %r14
    5202:	41 5f                	pop    %r15
    5204:	c3                   	retq   
    5205:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    520c:	00 00 00 00 

0000000000005210 <__libc_csu_fini>:
    5210:	f3 0f 1e fa          	endbr64 
    5214:	c3                   	retq   

Дизассемблирование раздела .fini:

0000000000005218 <_fini>:
    5218:	f3 0f 1e fa          	endbr64 
    521c:	48 83 ec 08          	sub    $0x8,%rsp
    5220:	48 83 c4 08          	add    $0x8,%rsp
    5224:	c3                   	retq   
