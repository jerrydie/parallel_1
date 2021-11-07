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
