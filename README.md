# RoadRecovery-CPP
provide dynamic library of RoadRecovery for testing，
本示例代码参考：[plibsys' socket example](https://github.com/Chris3606/plibsys-networking.git)。

## Build Library
1. 在include/plibsys-build目录下，先编译plibsys库，执行如下几个命令，
有问题可以参考：[plibsys' building](https://github.com/saprykin/plibsys/wiki/Building-library)：

  + $ cmake -DCMAKE_BUILD_TYPE=Release ../plibsys 
  + $ make 
  + $ ctest
  
2. 回到项目根目录下，执行build_windows_mingw(或者mscv).bat脚本。
该脚本会创建build子目录并执行根目录下CMakeLists.txt中声明的编译过程，成功后会在对应子目录下生成相应的shared.dll。
有问题可参考：[cross-platform compilation via cmake](https://github.com/gklingler/sharedLibsDemo)。
shared.dll中提供的接口在src/include/client.h中定义，使用用例参考src/main.cpp。
