#include<stdio.h> 
#include<stdlib.h> 
#include<sys/socket.h> 
#include<arpa/inet.h> 
#include<string.h> 
#include<unistd.h> 

#define MAXPENDING 5 
#define RCVBUFSIZE 32

void DieWithError(char *errorMessage);


void HandleTCPClient(int clntSocket)
{
	char echoBuffer[RCVBUFSIZE]; 
	int recvMsgSize; 

	// Receive message from client 

	if((recvMsgSize = recv(clntSocket, echoBuffer, RCVBUFSIZE, 0)) < 0)
		DieWithError("recv() failed"); 

	while(recvMsgSize > 0)		//zero indicates end of transmission 
	{ 
		// echo message back to client 
		if(send(clntSocket, echoBuffer, recvMsgSize, 0) != recvMsgSize)
			DieWithError("send() failed");
		
		if((recvMsgSize = recv(clntSocket, echoBuffer, RCVBUFSIZE, 0)) <0) 
			DieWithError("recv failed");

	}


	close(clntSocket);		//Close Client Socket
}


void main(int argv, char *argv[])
{
	int servSock; 
	int clntSock; 

	struct sockaddr_in echoServerAddr; 
	struct sockaddr_in echoClientAddr;

	unsigned short echoServerPort; 
	unsigned int clientLen; 

	if (argc != 2)
	{
		fprintf(stderr, "Usage: %s <Server Port>", argv[0]); 
		exit 1; 
	} 


	echoServerPort = atoi(argv[1]);

	//create a socket for incoming connections 

	if ((servSock = socket(PF_INET, SOCK_STREAM, IPPROTO_TCP))< 0)
		DieWithError("socket() failed"); 


	/*Construct local address structure*/ 
	memset(&echoServerAddr, 0, sizeof(echoServerAddr));
	echoServerAddr.sin_family = AF_INET; 
	echoServerAddr.sin_addr.s_addr = htonl(INADDR_ANY); 
	echoServerAddr.sin_port = htons(echoServerPort);

	//Bind to the Local Address 

	if(bind(servSock, (struct sockaddr *) &echoServAddr, sizeof(echoServerAddr)) < 0)
		DieWithError("bind() failed"); 

	//Mark the socket so it will listen for incoming connections 

	if(listen(servSock, MAXPENDING) < 0)
		DieWithError("listen() failed"); 

	for(;;)
	{
		// Set the size of the in out parameter 
		clientLen = sizeof(echoClientAddr); 

		// Wait for a client to connect 

		if((clntSock = accept(servSock, (struct sockaddr *) &echoClntAddr, &clntLen)) < 0)
			DieWithError("accept() failed"); 

		/* clntSock is connected to a client!*/ 

		printf("Handling client %s\n", inet_ntoa(echoClientAddr.sin_addr)); 

		HandleTCPClient(clntSock); 
	}

	//not reached


}
