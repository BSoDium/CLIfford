# CLIfford

<img src="https://user-images.githubusercontent.com/46868627/209482725-4028e31d-4a9c-4dd5-8d06-7d90c4ddf82e.png" alt="Your image title" width="235"/>

![C++20](https://img.shields.io/badge/C%2B%2B-20-blue.svg)
![License](https://img.shields.io/badge/license-MIT-green.svg)
![CMake](https://img.shields.io/badge/CMake-3.15%2B-orange.svg)

> [!NOTE]  
> This is an archived project originally built during engineering school at ENSEEIHT. No further development or updates are planned, but it remains available here for reference.

Clifford is a simple and highly customizable command line interface library for your C++ applications.

![CLIfford Demo](./clifford.gif)

## Features

- [x] Custom commands, arguments, and options
- [x] Integrated help system and splash screen
- [x] Color support (`RED`, `GREEN`, `CYAN`, etc.)
- [ ] Vcpkg installation support

---

## Quick Start (Run the Demo)

Make sure you have **CMake** and a **C++20** compatible compiler installed, then clone and run the demo:

```bash
git clone [https://github.com/yourusername/CLIfford.git](https://github.com/yourusername/CLIfford.git)
cd CLIfford
cmake -B build -S .
cmake --build build
./build/clifford_demo
```

## Basic Usage

To build your own custom CLI, inherit from core::CLI and register your commands:

```cpp
#include "clifford.hpp"
#include <iostream>

class MyCLI : public core::CLI {
public:
    MyCLI() {
        // Command with arguments
        _addCommand("greet", "Greets a user by name", [](core::CLI* cli, std::vector<std::string> args) {
            if (!args.empty()) {
                std::cout << GREEN("Hello, " << args[0] << "!\n");
            } else {
                std::cout << YELLOW("Hello, stranger!\n");
            }
        });
    }
};

int main() {
    MyCLI cli;
    cli.run();
    return 0;
}
```

## Integration

To include CLIfford in another project using CMake's FetchContent:

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