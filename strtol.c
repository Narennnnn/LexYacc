#include <stdio.h>
#include <stdlib.h>

int main() {
    const char *binaryString = "111100";
    char *endptr;

    long decimalValue = strtol(binaryString, &endptr, 2);

    if (*endptr != '\0') {
        printf("Conversion failed. Invalid character: %c\n", *endptr);
    } else {
        printf("Decimal value: %ld\n", decimalValue);
    }

    return 0;
}
