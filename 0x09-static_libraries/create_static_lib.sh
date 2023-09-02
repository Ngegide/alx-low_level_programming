#!/bin/bash
gcc -c *.c
ar rcs libmy.a
ar rc libmy.a *o
gcc -wall -pedantic -werror -wextra -c *.c
ar -rc liball.a *.o
ranlib liball.a
ar -t libmy.a
nm libmy.a
