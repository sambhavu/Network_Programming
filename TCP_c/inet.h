//Definitions for TCP and UDP client/server programs 

#include <stdio.h> 
#include <fcntl.h> 
#include <tiuser.h> 
#include <sys/types.h> 
#include <sys/sockets.h> 
#include <sys/in.h> 

#define DEV_UDP "/dev/udp"
#define DEV_TCP "/dev/tcp" 

#define SERV_UDP_PORT 6000
#define SERV_TCP_PORT 6000

#define SERV_HOST_ADDR "192.43.235.6"

#define MAXLINE 255 

char *pname; 


