# VHS documentation: https://github.com/charmbracelet/vhs

# Where should the resulting GIF be saved?
Output clifford.gif

# Styling settings
Set Shell "bash"
Set FontSize 18
Set Width 1200
Set Height 700
Set Theme "Catppuccin Mocha"
Set Padding 20
Set Framerate 30

# Start the demo executable
Type "./build/clifford_demo"
Enter
Sleep 2s

# Try the help menu
Type "help"
Enter
Sleep 2s

# Show the list of available commands
Type "commands"
Enter
Sleep 2s

# Test the custom hello command with an argument
Type "hello Developer"
Enter
Sleep 1.5s

# Show the splash screen
Type "splash"
Enter
Sleep 5s

# Exit the application
Type "exit"
Enter
Sleep 1s
