#include "format.hpp"
#define CELL_WIDTH 25
#include <iostream>

namespace hse::parallel::lab1
{
	std::string make_break()
	{
		return std::string(CELL_WIDTH*5 + 5, '=') + '\n';
	}
	
	std::string make_title(const std::string& content)
	{
		std::size_t len = content.length();
		std::size_t left_len = (CELL_WIDTH*5+4-len)/2;
		std::size_t right_len = (CELL_WIDTH*5+4-len) - left_len;
		return make_break() + '|' + std::string(left_len, ' ') + content + std::string(right_len, ' ') + "|\n" + make_break();
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
			'|' + make_cell("OPERATIONS / SECOND")+
			'|' + make_cell("PROCESSOR CLOCKS")+
			'|' + make_cell("PROCESSOR CLOCKS / SECOND") +
			/*'|' + make_cell("OPERATION RESULT")+*/ "|\n" + make_break();
	}
	
	std::ostream& operator <<(std::ostream& os, Line_state const& line)
		    {
			return os <<  '|' << make_cell(std::to_string(line.operations))<< '|'
				  <<  make_cell(std::to_string(line.secs))<< '|'
				  <<  make_cell(std::to_string(line.ops_per_sec))<< '|'
				  <<  make_cell(std::to_string(line.tact_duration))<< '|'
				  <<  make_cell(std::to_string(line.tacts_per_sec))//<< '|'
				  /*<<  make_cell(std::to_string(line.result))*/ << "|\n"
				  << make_break();
		    }

}
