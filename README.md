# LexYacc

## Install Lex and Yacc (if not already installed)
```
sudo dnf install flex byacc(fedora)
```

## Compile Lex and Yacc files
```
lex arthmetic.l
```
```
yacc -d aruthmetic.y
```
```
cc lex.yy.c y.tab.c 
```
# Run 
```
./a.out
```

## Clean up (optional)
```
rm lex.yy.c y.tab.c y.tab.h
```

## Install Flex (if not already installed)
```
sudo dnf install flex
```
## Compile Lex file and link with Flex library
```
lex count.l
```
```
gcc lex.yy.c -lfl -o word_count
```
# Run the resulting program
```
./word_count
```