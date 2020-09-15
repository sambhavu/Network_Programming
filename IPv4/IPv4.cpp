#include "IPv4.h" 
#include <string> 
#include <sstream> 
using namespace std; 
using namespace GenericUtils; 

IPv4::IPv4() {} 
IPv4::~IPv4() {} 


string IPv4::IPing_to_IPquad(unsigned long ip) { 
    ostringstream ipstr;
    ipstr << ((ip &0xff000000) >> 24) 
          << "." << ((ip &0x00f0000) >> 16) 
          << "." << ((ip &0x0000ff00) >> 8) 
          << "." << ((ip &0x000000ff)); 
          
     return ipstr.str(); 
     
     
}
