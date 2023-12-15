# LexYacc

# Install Lex and Yacc (if not already installed)
sudo dnf install flex byacc(fedora)

# Compile Lex and Yacc files
lex arthmetic.l
yacc -d aruthmetic.y
cc lex.yy.c y.tab.c 

# Run the calculator
./a.out

# Example: Enter arithmetic expressions at the prompt (e.g., 2+3*4)
# The result will be displayed after ctrl+d

# Clean up (optional)
rm lex.yy.c y.tab.c y.tab.h
