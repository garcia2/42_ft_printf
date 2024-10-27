# ft_printf

**ft_printf** is a project from 42 school that consists of recreating the standard `printf` function in C. The objective is to develop a custom version of this function that reproduces the main features of `printf` and provides a deeper understanding of variadic arguments, memory management, and formatting in C.

## Table of Contents
1. [Overview](#overview)
2. [Features](#features)
3. [Installation](#installation)
4. [Usage](#usage)
5. [Implemented Format Options](#implemented-format-options)
6. [Author](#author)

## Overview

The **ft_printf** project aims to recreate a `printf`-like function that can handle basic formats and common data types. This project is an opportunity to gain a deeper understanding of string manipulation, memory management, and the use of variadic macros in C.

## Features

- Handling of simple formats such as `%c`, `%s`, `%p`, `%d`, `%i`, `%u`, `%x`, and `%X`.
- Support for variadic arguments.
- Basic formatting options, including width and precision specifiers.

## Installation

To use `ft_printf`, start by cloning the repository and compiling the library.

```bash
git clone https://github.com/garcia2/42_ft_printf
cd 42_ft_printf
make
```

This will generate a `libftprintf.a` file that you can link with other programs to use `ft_printf`.

## Usage

To use `ft_printf`, simply include the `ft_printf.h` header in your code and link the library during compilation.

Example:

```c
#include "ft_printf.h"

int main(void) {
    int len;

    len = ft_printf("Hello, %s! The answer is %d.
", "world", 42);
    ft_printf("The printed string is %d characters long.
", len);

    return 0;
}
```

Compilation:

```bash
gcc -Wall -Wextra -Werror main.c -L. -lftprintf -o my_program
```

## Implemented Format Options

- `%c` : Single character
- `%s` : String of characters
- `%p` : Pointer in hexadecimal format
- `%d` and `%i` : Signed integer in base 10
- `%u` : Unsigned integer in base 10
- `%x` and `%X` : Unsigned integer in base 16 (lowercase and uppercase)

## Author

Project developed by [Nicolas Garcia](https://github.com/garcia2) as part of 42 school.
