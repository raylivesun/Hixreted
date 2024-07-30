# hixreted ([freebasic](https://www.freebasic.net/))

Hixreted is a term used in the context of the programming language Rust, referring to the concept of "hiding" or "shadowing" a variable with the same name in a nested scope. This can lead to confusion and unexpected behavior if not handled carefully.

Here's an example of how hixreted variables can be used in Rust:

# Hixreted ([rust](https://www.rust-lang.org/))

Hixreted is a term used in the context of the programming language Rust, referring to the concept of "hiding" or "shadowing" a variable with the same name in a nested scope. This can lead to confusion and unexpected behavior if not handled carefully.

Here's an example of how hixreted variables can be used in Rust:

# Hixreted ([rust/learn](https://www.rust-lang.org/learn))

Hixreted is a term used in the context of the programming language Rust, referring to the concept of "hiding" or "shadowing" a variable with the same name in a nested scope. This can lead to confusion and unexpected behavior if not handled carefully.

Here's an example of how hixreted variables can be used in Rust:


```rust
fn main() {
    let x = 5; // outer scope variable x

    {
        let x = 10; // inner scope variable x, hixreted from outer scope
        println!("Inner scope x: {}", x);
    }

    println!("Outer scope x: {}", x);
}
```
In this example, the variable x is defined in the outer scope. Inside the inner scope, a new variable x is declared with a different value. This inner x is said to be hixreted from the outer scope. When we print x within the inner scope, it will output 10, while outside the inner scope, it will output 5.

It's important to note that hixreted variables can lead to confusion and unexpected behavior, especially when working with mutable references or when trying to modify the original variable. It's recommended to avoid hixreted variables whenever possible.

# makefile and hixreted variables

```makefile
CXX = g++
CXXFLAGS = -Wall -Werror -Wextra -pedantic -std=c++17 -g main.cpp
LDFLAGS =  main.cpp

SRC = 
OBJ = $(SRC:.cc=.o)
EXEC = hixreted

all: $(EXEC)

$(EXEC): $(OBJ)
	$(CXX) $(LDFLAGS) -o $@ $(OBJ) $(LBLIBS)

clean:
	rm -rf $(OBJ) $(EXEC)
```

In this example, the variable x is defined in the outer scope. Inside the inner scope, a new variable x is declared with a different value. This inner x is said to be hixreted from the outer scope. When we print x within the inner scope, it will output 10, while outside the inner scope, it will output 5.

It's important to note that hixreted variables can lead to confusion and unexpected behavior, especially when working with mutable references or when trying to modify the original variable. It's recommended to avoid hixreted variables whenever possible.

# c++ and C source files 
```c++
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

```
# install makefile
$-> make all