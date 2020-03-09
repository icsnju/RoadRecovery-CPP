//
// Created by Da Li on 2020/3/9.
//

#include "include/client.h"

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