Данный отчет и все связанные с ним материалы можно просмотреть по ссылке: https://github.com/jerrydie/parallel_1

# Оценка максимальной производительности системы

## Вариант задания и используемые технологии

Номер в таблице 24: вариант 8 - выбор операции и ее векторного исполнения за студентов. Сделанный выбор - целочисленное умножение, векторное целочисленное умножение.

Формулировка задачи:

- Написать программу, выполняющую в цикле заданную арифметическую операцию.
- Замерить время выполнения цикла. По результатам замера получить оценку производительности микропроцессора на заданной операции (в тактах процессора):
1. используя последовательность зависимых операций ("латентность"),
2. используя последовательность независимых операций("темп выдачи результатов").

Для корректности теста необходимо добиться того, чтобы после компиляции внутри цикла не было обращений в память, и все вычисления проходили на регистрах. Полезно убедиться в этом путём анализа ассемблерного листинга. Кроме того, необходимо следить, чтобы компилятор не устранил из кода нужные операции. При необходимости можно использовать для тестирования модификацию ассемблерного листинга, сгенерированного компилятором.

Данный отчет включает: 

+ листинг программы на С++ (`src/main.cpp, src/format.hpp, src/format.cpp`);
+ листинг на ассемблере (`src/asm.asm`);
+ оценки производительности и их сравнение с теоретическими;
+ вывод по результатам задания.

Для векторизации вычислений использованы встроенные функции компилятора: 
- `_mm_set_epi32` для задания 128-битного вектора 32-битными целыми числами (SSE2),
- `_mm_mullo_epi32` для векторного перемножения 128-битных целочисленных векторов (SSE4.1),
- `_mm_extract_epi32` для получения из результирующего 128-битного вектора 32-юитных целых чисел (SSE4.1).

## Характеристики системы
```
cmd: lscpu output
```

|Характеристика                   |Значение
| ------------------------------- | -----------------------------------------
|Архитектура:                     |x86_64
|CPU op-mode(s):                  |32-bit, 64-bit
|Порядок байт:                    |Little Endian
|Address sizes:                   |39 bits physical, 48 bits virtual
|CPU(s):                          |1
|On-line CPU(s) list:             |0
|Потоков на ядро:                 |1
|Ядер на сокет:                   |1
|Сокетов:                         |1
|NUMA node(s):                    |1
|ID прроизводителя:               |GenuineIntel
|Семейство ЦПУ:                   |6
|Модель:                          |158
|Имя модели:                      |Intel(R) Core(TM) i7-7700HQ CPU @ 2.80GHz
|Степпинг:                        |9
|CPU МГц:                         |2807.996

