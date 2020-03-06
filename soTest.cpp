//
// Created by Da Li on 2020/3/7.
//

#include <cstdio>
#include <cstdlib>
#include <dlfcn.h>

typedef char* (*method_ptr)(char*);

int main(int argc, char *argv[])
{
    if (argc != 2) {
        printf("Usage: please provide one argument\n"
               "\targv[1]: a JSON-format data (char *)"
               "\n");
        return -1;
    }

    void *handle = dlopen(
            "/Users/lind/Desktop/RoadRecovery-CPP/libRoadRecovery-1.1.0.so",
            RTLD_LAZY
            );

    if (!handle) {
        fputs (dlerror(), stderr);
        exit(1);
    }

    auto pathRestorationMethod = (method_ptr) dlsym(handle, "pathRestorationMethod");
    char *error;
    if ((error = dlerror()) != NULL)  {
        fputs(error, stderr);
        exit(1);
    }

    (*pathRestorationMethod)(argv[1]);
    dlclose(handle);

    return 0;
}