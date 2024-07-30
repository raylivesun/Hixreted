#include <string.h>
#include <ctype.h>
#include <stdio.h>

void reverseWords(char str[]) {
    int length = strlen(str);
    int start = 0;

    for (int i = 0; i < length; i++) {
        if (str[i] == ' ' || i == length - 1) {
            int end = i == length - 1 ? i : i - 1;
            for (int j = start; j < (start + end) / 2; j++) {
                char temp = str[j];
                str[j] = str[end - j + start];
                str[end - j + start] = temp;
            }
            start = i + 1;
        }
    }

    int left = 0;
    int right = length - 1;

    while (left < right) {
        char temp = str[left];
        str[left] = str[right];
        str[
            right
        ] = temp;
        left++;
        right--;
        while (left < right && !isalpha(str[left])) {
            left++;
        }
        while (left < right && !isalpha(str[right])) {
            right--;
        }
        if (left < right) {
            char temp = str[left];
            str[left] = str[right];
            str[right] = temp;
        }
        left++;
        right--;
        while (left < right && !isalpha(str[left])) {
            left++;
        }
        while (left < right && !isalpha(str[right])) {
            right--;
        }
        if (left < right) {
            char temp = str[left];
            str[left] = str[right];
            str[right] = temp;
        }
        left++;
        right--;
    }
    str[length] = '\0';
    return;
    // The provided code does not include the final null character at the end of the string.
    // To add the null character at the end of the reversed string, add the following line:
    // str[length] = '\0';
}

int main() {
    char str[] = "Hello, World!";
    reverseWords(str);
    printf("Reversed string: %s\n", str);
    return 0;
}