Компилятор: g++ (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0

## Компиляция и создание ассемблерного листинга из исполняемого файла

```bash
cd project_folder/src
g++ main.cpp format.cpp -g -O0 -march=native -o test.o
objdump -S test.o > asm.asm

```

## Фрагменты ассемблерного кода с замеряемыми циклами

### SIMPLE MULTIPLICATION
```asm
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
```
Количество инструкций в одной операции - 8.
### SSE4.1 MULTIPLICATION

```asm
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
```
Количество инструкций в одной операции - 14.
## Результат измерений производитеьлности
```bash
./test.o
```

### SIMPLE MULTIPLICATION
|     OPERATIONS     |        TIME        |       GFLOPS       |  PROCESSOR CLOCKS  |  CLOCK RATE, GHz   |        PACE        |        IPC         |     IPS, 10^9      |  OPERATION RESULT  |
|--------------------|--------------------|--------------------|--------------------|--------------------|--------------------|--------------------|--------------------|--------------------|
|       10000        |      0.000020      |      0.506945      |       55109        |      2.793724      |      0.181459      |      1.451669      |      4.055561      |     1634275397     |
|       100000       |      0.000195      |      0.512707      |       547483       |      2.806986      |      0.182654      |      1.461233      |      4.101660      |     -20761979      |
|      1000000       |      0.003353      |      0.298214      |      9413695       |      2.807298      |      0.106228      |      0.849826      |      2.385714      |     2135439621     |
|      10000000      |      0.041604      |      0.240360      |     116750484      |      2.806216      |      0.085653      |      0.685222      |      1.922881      |     -217368059     |
|     100000000      |      0.298145      |      0.335407      |     837183873      |      2.807974      |      0.119448      |      0.955585      |      2.683257      |    -1867234299     |


### SSE4.1 MULTIPLICATION
|     OPERATIONS     |        TIME        |       GFLOPS       |  PROCESSOR CLOCKS  |  CLOCK RATE, GHz   |        PACE        |        IPC         |     IPS, 10^9      |  OPERATION RESULT  |
|--------------------|--------------------|--------------------|--------------------|--------------------|--------------------|--------------------|--------------------|--------------------|
|       10000        |      0.000013      |      0.755744      |       37036        |      2.798972      |      0.270008      |      3.780106      |     10.580411      |     1538795669     |
|       100000       |      0.000132      |      0.757823      |       370400       |      2.806975      |      0.269978      |      3.779698      |     10.609517      |     648736421      |
|      1000000       |      0.001679      |      0.595481      |      4714099       |      2.807156      |      0.212130      |      2.969815      |      8.336733      |    -1768532411     |
|      10000000      |      0.021827      |      0.458156      |      61283997      |      2.807763      |      0.163175      |      2.284446      |      6.414184      |     1749479045     |
|     100000000      |      0.260745      |      0.383517      |     732163463      |      2.807968      |      0.136582      |      1.912141      |      5.369231      |     -477523707     |


### Пояснения и выводы
- GFLOPS = `operations / (seconds*10^9)` - вычислительная способность, в нашем случае для операций с целыми числами (single precision -ish) (так как в распоряжении виртуальной машины только одно ядро, теор. значение с SSE4.1: `1*16*2.8=44.8 GFLOPS`, максимальное теоретическое значение же, с учетом того, что процессор имеет 4 ядра и поддерживает AVX2: `4*32*2.8=358,5 GFLOPS (single precision); 4*16*2.8=179.2 GFLOPS (double precision)`, если же вдобавок учесть, что возможно увеличить частоту процессора до 3.8 с помощью технологии Turbo Boost, то получим `486.4 (single)` и `243.2 (double)`, соответственно. Теоретическая производительность оказывается на порядки выше реальной, во-первых, потому что использована более слабая векторизация с помощью SSE4.1 вместо поддерживаемой AVX2, во-вторых, используется только одно ядро вместо потенциально доступных четырех, в-третьих, помимо данной программы компьютер выполняет множество других, которые также уменьшаяют практическую вычислительную способность, в-четвертых, выполняется только умножение, когда одновременно может выполняться еще и сложение, которое учитывается при вычислении теоретической производительности;

- CLOCK RATE - тактовая частота процессора, с увеличением количества операций стремится к заявленной частоте - 2807.996 МГц;

- PACE - среднее время, затрачиваемое на выполнение одной операции, в тактах процессора (латентность в простом случае/ темп выдачи результатов в случае SSE4.1), теоретическое максимальное значение можно посчитать как: `PROCESSOR CLOCKS / OPERATIONS = CLOCK RATE / GFLOPS = 2.8 / 486.4 = 0.0057757`, что на порядки меньше полученного по тем же причинам, что и для GFLOPS;

- IPC - количество ассемблерных инструкций, выполненных за один такт, является характеристикой выполнения конкретной программы на конкретном вычислительном устройстве;

- IPS - количество ассемблерных инструкций, выполненных за одну секунду `IPC*CLOCK RATE`, теоретически максимальное значение - `IPC*3.8 GHz`.

- TPP - теоретическая пиковая проихводительность (еще раз отдельно подробно вычислим): 4 (ядра) x 2 (юнита) x 8 (ширина вектора AVX2) x 2 (сложение и умножение в FMA) x 3.8 (GHz) = 486.4 GFLOPS.

Измерения показывают, что использование SSE4.1 векторизации дает небольшой прирост производительности в 1.5-1.2 раза.

# Освоение векторизации и распараллеливания программ на системе с общей памятью. 
 
## Цель 
Научиться выполнять оптимизацию (векторизация и распараллеливание на потоки) программ. 
 
## Постановка задачи 
Оптимизировать заданную программу автоматически или полуавтоматически с помощью  компилятора, а также при желании с помощью intrinsics. Сравнить времена работы следующих  вариантов программы: 
- исходная программа, без оптимизации 
- исходная программа, оптимизированная только с помощью ключей компилятора, 
- программа, векторизованная полуавтоматически (с помощью директив и ключей компилятора и незначительной правки кода), 
- программа, векторизованная и распараллеленная полуавтоматически 
 
Во всех случаях использовать ключи оптимизации, дающие наименьшее время работы программы,  и наиболее позднее (эффективное) из доступных векторных расширений. По возможности  обеспечить использование команд выровненного чтения и записи векторов. В программе с ручной  векторизацией минимизировать количество обращений к памяти. На каждом этапе ручной  оптимизации проверить, что время работы программы уменьшилось. 

Вариант 3 - программа по выбору студента. Выбрано интегрирование методом Симпсона (источник: https://habr.com/ru/post/479202/).

## Исходная программа без оптимизации:

Функция интегрирования:
```C++
double simpsonIntegral(double a, double b, std::size_t n, const std::function<double (double)> &f) {
	    const double width = (b-a)/n;

	    double simpson_integral = 0;
	    for(std::size_t step = 0; step < n; step++) {
		const double x1 = a + step*width;
		const double x2 = a + (step+1)*width;

		simpson_integral += (x2-x1)/6.0*(f(x1) + 4.0*f(0.5*(x1+x2)) + f(x2));
	    }

	    return simpson_integral;
	}
```
```bash
polina@polina-VirtualBox:~/Prog/parallel_1/src2$ g++ main.cpp format.cpp -g -O0 -march=native -o test.o
polina@polina-VirtualBox:~/Prog/parallel_1/src2$ ./test.o
Type lower integration limit a: 1
Type upper integration limit b: 3
```
### SIMPSON INTEGRATION from a: 1 to b: 3
|   SPLIT SEGMENTS   |        TIME        |       GFLOPS       |  PROCESSOR CLOCKS  |  OPERATION RESULT  |
|--------------------|--------------------|--------------------|--------------------|--------------------|
|        100         |      0.000018      |   5406574.394464   |       51595        |     73.066667      |
|        1000        |      0.000179      |   5580294.862781   |       502985       |     73.066667      |
|       10000        |      0.001853      |   5397659.035276   |      5200462       |     73.066667      |
|       100000       |      0.016426      |   6088072.862543   |      46119393      |     73.066667      |
|      1000000       |      0.158018      |   6328409.788329   |     443705464      |     73.066667      |

## Исходная программа, оптимизированная только с помощью ключей компилятора
```bash
polina@polina-VirtualBox:~/Prog/parallel_1/src2$ g++ main.cpp format.cpp -g -Os -march=native -o test.o
polina@polina-VirtualBox:~/Prog/parallel_1/src2$ ./test.o
Type lower integration limit a: 1
Type upper integration limit b: 3
```
### SIMPSON INTEGRATION from a: 1 to b: 3
|   SPLIT SEGMENTS   |        TIME        |       GFLOPS       |  PROCESSOR CLOCKS  |  OPERATION RESULT  |
|--------------------|--------------------|--------------------|--------------------|--------------------|
|        100         |      0.000007      |  14912019.087384   |       18492        |     73.066667      |
|        1000        |      0.000065      |  15442107.538837   |       181675       |     73.066667      |
|       10000        |      0.000729      |  13714749.664674   |      2045632       |     73.066667      |
|       100000       |      0.006958      |  14371163.168893   |      19536556      |     73.066667      |
|      1000000       |      0.107312      |   9318583.084841   |     301325743      |     73.066667      |

```bash
polina@polina-VirtualBox:~/Prog/parallel_1/src2$ g++ main.cpp format.cpp -g -O1 -march=native -o test.o
polina@polina-VirtualBox:~/Prog/parallel_1/src2$ ./test.o
Type lower integration limit a: 1
Type upper integration limit b: 3
```

### SIMPSON INTEGRATION from a: 1 to b: 3
|   SPLIT SEGMENTS   |        TIME        |       GFLOPS       |  PROCESSOR CLOCKS  |  OPERATION RESULT  |
|--------------------|--------------------|--------------------|--------------------|--------------------|
|        100         |      0.000007      |  15304560.759106   |       18020        |     73.066667      |
|        1000        |      0.000064      |  15700312.436217   |       178689       |     73.066667      |
|       10000        |      0.000666      |  15018307.316619   |      1867925       |     73.066667      |
|       100000       |      0.006961      |  14365355.818371   |      19544941      |     73.066667      |
|      1000000       |      0.063272      |  15804705.927052   |     177610099      |     73.066667      |

```bash
polina@polina-VirtualBox:~/Prog/parallel_1/src2$ g++ main.cpp format.cpp -g -O2 -march=native -o test.o
polina@polina-VirtualBox:~/Prog/parallel_1/src2$ ./test.o
Type lower integration limit a: 1
Type upper integration limit b: 3
```

### SIMPSON INTEGRATION from a: 1 to b: 3
|   SPLIT SEGMENTS   |        TIME        |       GFLOPS       |  PROCESSOR CLOCKS  |  OPERATION RESULT  |
|--------------------|--------------------|--------------------|--------------------|--------------------|
|        100         |      0.000005      |  19592476.489028   |       14003        |     73.066667      |
|        1000        |      0.000049      |  20493903.063839   |       136836       |     73.066667      |
|       10000        |      0.000487      |  20528653.895107   |      1367652       |     73.066667      |
|       100000       |      0.005323      |  18785495.193167   |      14946082      |     73.066667      |
|      1000000       |      0.066177      |  15110910.532243   |     185820465      |     73.066667      |



```bash
polina@polina-VirtualBox:~/Prog/parallel_1/src2$ g++ main.cpp format.cpp -g -O3 -march=native -o test.o
polina@polina-VirtualBox:~/Prog/parallel_1/src2$ ./test.o
Type lower integration limit a: 1
Type upper integration limit b: 3
```

### SIMPSON INTEGRATION from a: 1 to b: 3
|   SPLIT SEGMENTS   |        TIME        |       GFLOPS       |  PROCESSOR CLOCKS  |  OPERATION RESULT  |
|--------------------|--------------------|--------------------|--------------------|--------------------|
|        100         |      0.000005      |  19630938.358854   |       13955        |     73.066667      |
|        1000        |      0.000049      |  20475439.710068   |       136961       |     73.066667      |
|       10000        |      0.000487      |  20528527.468196   |      1367657       |     73.066667      |
|       100000       |      0.004529      |  22078267.015003   |      12717010      |     73.066667      |
|      1000000       |      0.082843      |  12070966.758658   |     232608146      |     73.066667      |

```bash
polina@polina-VirtualBox:~/Prog/parallel_1/src2$ g++ main.cpp format.cpp -g -Ofast -march=native -o test.o
polina@polina-VirtualBox:~/Prog/parallel_1/src2$ ./test.o
Type lower integration limit a: 1
Type upper integration limit b: 3
```

### SIMPSON INTEGRATION from a: 1 to b: 3
|   SPLIT SEGMENTS   |        TIME        |       GFLOPS       |  PROCESSOR CLOCKS  |  OPERATION RESULT  |
|--------------------|--------------------|--------------------|--------------------|--------------------|
|        100         |      0.000005      |  19794140.934283   |       13882        |     73.066667      |
|        1000        |      0.000049      |  20462032.698328   |       137021       |     73.066667      |
|       10000        |      0.000488      |  20499028.346056   |      1369646       |     73.066667      |
|       100000       |      0.005587      |  17899097.062150   |      15686158      |     73.066667      |
|      1000000       |      0.079730      |  12542317.780190   |     223875100      |     73.066667      |

Наилучшую производительность показывают опции `-O2` и `-O3`.

## Полуавтоматическая векторизация
```C++
double simpsonIntegral(double a, double b, std::size_t n, const std::function<double (double)> &f) {
	    const double width = (b-a)/n;

	    double simpson_integral = 0;
	    #pragma omp simd
	    for(std::size_t step = 0; step < n; step++) {
		const double x1 = a + step*width;
		const double x2 = a + (step+1)*width;

		simpson_integral += (x2-x1)/6.0*(f(x1) + 4.0*f(0.5*(x1+x2)) + f(x2));
	    }

	    return simpson_integral;
	}
```
```bash
polina@polina-VirtualBox:~/Prog/parallel_1/src2$ g++ main_pragma.cpp format.cpp -g -O2 -march=native -o test.o -fopenmp
polina@polina-VirtualBox:~/Prog/parallel_1/src2$ ./test.o
Type lower integration limit a: 1
Type upper integration limit b: 3
```
### SIMPSON INTEGRATION from a: 1 to b: 3
|   SPLIT SEGMENTS   |        TIME        |       GFLOPS       |  PROCESSOR CLOCKS  |  OPERATION RESULT  |
|--------------------|--------------------|--------------------|--------------------|--------------------|
|        100         |      0.000005      |  20104543.626860   |       13663        |     73.066667      |
|        1000        |      0.000047      |  21259407.287725   |       131919       |     73.066667      |
|       10000        |      0.000502      |  19938191.606021   |      1406745       |     73.066667      |
|       100000       |      0.004940      |  20244144.381238   |      13868058      |     73.066667      |
|      1000000       |      0.052951      |  18885366.767987   |     148678439      |     73.066667      |

```bash
polina@polina-VirtualBox:~/Prog/parallel_1/src2$ g++ main_pragma.cpp format.cpp -g -O3 -march=native -o test.o -fopenmp
polina@polina-VirtualBox:~/Prog/parallel_1/src2$ ./test.o
Type lower integration limit a: 1
Type upper integration limit b: 3
```
### SIMPSON INTEGRATION from a: 1 to b: 3
|   SPLIT SEGMENTS   |        TIME        |       GFLOPS       |  PROCESSOR CLOCKS  |  OPERATION RESULT  |
|--------------------|--------------------|--------------------|--------------------|--------------------|
|        100         |      0.000004      |  24721878.862794   |       11157        |     73.066667      |
|        1000        |      0.000039      |  25570869.665277   |       109647       |     73.066667      |
|       10000        |      0.000466      |  21453610.857243   |      1307576       |     73.066667      |
|       100000       |      0.003967      |  25209509.934690   |      11136902      |     73.066667      |
|      1000000       |      0.074901      |  13350992.780491   |     210313570      |     73.066667      |

Незначительное улучшение производительности. Добавляем ручную векторизацию:

```C++
double simpsonIntegral(double a, double b, std::size_t n, const std::function<double (double)> &f) {
	    const double width = (b-a)/n;
	    auto g = [](double x1, double x2, const std::function<double (double)> &f_)->double{ return (x2-x1)/6.0*(f_(x1) + 4.0*f_(0.5*(x1+x2)) + f_(x2)); };
	    double simpson_integral_tmp[4] = {0.,0.,0.,0.};
	    double x1 = a;
	    #pragma omp simd
	    for( std::size_t step = 0; step < n ; step+=4) {
	        double x1 = a + step*width;
		simpson_integral_tmp[0] += g(x1, x1+width, f);
		x1 += width;
		simpson_integral_tmp[1] += g(x1, x1+width, f);
		x1 += width;
		simpson_integral_tmp[2] += g(x1, x1+width, f);
		x1 += width;
		simpson_integral_tmp[3] += g(x1, x1+width, f);
	    }
	    double simpson_integral = simpson_integral_tmp[0] + simpson_integral_tmp[1] + simpson_integral_tmp[2] + simpson_integral_tmp[3];
	    return simpson_integral;
	}
```
```bash
polina@polina-VirtualBox:~/Prog/parallel_1/src2$ g++ main_pragma.cpp format.cpp -g -O2 -march=native -o test.o -fopenmp
polina@polina-VirtualBox:~/Prog/parallel_1/src2$ ./test.o
Type lower integration limit a: 1
Type upper integration limit b: 3
```

### SIMPSON INTEGRATION from a: 1 to b: 3
|   SPLIT SEGMENTS   |        TIME        |       GFLOPS       |  PROCESSOR CLOCKS  |  OPERATION RESULT  |
|--------------------|--------------------|--------------------|--------------------|--------------------|
|        100         |      0.000004      |  26560424.966799   |       10320        |     73.066667      |
|        1000        |      0.000035      |  28225465.014536   |       99345        |     73.066667      |
|       10000        |      0.000386      |  25909152.148905   |      1083590       |     73.066667      |
|       100000       |      0.003887      |  25724994.662064   |      10912740      |     73.066667      |
|      1000000       |      0.052204      |  19155745.752529   |     146581901      |     73.066667      |

```bash
polina@polina-VirtualBox:~/Prog/parallel_1/src2$ g++ main_pragma.cpp format.cpp -g -O3 -march=native -o test.o -fopenmp
polina@polina-VirtualBox:~/Prog/parallel_1/src2$ ./test.o
Type lower integration limit a: 1
Type upper integration limit b: 3
```
### SIMPSON INTEGRATION from a: 1 to b: 3
|   SPLIT SEGMENTS   |        TIME        |       GFLOPS       |  PROCESSOR CLOCKS  |  OPERATION RESULT  |
|--------------------|--------------------|--------------------|--------------------|--------------------|
|        100         |      0.000004      |  26164311.878598   |       10488        |     73.066667      |
|        1000        |      0.000035      |  28273346.716051   |       99191        |     73.066667      |
|       10000        |      0.000370      |  27006954.290730   |      1038416       |     73.066667      |
|       100000       |      0.003914      |  25548265.783719   |      10989198      |     73.066667      |
|      1000000       |      0.049808      |  20077098.870456   |     139854657      |     73.066667      |

Также получем незначительное улучшение производительности.

## Полуавтоматическое распараллеливание

```C++
double simpsonIntegral(double a, double b, std::size_t n, const std::function<double (double)> &f) {
	    const double width = (b-a)/n;

	    double simpson_integral = 0;
	    #pragma omp parallel
	    #pragma omp simd
	    for(std::size_t step = 0; step < n; step++) {
		const double x1 = a + step*width;
		const double x2 = a + (step+1)*width;

		simpson_integral += (x2-x1)/6.0*(f(x1) + 4.0*f(0.5*(x1+x2)) + f(x2));
	    }

	    return simpson_integral;
	}
```
```bash
polina@polina-VirtualBox:~/Prog/parallel_1/src2$ g++ main_pragma.cpp format.cpp -g -O2 -march=native -o test.o -fopenmp
polina@polina-VirtualBox:~/Prog/parallel_1/src2$ ./test.o
Type lower integration limit a: 1
Type upper integration limit b: 3
```
### SIMPSON INTEGRATION from a: 1 to b: 3
|   SPLIT SEGMENTS   |        TIME        |       GFLOPS       |  PROCESSOR CLOCKS  |  OPERATION RESULT  |
|--------------------|--------------------|--------------------|--------------------|--------------------|
|        100         |      0.000018      |   5514503.143267   |       50620        |     73.066667      |
|        1000        |      0.000042      |  23900002.390000   |       117322       |     73.066667      |
|       10000        |      0.000440      |  22726084.772841   |      1234122       |     73.066667      |
|       100000       |      0.004294      |  23285744.257794   |      12055912      |     73.066667      |
|      1000000       |      0.071290      |  14027143.729451   |     200177206      |     73.066667      |

```bash
polina@polina-VirtualBox:~/Prog/parallel_1/src2$ g++ main_pragma.cpp format.cpp -g -O3 -march=native -o test.o -fopenmp
polina@polina-VirtualBox:~/Prog/parallel_1/src2$ ./test.o
Type lower integration limit a: 1
Type upper integration limit b: 3
```
### SIMPSON INTEGRATION from a: 1 to b: 3
|   SPLIT SEGMENTS   |        TIME        |       GFLOPS       |  PROCESSOR CLOCKS  |  OPERATION RESULT  |
|--------------------|--------------------|--------------------|--------------------|--------------------|
|        100         |      0.000022      |   4594532.506317   |       60638        |     73.066667      |
|        1000        |      0.000053      |  18806890.844806   |       149109       |     73.066667      |
|       10000        |      0.000521      |  19204363.231326   |      1461949       |     73.066667      |
|       100000       |      0.005115      |  19549126.760057   |      14362230      |     73.066667      |
|      1000000       |      0.085980      |  11630550.222141   |     241426387      |     73.066667      |

Наблюдается ухудшение производительности.

```C++
	double simpsonIntegral(double a, double b, std::size_t n, const std::function<double (double)> &f) {
	    const double width = (b-a)/n;
	    auto g = [](double x1, double x2, const std::function<double (double)> &f_)->double{ return (x2-x1)/6.0*(f_(x1) + 4.0*f_(0.5*(x1+x2)) + f_(x2)); };
	    double simpson_integral_tmp[4] = {0.,0.,0.,0.};
	    double x1 = a;
	    #pragma omp parallel
	    #pragma omp simd
	    for( std::size_t step = 0; step < n ; step+=4) {
	        double x1 = a + step*width;
		simpson_integral_tmp[0] += g(x1, x1+width, f);
		x1 += width;
		simpson_integral_tmp[1] += g(x1, x1+width, f);
		x1 += width;
		simpson_integral_tmp[2] += g(x1, x1+width, f);
		x1 += width;
		simpson_integral_tmp[3] += g(x1, x1+width, f);
	    }
	    double simpson_integral = simpson_integral_tmp[0] + simpson_integral_tmp[1] + simpson_integral_tmp[2] + simpson_integral_tmp[3];
	    return simpson_integral;
	}
```


```bash
polina@polina-VirtualBox:~/Prog/parallel_1/src2$ g++ main_pragma.cpp format.cpp -g -O2 -march=native -o test.o -fopenmp
polina@polina-VirtualBox:~/Prog/parallel_1/src2$ ./test.o
Type lower integration limit a: 1
Type upper integration limit b: 3
```

### SIMPSON INTEGRATION from a: 1 to b: 3
|   SPLIT SEGMENTS   |        TIME        |       GFLOPS       |  PROCESSOR CLOCKS  |  OPERATION RESULT  |
|--------------------|--------------------|--------------------|--------------------|--------------------|
|        100         |      0.000017      |   5995563.283170   |       46481        |     73.066667      |
|        1000        |      0.000049      |  20353748.142720   |       137735       |     73.066667      |
|       10000        |      0.000514      |  19455328.619956   |      1441609       |     73.066667      |
|       100000       |      0.005232      |  19113295.973211   |      14689624      |     73.066667      |
|      1000000       |      0.075299      |  13280476.329251   |     211433395      |     73.066667      |

```bash
polina@polina-VirtualBox:~/Prog/parallel_1/src2$ g++ main_pragma.cpp format.cpp -g -O3 -march=native -o test.o -fopenmp
polina@polina-VirtualBox:~/Prog/parallel_1/src2$ ./test.o
Type lower integration limit a: 1
Type upper integration limit b: 3
```
### SIMPSON INTEGRATION from a: 1 to b: 3
|   SPLIT SEGMENTS   |        TIME        |       GFLOPS       |  PROCESSOR CLOCKS  |  OPERATION RESULT  |
|--------------------|--------------------|--------------------|--------------------|--------------------|
|        100         |      0.000016      |   6238303.181535   |       44645        |     73.066667      |
|        1000        |      0.000039      |  25645628.702588   |       109328       |     73.066667      |
|       10000        |      0.000397      |  25174649.128328   |      1113774       |     73.066667      |
|       100000       |      0.004170      |  23979095.983286   |      11708567      |     73.066667      |
|      1000000       |      0.076966      |  12992683.365253   |     216116082      |     73.066667      |

Наблюдается ухудшение производительности.

## Векторизация через интринзики
```C++
	double simpsonIntegral(double a, double b, std::size_t n, const std::function<double (double)> &f) {
	    const double width = (b-a)/n;
	    auto g = [](double x1, double x2, const std::function<double (double)> &f_)->double{ return (x2-x1)/6.0*(f_(x1) + 4.0*f_(0.5*(x1+x2)) + f_(x2)); };
	    double simpson_integral_tmp[4] = {0.,0.,0.,0.};
	    __m256d val1 = _mm256_load_pd(&simpson_integral_tmp[0]);
	    __m256d val2;
	    double x1 = a;
	    for( std::size_t step = 0; step < n ; step+=4) {
	        double x1 = a + step*width;
	        double x2 = x1 + width;
	        double x3 = x2 + width;
	        double x4 = x3 + width;
	        double x5 = x4 + width;
	        val2 = _mm256_set_pd (g(x1, x2, f),g(x2, x3, f),g(x3, x4, f),g(x4, x5, f));
	        val1 = _mm256_add_pd (val1, val2);
	    }
	    _mm256_store_pd (simpson_integral_tmp, val1);
	    double simpson_integral = simpson_integral_tmp[0] + simpson_integral_tmp[1] + simpson_integral_tmp[2] + simpson_integral_tmp[3];
	    return simpson_integral;
	}
```

```bash
polina@polina-VirtualBox:~/Prog/parallel_1/src2$ g++ main_pragma.cpp format.cpp -g -O2 -march=native -o test.o -fopenmp
polina@polina-VirtualBox:~/Prog/parallel_1/src2$ ./test.o
Type lower integration limit a: 1
Type upper integration limit b: 3
```
### SIMPSON INTEGRATION from a: 1 to b: 3
|   SPLIT SEGMENTS   |        TIME        |       GFLOPS       |  PROCESSOR CLOCKS  |  OPERATION RESULT  |
|--------------------|--------------------|--------------------|--------------------|--------------------|
|        100         |      0.000004      |  25227043.390515   |       10968        |     73.066667      |
|        1000        |      0.000054      |  18364798.354514   |       151574       |     73.066667      |
|       10000        |      0.000379      |  26365884.654528   |      1064880       |     73.066667      |
|       100000       |      0.004044      |  24729881.684827   |      11352615      |     73.066667      |
|      1000000       |      0.078625      |  12718545.469493   |     220774020      |     73.066667      |


```bash
polina@polina-VirtualBox:~/Prog/parallel_1/src2$ g++ main_pragma.cpp format.cpp -g -O3 -march=native -o test.o -fopenmp
polina@polina-VirtualBox:~/Prog/parallel_1/src2$ ./test.o
Type lower integration limit a: 1
Type upper integration limit b: 3
```
### SIMPSON INTEGRATION from a: 1 to b: 3
|   SPLIT SEGMENTS   |        TIME        |       GFLOPS       |  PROCESSOR CLOCKS  |  OPERATION RESULT  |
|--------------------|--------------------|--------------------|--------------------|--------------------|
|        100         |      0.000004      |  26281208.935611   |       10472        |     73.066667      |
|        1000        |      0.000036      |  27806356.533103   |       100863       |     73.066667      |
|       10000        |      0.000359      |  27863768.463230   |      1007631       |     73.066667      |
|       100000       |      0.004494      |  22252406.375225   |      12614938      |     73.066667      |
|      1000000       |      0.078665      |  12712109.815137   |     220885648      |     73.066667      |

Улучшения производительности не наблюдается - проверка с распараллеливанием не целесообразна.

## Выводы

Для интегрирования методом Симпсона полуавтоматическая и ручная векторизация не дает значительного улучшения производительности, в то время как попытка полуавтоматического распараллеливания и вовсе приводит к ухудшению производительности. Такой эффект может быть связан с тем, что сложение, использующееся при интегрировании, достаточно оптимизировано благодаря опциям компилятора (`-O2` и `-O3`) и попытки "улучшить" производительность векторизацией или распараллеливанием приводят лишь к ухудшению оптимизации.

# Листинги программ на C++
## src/

```C++
main.cpp

#include <iostream>
#include <emmintrin.h> // _mm_set_epi32 
#include <smmintrin.h> // _mm_mullo_epi32, _mm_extract_epi32
#include <chrono>
#include <cmath>
#include "format.hpp"

using namespace hse::parallel::lab1;


std::uint64_t rdtsc() {
    unsigned int lo, hi;
    __asm__ __volatile__ ("rdtsc" : "=a" (lo), "=d" (hi));
    return ((std::uint64_t) hi << 32) | lo;
}


struct Mul_state
{
	std::size_t operations;
	std::int32_t value1[4];
	std::int32_t value2[4];
};

static void simple_mul(Mul_state& state) {
  double instructions_per_operation = 8; // from asm.asm
  std::size_t operations = state.operations;
  std::int32_t value1 = state.value1[0];
  std::int32_t value2 = state.value2[0];
  std::size_t iterator = 0;
  
  auto start = std::chrono::system_clock::now();
  std::uint64_t tact_start = rdtsc();
  
  for (;iterator < operations; iterator++)
  	value1 *= value2; // зависимые операции
  	
  std::uint64_t tact_end = rdtsc();
  auto end = std::chrono::system_clock::now();
  
  std::chrono::duration<double> duration = end - start;
  double secs = duration.count();
  auto tacts = tact_end - tact_start;
  double IPC = operations*instructions_per_operation/tacts;
  double IPS = IPC*(tacts/(secs*1E9));
  double pace = static_cast<double>(operations)/tacts;
  Line_state line_state {operations, secs, operations/(secs*1E9), tacts, tacts/(secs*1E9), pace, IPC, IPS, value1};
  std::cout << line_state;
  
}

static void sse_mul(Mul_state& state) {
  double instructions_per_operation = 14; // from asm.asm
  std::size_t operations = state.operations/4;
  __m128i val1 = _mm_set_epi32 (state.value1[0], state.value1[1], state.value1[2], state.value1[3]);
  __m128i val2 = _mm_set_epi32 (state.value2[0], state.value2[1], state.value2[2], state.value2[3]);
  
  std::size_t iterator = 0;
  
  auto start = std::chrono::system_clock::now();
  std::uint64_t tact_start = rdtsc();
  
  for (;iterator < operations; iterator++)
  	val1 = _mm_mullo_epi32(val1, val2); 
  
  std::uint64_t tact_end = rdtsc();
  auto end = std::chrono::system_clock::now();
  operations *= 4;
  std::int32_t res = _mm_extract_epi32(val1, 0);//*_mm_extract_epi32(val1, 1)*_mm_extract_epi32(val1, 2)*_mm_extract_epi32(val1, 3);
  std::chrono::duration<double> duration = end - start;
  double secs = duration.count();
  auto tacts = tact_end - tact_start;
  double IPC = operations*instructions_per_operation/tacts;
  double IPS = IPC*(tacts/(secs*1E9));
  double pace = static_cast<double>(operations)/tacts;
  Line_state line_state {operations, secs, operations/(secs*1E9), tacts, tacts/(secs*1E9), pace, IPC, IPS, res};
  std::cout << line_state;
  
}

int main()
{
	std::size_t max_op = pow(10,8);
	std::cout << "### SIMPLE MULTIPLICATION\n" << make_header();
	for(std::size_t operations = pow(10,4); operations <= max_op; operations *= 10)
	{
		Mul_state state {operations, {5}, {3}};
		simple_mul(state);
	}
	std::cout << "\n\n";
	std::cout << "### SSE4.1 MULTIPLICATION\n" << make_header();
	for(std::size_t operations = pow(10,4); operations <= max_op; operations *= 10)
	{
		Mul_state state {operations, {5, 5, 5, 5}, {3, 3, 3, 3}};
		sse_mul(state);
	}
	return 0;
}

format.hpp:

#ifndef __FORMAT_HPP__
#define __FORMAT_HPP__

#include <iostream>

namespace hse::parallel::lab1
{
	std::string make_break();
	
	std::string make_cell(const std::string& content);

	std::string make_header();
	
	struct Line_state
	{
		std::size_t operations;
		double secs;
		double ops_per_sec;
		std::uint64_t tact_duration;
		double tacts_per_sec;
		double pace;
		double IPC;
		double IPS;
		std::int32_t result;
		friend std::ostream& operator <<(std::ostream& os, Line_state const& line);
	};
}
#endif

format.cpp:

#include "format.hpp"
#define CELL_WIDTH 20
#define COL_NUM 9
#include <iostream>

namespace hse::parallel::lab1
{
	std::string make_break()
	{
		std::string header = "";
		for (int i = 0; i < COL_NUM; i++)
		{
			header += '|' + std::string(CELL_WIDTH, '-');
		}
		return header + "|\n";
	}
	
	std::string make_cell(const std::string& content)
	{
		std::size_t len = content.length();
		std::size_t left_len = (CELL_WIDTH-len)/2;
		std::size_t right_len = (CELL_WIDTH-len) - left_len;
		return std::string(left_len, ' ') + content + std::string(right_len, ' ');
	}

	std::string make_header()
	{
		return  '|' + make_cell("OPERATIONS")+
			'|' + make_cell("TIME")+ 
			'|' + make_cell("GFLOPS")+
			'|' + make_cell("PROCESSOR CLOCKS")+
			'|' + make_cell("CLOCK RATE, GHz") +
			'|' + make_cell("PACE") +
			'|' + make_cell("IPC") +
			'|' + make_cell("IPS, 10^9") +
			'|' + make_cell("OPERATION RESULT")+ "|\n" + make_break();
	}
	
	
	std::ostream& operator <<(std::ostream& os, Line_state const& line)
		    {
			return os <<  '|' << make_cell(std::to_string(line.operations))<< '|'
				  <<  make_cell(std::to_string(line.secs))<< '|'
				  <<  make_cell(std::to_string(line.ops_per_sec))<< '|'
				  <<  make_cell(std::to_string(line.tact_duration))<< '|'
				  <<  make_cell(std::to_string(line.tacts_per_sec))<< '|'
				  <<  make_cell(std::to_string(line.pace))<< '|'
				  <<  make_cell(std::to_string(line.IPC))<< '|'
				  <<  make_cell(std::to_string(line.IPS))<< '|'
				  <<  make_cell(std::to_string(line.result)) << "|\n";
		    }

}
```

## src2/

```C++
main.cpp:

#include <iostream>
#include <functional>
#include <chrono>
#include <cmath>
#include "format.hpp"

namespace hse::parallel::lab1
{
	std::uint64_t rdtsc() {
	unsigned int lo, hi;
	__asm__ __volatile__ ("rdtsc" : "=a" (lo), "=d" (hi));
	return ((std::uint64_t) hi << 32) | lo;
	}

	double simpsonIntegral(double a, double b, std::size_t n, const std::function<double (double)> &f) {
	    const double width = (b-a)/n;

	    double simpson_integral = 0;
	    for(std::size_t step = 0; step < n; step++) {
		const double x1 = a + step*width;
		const double x2 = a + (step+1)*width;

		simpson_integral += (x2-x1)/6.0*(f(x1) + 4.0*f(0.5*(x1+x2)) + f(x2));
	    }

	    return simpson_integral;
	}
}

int main()
{

	double a;
	double b;
    
	std::cout << "Type lower integration limit a: ";
	std::cin >> a;
	std::cout << "Type upper integration limit b: ";
	std::cin >> b;
	
	std::size_t max_n = pow(10,6);
	auto f = [](double x)->double{ return x*x*x*x +5.*x - 2./(x*x) +3.; };
	
	std::cout << "### SIMPSON INTEGRATION from a: " << a <<" to b: " << b <<'\n' << hse::parallel::lab1::make_header();
	for(std::size_t n = pow(10,2); n <= max_n; n *= 10)
	{
		auto start = std::chrono::system_clock::now();
		std::uint64_t tact_start = hse::parallel::lab1::rdtsc();
	    
		double res = hse::parallel::lab1::simpsonIntegral(a, b, n, f);

		std::uint64_t tact_end = hse::parallel::lab1::rdtsc();
		auto end = std::chrono::system_clock::now();

		std::chrono::duration<double> duration = end - start;
		auto tacts = tact_end - tact_start;
		hse::parallel::lab1::Line_state state {n, duration.count(), n/(duration.count()), tacts, res};
		
		std::cout << state;
	}
	return 0;
}

format.hpp:

#ifndef __FORMAT_HPP__
#define __FORMAT_HPP__

#include <iostream>

namespace hse::parallel::lab1
{
	std::string make_break();
	
	std::string make_cell(const std::string& content);

	std::string make_header();
	
	struct Line_state
	{
		std::size_t n;
		double secs;
		double ops_per_sec;
		std::uint64_t tact_duration;
		double result;
		friend std::ostream& operator <<(std::ostream& os, Line_state const& line);
	};
}
#endif

format.cpp:

#include "format.hpp"
#define CELL_WIDTH 20
#define COL_NUM 5
#include <iostream>

namespace hse::parallel::lab1
{
	std::string make_break()
	{
		std::string header = "";
		for (int i = 0; i < COL_NUM; i++)
		{
			header += '|' + std::string(CELL_WIDTH, '-');
		}
		return header + "|\n";
	}
	
	std::string make_cell(const std::string& content)
	{
		std::size_t len = content.length();
		std::size_t left_len = (CELL_WIDTH-len)/2;
		std::size_t right_len = (CELL_WIDTH-len) - left_len;
		return std::string(left_len, ' ') + content + std::string(right_len, ' ');
	}

	std::string make_header()
	{
		return  '|' + make_cell("SPLIT SEGMENTS")+
			'|' + make_cell("TIME")+ 
			'|' + make_cell("GFLOPS")+
			'|' + make_cell("PROCESSOR CLOCKS")+
			'|' + make_cell("OPERATION RESULT")+ "|\n" + make_break();
	}
	
	
	std::ostream& operator <<(std::ostream& os, Line_state const& line)
		    {
			return os <<  '|' << make_cell(std::to_string(line.n))<< '|'
				  <<  make_cell(std::to_string(line.secs))<< '|'
				  <<  make_cell(std::to_string(line.ops_per_sec))<< '|'
				  <<  make_cell(std::to_string(line.tact_duration))<< '|'
				  <<  make_cell(std::to_string(line.result)) << "|\n";
		    }

}

main_pragma.cpp (финальная версия):

#include <iostream>
#include <functional>
#include <immintrin.h>
#include <chrono>
#include <cmath>
#include <omp.h>
#include "format.hpp"

namespace hse::parallel::lab1
{
	std::uint64_t rdtsc() {
	unsigned int lo, hi;
	__asm__ __volatile__ ("rdtsc" : "=a" (lo), "=d" (hi));
	return ((std::uint64_t) hi << 32) | lo;
	}
	/***
	double simpsonIntegral(double a, double b, std::size_t n, const std::function<double (double)> &f) {
	    const double width = (b-a)/n;

	    double simpson_integral = 0;
	    #pragma omp parallel
	    #pragma omp simd
	    for(std::size_t step = 0; step < n; step++) {
		const double x1 = a + step*width;
		const double x2 = a + (step+1)*width;

		simpson_integral += (x2-x1)/6.0*(f(x1) + 4.0*f(0.5*(x1+x2)) + f(x2));
	    }

	    return simpson_integral;
	}
	***/
	double simpsonIntegral(double a, double b, std::size_t n, const std::function<double (double)> &f) {
	    const double width = (b-a)/n;
	    auto g = [](double x1, double x2, const std::function<double (double)> &f_)->double{ return (x2-x1)/6.0*(f_(x1) + 4.0*f_(0.5*(x1+x2)) + f_(x2)); };
	    double simpson_integral_tmp[4] = {0.,0.,0.,0.};
	    __m256d val1 = _mm256_load_pd(&simpson_integral_tmp[0]);
	    __m256d val2;
	    double x1 = a;
	    #pragma omp parallel
	    for( std::size_t step = 0; step < n ; step+=4) {
	        double x1 = a + step*width;
	        double x2 = x1 + width;
	        double x3 = x2 + width;
	        double x4 = x3 + width;
	        double x5 = x4 + width;
	        val2 = _mm256_set_pd (g(x1, x2, f),g(x2, x3, f),g(x3, x4, f),g(x4, x5, f));
	        val1 = _mm256_add_pd (val1, val2);
	    }
	    _mm256_store_pd (simpson_integral_tmp, val1);
	    double simpson_integral = simpson_integral_tmp[0] + simpson_integral_tmp[1] + simpson_integral_tmp[2] + simpson_integral_tmp[3];
	    return simpson_integral;
	}
	
}

int main()
{

	double a;
	double b;
    
	std::cout << "Type lower integration limit a: ";
	std::cin >> a;
	std::cout << "Type upper integration limit b: ";
	std::cin >> b;
	
	std::size_t max_n = pow(10,6);
	auto f = [](double x)->double{ return x*x*x*x +5.*x - 2./(x*x) +3.; };
	
	std::cout << "### SIMPSON INTEGRATION from a: " << a <<" to b: " << b <<'\n' << hse::parallel::lab1::make_header();
	for(std::size_t n = pow(10,2); n <= max_n; n *= 10)
	{
		auto start = std::chrono::system_clock::now();
		std::uint64_t tact_start = hse::parallel::lab1::rdtsc();
		
		
		
		double res = hse::parallel::lab1::simpsonIntegral(a, b, n, f);
	
		std::uint64_t tact_end = hse::parallel::lab1::rdtsc();
		auto end = std::chrono::system_clock::now();

		std::chrono::duration<double> duration = end - start;
		auto tacts = tact_end - tact_start;
		
		hse::parallel::lab1::Line_state state {n, duration.count(), n/(duration.count()), tacts, res};
		
		std::cout << state;
	}
	return 0;
}
