//
// Created by Da Li on 2020/3/9.
//

#include <cstdio>
#include <cstring>
#include <plibsys.h>
#include <psocket.h>

#define MAX_MESSAGE_LENGTH 10000
#define SERVER_PORT 4444

char* pathRestorationMethod(char *string);

char buffer[MAX_MESSAGE_LENGTH + 1]; // Supports messages up to max message length characters long (plus null character)
