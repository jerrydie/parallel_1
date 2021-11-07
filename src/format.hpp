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
