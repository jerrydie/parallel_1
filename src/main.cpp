#include <iostream>
#include <immintrin.h>
#include <chrono>
#include <cmath>
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
	int value1;
	int value2;
};

static void simple_mul(Mul_state& state) {
  std::size_t operations = state.operations;
  int value1 = state.value1;
  int value2 = state.value2;
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

int main()
{
	std::size_t max_op = pow(10,8);
	std::cout << make_title("SIMPLE MULTIPLICATION") << make_header();
	for(std::size_t operations = pow(10,4); operations <= max_op; operations *= 10)
	{
		Mul_state state {operations, 7, 5};
		simple_mul(state);
	}
	return 0;
}
