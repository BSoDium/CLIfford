![cliford](https://user-images.githubusercontent.com/46868627/209482725-4028e31d-4a9c-4dd5-8d06-7d90c4ddf82e.png)

# CLIfford

Clifford is a simple and highly customizable command line interface library for your application. It is fully written in C++.

## Features

- [x] Custom commands, arguments and options
- [x] Integrated help system and splash screen
- [x] Color support
- [ ] Vcpkg installation support

## Quick Start & Running the Demo

To build the library and the included demo executable, make sure you have an `examples/main.cpp` file in place, then run:

```bash
cmake -B build -S .
cmake --build build
./build/clifford_demo
```

## Integration

To use Clifford in another project via CMake FetchContent:

```cmake
include(FetchContent)
FetchContent_Declare(
    clifford
    GIT_REPOSITORY [https://github.com/yourusername/CLIfford.git](https://github.com/yourusername/CLIfford.git)
    GIT_TAG v1.0.0
)
FetchContent_MakeAvailable(clifford)

target_link_libraries(your_application PRIVATE core::clifford)
```
