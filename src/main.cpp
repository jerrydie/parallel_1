#include <iostream>
#include <emmintrin.h>
#include <chrono>
#include <cmath>
#include <vector>
#include "format.hpp"

using namespace hse::parallel::lab1;
//#pragma intrinsic(__rdtsc)

std::uint64_t rdtsc() {
    unsigned int lo, hi;
    __asm__ __volatile__ ("rdtsc" : "=a" (lo), "=d" (hi));
    return ((std::uint64_t) hi << 32) | lo;
}


struct Mul_state
{
	std::size_t operations;
	double value1[4];
	double value2[4];
};

static void simple_mul(Mul_state& state) {
  std::size_t operations = state.operations;
  double value1 = state.value1[0];
  double value2 = state.value2[0];
  std::size_t iterator = 0;
  
  auto start = std::chrono::system_clock::now();
  std::uint64_t tact_start = rdtsc();
  
  for (;iterator < operations; iterator++)
  	value1 = value1 * value2; // зависимые операции
  	
  std::uint64_t tact_end = rdtsc();
  auto end = std::chrono::system_clock::now();
  
  std::chrono::duration<double> duration = end - start;
  double secs = duration.count();
  auto tacts = tact_end - tact_start;
  Line_state line_state {operations, secs, operations/secs, tacts, tacts/secs};
  std::cout << line_state;
  
}

static void sse2_mul(Mul_state& state) {
  std::size_t operations = state.operations;
  const double arr1[2] {state.value1[0], state.value1[1]};
  const double arr2[2] {state.value2[0], state.value2[1]};
  __m128d val1 = _mm_load_pd(&arr1[0]);
  __m128d val2 = _mm_load_pd(&arr2[0]);
  std::size_t iterator = 0;
  
  auto start = std::chrono::system_clock::now();
  std::uint64_t tact_start = rdtsc();
  
  for (;iterator < operations/2; iterator++)
  	val1 = _mm_mul_pd(val1, val2); 
  std::uint64_t tact_end = rdtsc();
  auto end = std::chrono::system_clock::now();
  
  std::chrono::duration<double> duration = end - start;
  double secs = duration.count();
  auto tacts = tact_end - tact_start;
  Line_state line_state {operations, secs, operations/secs, tacts, tacts/secs};
  std::cout << line_state;
  
}

int main()
{
	std::size_t max_op = pow(10,8);
	std::cout << make_title("SIMPLE MULTIPLICATION") << make_header();
	for(std::size_t operations = pow(10,4); operations <= max_op; operations *= 10)
	{
		Mul_state state {operations, {5.}, {3.}};
		simple_mul(state);
	}
	std::cout << "\n\n";
	std::cout << make_title("SSE2 MULTIPLICATION") << make_header();
	for(std::size_t operations = pow(10,4); operations <= max_op; operations *= 10)
	{
		Mul_state state {operations, {5., 5.}, {3., 3.}};
		sse2_mul(state);
	}
	return 0;
}
