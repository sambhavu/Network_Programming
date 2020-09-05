

int sock_df = socket(PF_INET, SOCK_STREAM, IPPROTO_TCP); 

bind(sock_fd, my_addr, addrlen); 

struct sockaddr_n sockaddr; 
memset(&sockaddr, 0, sizeof(sockaddr));
sockaddr.sin_family = AF_INET; 
sockaddr.sin_addr.s_addr = INADDR_ANY; 
sockaddr.sin_port.= htons(listenPort); 
err = bind(sock_df, (struct sockaddr *) sockaddr, sizeof(sockaddr)); 

err = listen(sock_df, MAX_WAITING_CONNECTIONS); 

accept(sock_df, addr, addrlen) 
struct sockaddr_in client_addr; 
socklen_t my_addr_len = sizeof(client_addr); 
client_fd = accept(listener_df, &client_addr, &my_addr_len); 

struct sockaddr_in remote_addr; 
/* initialize remote_addr */ 
err = connect(listener_df, &remote_addr, sizeof(remote_addr)); 
err = close(sock_fd); 

total_sent = 0; 
while(total_sent < buff_len) { 
    sent = send(sock_df, buff + total_sent, buff_len - total_sent, 0); 
    if(sent <= 0) goto error; 
    total_sent += sent; 
} 

actual_size = recv(sock_df, buf, sizeof(buf), 0); 
if(actual_size <= 0) goto err; 


