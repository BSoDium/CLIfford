#include "clifford.hpp"
#include <iostream>

class CustomCLI : public core::CLI {
public:
    CustomCLI() {
        // Command with arguments
        _addCommand("hello", "Greets the user", [](core::CLI* cli, std::vector<std::string> args) {
            if (!args.empty()) {
                std::cout << GREEN("Hello, " << args[0] << "!") << std::endl;
            } else {
                std::cout << GREEN("Hello, welcome to CLIfford!") << std::endl;
            }
        });

        // Simple command without arguments
        _addCommand("ping", "Responds with pong", [](core::CLI* cli) {
            std::cout << CYAN("pong!") << std::endl;
        });
    }
};

int main() {
    CustomCLI cli;
    cli.run();
    return 0;
}
