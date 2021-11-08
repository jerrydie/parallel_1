#include <iostream>
#include <functional>
#include <chrono>

namespace hse::parallel::lab1
{
	std::uint64_t rdtsc() {
	unsigned int lo, hi;
	__asm__ __volatile__ ("rdtsc" : "=a" (lo), "=d" (hi));
	return ((std::uint64_t) hi << 32) | lo;
	}

	double simpsonIntegral(double a, double b, int n, const std::function<double (double)> &f) {
	    const double width = (b-a)/n;

	    double simpson_integral = 0;
	    for(int step = 0; step < n; step++) {
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
	int n;
    
	std::cout << "Type lower integration limit a: ";
	std::cin >> a;
	std::cout << "Type upper integration limit b: ";
	std::cin >> b;
	std::cout << "Type number of split segments n: ";
	std::cin >> n;

	auto f = [](double x)->double{ return x*x*x*x +5.*x - 2./(x*x) +3.; };

	auto start = std::chrono::system_clock::now();
	std::uint64_t tact_start = hse::parallel::lab1::rdtsc();
    
	double res = hse::parallel::lab1::simpsonIntegral(a, b, n, f);

	std::uint64_t tact_end = hse::parallel::lab1::rdtsc();
	auto end = std::chrono::system_clock::now();

	std::chrono::duration<double> duration = end - start;
	auto tacts = tact_end - tact_start;
	std::cout << "simpson integration result: " << res << "\nintegration duration, sec: " << duration.count() << "\nintegration duration, processor clocks: " << tacts << '\n';

	return 0;
}
