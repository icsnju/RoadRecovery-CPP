//
// Created by Da Li on 2020/3/6.
//

#include <cstdio>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <unistd.h>
#include <cstring>

#define PORT 4444
#define default_buffer_size 10000
char returnedJSONData[default_buffer_size] = {0};

extern "C" char* pathRestorationMethod(const char *JSONData) {

    int sock = 0;
    struct sockaddr_in server_addr;

    if ((sock = socket(AF_INET, SOCK_STREAM, 0)) < 0)
    {
        printf("\n Socket creation error \n");
        return NULL;
    }

    server_addr.sin_family = AF_INET;
    server_addr.sin_port = htons(PORT);

    // Convert IPv4 and IPv6 addresses from text to binary form
    if(inet_pton(AF_INET, "127.0.0.1", &server_addr.sin_addr) <= 0)
    {
        printf("\nInvalid address/ Address not supported \n");
        return NULL;
    }

    if (connect(sock, (struct sockaddr *)&server_addr, sizeof(server_addr)) < 0)
    {
        printf("\nConnection Failed \n");
        return NULL;
    }

    send(sock, JSONData, strlen(JSONData), 0);
    printf("Hello message sent\n");
    read(sock, returnedJSONData, default_buffer_size);
    printf("%s\n", returnedJSONData);

    return returnedJSONData;
}

//int main(int argc, char const *argv[])
//{
//    if (argc != 2) {
//        printf("Usage: please provide one argument\n"
//               "\targv[1]: a JSON-format data (char *)"
//               "\n");
//        return -1;
//    }
//
//    pathRestorationMethod(argv[1]);
//
//    return 0;
//}
