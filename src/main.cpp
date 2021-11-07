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
  double IPS = IPC*(tacts/secs);
  Line_state line_state {operations, secs, operations/secs, tacts, tacts/secs, IPC, IPS, value1};
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
  double IPS = IPC*(tacts/secs);
  Line_state line_state {operations, secs, operations/secs, tacts, tacts/secs, IPC, IPS, res};
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
