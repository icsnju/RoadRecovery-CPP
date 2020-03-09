//
// Created by Da Li on 2020/3/6.
//

#include "client.h"

char* pathRestorationMethod(char const *string)
{
    p_libsys_init();


    PSocketAddress* addr;
    PSocket* sock;

    // Construct address for server.  Since the server is assumed to be on the same machine for the sake of this program, the address is loopback, but typically this would be an external address.
    if ((addr = p_socket_address_new("127.0.0.1", SERVER_PORT)) == NULL)
        return NULL;

    // Create socket
    if ((sock = p_socket_new(P_SOCKET_FAMILY_INET, P_SOCKET_TYPE_STREAM, P_SOCKET_PROTOCOL_TCP, NULL)) == NULL)
    {
        // Can't construct socket, cleanup and exit.
        p_socket_address_free(addr);

        return NULL;
    }

    // Connect to server.
    if (!p_socket_connect(sock, addr, NULL))
    {
        // Couldn't connect, cleanup.
        p_socket_address_free(addr);
        p_socket_free(sock);

        return NULL;
    }

    printf("send a socket request\n");
    p_socket_send(sock, string, strlen(string), NULL);
    // Receive our message and print.
    pssize sizeOfRecvData = p_socket_receive(sock, buffer, sizeof(buffer) - 1, NULL);
    buffer[sizeOfRecvData] = '\0'; // Set null character 1 after message

    printf("We received %s\n", buffer);

    // Cleanup
    p_socket_address_free(addr);
    p_socket_close(sock, NULL);
    p_libsys_shutdown();

    return buffer;
}

int main(int argc, char* argv[])
{
    char const * string = "{"
                    "\"typeGroup\":\"\","
                    "\"exStationId\":\"S0029370010010\","
                    "\"enTime\":\"2020-01-22 11:19:19\","
                    "\"basicDataPath\":\"src/test/resources/basic-data.xls\","
                    "\"exTime\":\"\","
                    "\"enStationId\":\"\","
                    "\"timeGroup\":\"\","
                    "\"gantryGroup\":\"3E3001|3D3012|3C3004|3C3005|3C3006|3C3007|3C3008|3C3009|3C3107\","
                    "\"testIndex\":0"
                    "}";
    char* result = pathRestorationMethod(string);
    if (result == nullptr)
        return -1;
    return 0;
}
