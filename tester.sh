printf "\t\t1\t10\t100\t1000\t1000000\n"


printf "simple\t\t"
expected="Hello
Hola
Bonjour"
output=$(cc -Wall -Wextra -Werror -D BUFFER_SIZE=1 tests/simple.c ../get_next_line.c ../get_next_line_utils.c && ./a.out)

if [ "$output" == "$expected" ]
then
    printf "\033[0;32mOK\033[0m"
else
    printf "\033[0;31mKO\033[0m"
fi

output=$(cc -Wall -Wextra -Werror -D BUFFER_SIZE=10 tests/simple.c ../get_next_line.c ../get_next_line_utils.c && ./a.out)

if [ "$output" == "$expected" ]
then
    printf "\t\033[0;32mOK\033[0m"
else
    printf "\t\033[0;31mKO\033[0m"
fi

output=$(cc -Wall -Wextra -Werror -D BUFFER_SIZE=100 tests/simple.c ../get_next_line.c ../get_next_line_utils.c && ./a.out)

if [ "$output" == "$expected" ]
then
    printf "\t\033[0;32mOK\033[0m"
else
    printf "\t\033[0;31mKO\033[0m"
fi

output=$(cc -Wall -Wextra -Werror -D BUFFER_SIZE=1000 tests/simple.c ../get_next_line.c ../get_next_line_utils.c && ./a.out)

if [ "$output" == "$expected" ]
then
    printf "\t\033[0;32mOK\033[0m"
else
    printf "\t\033[0;31mKO\033[0m"
fi

output=$(cc -Wall -Wextra -Werror -D BUFFER_SIZE=1000000 tests/simple.c ../get_next_line.c ../get_next_line_utils.c && ./a.out)

if [ "$output" == "$expected" ]
then
    printf "\t\033[0;32mOK\033[0m\n"
else
    printf "\t\033[0;31mKO\033[0m\n"
fi




printf "empty\t\t"
expected=""

output=$(cc -Wall -Wextra -Werror -D BUFFER_SIZE=1 tests/empty.c ../get_next_line.c ../get_next_line_utils.c && ./a.out)

if [ "$output" == "$expected" ]
then
    printf "\033[0;32mOK\033[0m"
else
    printf "\033[0;31mKO\033[0m"
fi

output=$(cc -Wall -Wextra -Werror -D BUFFER_SIZE=10 tests/empty.c ../get_next_line.c ../get_next_line_utils.c && ./a.out)

if [ "$output" == "$expected" ]
then
    printf "\t\033[0;32mOK\033[0m"
else
    printf "\t\033[0;31mKO\033[0m"
fi

output=$(cc -Wall -Wextra -Werror -D BUFFER_SIZE=100 tests/empty.c ../get_next_line.c ../get_next_line_utils.c && ./a.out)

if [ "$output" == "$expected" ]
then
    printf "\t\033[0;32mOK\033[0m"
else
    printf "\t\033[0;31mKO\033[0m"
fi

output=$(cc -Wall -Wextra -Werror -D BUFFER_SIZE=1000 tests/empty.c ../get_next_line.c ../get_next_line_utils.c && ./a.out)

if [ "$output" == "$expected" ]
then
    printf "\t\033[0;32mOK\033[0m"
else
    printf "\t\033[0;31mKO\033[0m"
fi

output=$(cc -Wall -Wextra -Werror -D BUFFER_SIZE=1000000 tests/empty.c ../get_next_line.c ../get_next_line_utils.c && ./a.out)

if [ "$output" == "$expected" ]
then
    printf "\t\033[0;32mOK\033[0m\n"
else
    printf "\t\033[0;31mKO\033[0m\n"
fi




printf "blank_lines\t"
expected="Hello

Hola

Bonjour"

output=$(cc -Wall -Wextra -Werror -D BUFFER_SIZE=1 tests/blank_lines.c ../get_next_line.c ../get_next_line_utils.c && ./a.out)

if [ "$output" == "$expected" ]
then
    printf "\033[0;32mOK\033[0m"
else
    printf "\033[0;31mKO\033[0m"
fi

output=$(cc -Wall -Wextra -Werror -D BUFFER_SIZE=10 tests/blank_lines.c ../get_next_line.c ../get_next_line_utils.c && ./a.out)

if [ "$output" == "$expected" ]
then
    printf "\t\033[0;32mOK\033[0m"
else
    printf "\t\033[0;31mKO\033[0m"
fi

output=$(cc -Wall -Wextra -Werror -D BUFFER_SIZE=100 tests/blank_lines.c ../get_next_line.c ../get_next_line_utils.c && ./a.out)

if [ "$output" == "$expected" ]
then
    printf "\t\033[0;32mOK\033[0m"
else
    printf "\t\033[0;31mKO\033[0m"
fi

output=$(cc -Wall -Wextra -Werror -D BUFFER_SIZE=1000 tests/blank_lines.c ../get_next_line.c ../get_next_line_utils.c && ./a.out)

if [ "$output" == "$expected" ]
then
    printf "\t\033[0;32mOK\033[0m"
else
    printf "\t\033[0;31mKO\033[0m"
fi

output=$(cc -Wall -Wextra -Werror -D BUFFER_SIZE=1000000 tests/blank_lines.c ../get_next_line.c ../get_next_line_utils.c && ./a.out)

if [ "$output" == "$expected" ]
then
    printf "\t\033[0;32mOK\033[0m\n"
else
    printf "\t\033[0;31mKO\033[0m\n"
fi




printf "long_line\t"
expected="This is a very long line......................................................................................................................................................................................................"

output=$(cc -Wall -Wextra -Werror -D BUFFER_SIZE=1 tests/long_line.c ../get_next_line.c ../get_next_line_utils.c && ./a.out)

if [ "$output" == "$expected" ]
then
    printf "\033[0;32mOK\033[0m"
else
    printf "\033[0;31mKO\033[0m"
fi

output=$(cc -Wall -Wextra -Werror -D BUFFER_SIZE=10 tests/long_line.c ../get_next_line.c ../get_next_line_utils.c && ./a.out)

if [ "$output" == "$expected" ]
then
    printf "\t\033[0;32mOK\033[0m"
else
    printf "\t\033[0;31mKO\033[0m"
fi

output=$(cc -Wall -Wextra -Werror -D BUFFER_SIZE=100 tests/long_line.c ../get_next_line.c ../get_next_line_utils.c && ./a.out)

if [ "$output" == "$expected" ]
then
    printf "\t\033[0;32mOK\033[0m"
else
    printf "\t\033[0;31mKO\033[0m"
fi

output=$(cc -Wall -Wextra -Werror -D BUFFER_SIZE=1000 tests/long_line.c ../get_next_line.c ../get_next_line_utils.c && ./a.out)

if [ "$output" == "$expected" ]
then
    printf "\t\033[0;32mOK\033[0m"
else
    printf "\t\033[0;31mKO\033[0m"
fi

output=$(cc -Wall -Wextra -Werror -D BUFFER_SIZE=1000000 tests/long_line.c ../get_next_line.c ../get_next_line_utils.c && ./a.out)

if [ "$output" == "$expected" ]
then
    printf "\t\033[0;32mOK\033[0m\n"
else
    printf "\t\033[0;31mKO\033[0m\n"
fi




printf "no_nl\t\t"
expected="Hello World !"

output=$(cc -Wall -Wextra -Werror -D BUFFER_SIZE=1 tests/no_nl.c ../get_next_line.c ../get_next_line_utils.c && ./a.out)

if [ "$output" == "$expected" ]
then
    printf "\033[0;32mOK\033[0m"
else
    printf "\033[0;31mKO\033[0m"
fi

output=$(cc -Wall -Wextra -Werror -D BUFFER_SIZE=10 tests/no_nl.c ../get_next_line.c ../get_next_line_utils.c && ./a.out)

if [ "$output" == "$expected" ]
then
    printf "\t\033[0;32mOK\033[0m"
else
    printf "\t\033[0;31mKO\033[0m"
fi

output=$(cc -Wall -Wextra -Werror -D BUFFER_SIZE=100 tests/no_nl.c ../get_next_line.c ../get_next_line_utils.c && ./a.out)

if [ "$output" == "$expected" ]
then
    printf "\t\033[0;32mOK\033[0m"
else
    printf "\t\033[0;31mKO\033[0m"
fi

output=$(cc -Wall -Wextra -Werror -D BUFFER_SIZE=1000 tests/no_nl.c ../get_next_line.c ../get_next_line_utils.c && ./a.out)

if [ "$output" == "$expected" ]
then
    printf "\t\033[0;32mOK\033[0m"
else
    printf "\t\033[0;31mKO\033[0m"
fi

output=$(cc -Wall -Wextra -Werror -D BUFFER_SIZE=1000000 tests/no_nl.c ../get_next_line.c ../get_next_line_utils.c && ./a.out)

if [ "$output" == "$expected" ]
then
    printf "\t\033[0;32mOK\033[0m\n"
else
    printf "\t\033[0;31mKO\033[0m\n"
fi




printf "10_000_lines\t"
expected=$(cat tests/10_000_lines.txt)

output=$(cc -Wall -Wextra -Werror -D BUFFER_SIZE=1 tests/10_000_lines.c ../get_next_line.c ../get_next_line_utils.c && ./a.out)

if [ "$output" == "$expected" ]
then
    printf "\033[0;32mOK\033[0m"
else
    printf "\033[0;31mKO\033[0m"
fi

output=$(cc -Wall -Wextra -Werror -D BUFFER_SIZE=10 tests/10_000_lines.c ../get_next_line.c ../get_next_line_utils.c && ./a.out)

if [ "$output" == "$expected" ]
then
    printf "\t\033[0;32mOK\033[0m"
else
    printf "\t\033[0;31mKO\033[0m"
fi

output=$(cc -Wall -Wextra -Werror -D BUFFER_SIZE=100 tests/10_000_lines.c ../get_next_line.c ../get_next_line_utils.c && ./a.out)

if [ "$output" == "$expected" ]
then
    printf "\t\033[0;32mOK\033[0m"
else
    printf "\t\033[0;31mKO\033[0m"
fi

output=$(cc -Wall -Wextra -Werror -D BUFFER_SIZE=1000 tests/10_000_lines.c ../get_next_line.c ../get_next_line_utils.c && ./a.out)

if [ "$output" == "$expected" ]
then
    printf "\t\033[0;32mOK\033[0m"
else
    printf "\t\033[0;31mKO\033[0m"
fi

output=$(cc -Wall -Wextra -Werror -D BUFFER_SIZE=1000000 tests/10_000_lines.c ../get_next_line.c ../get_next_line_utils.c && ./a.out)

if [ "$output" == "$expected" ]
then
    printf "\t\033[0;32mOK\033[0m\n"
else
    printf "\t\033[0;31mKO\033[0m\n"
fi




printf "100_000_lines\t"
expected=$(cat tests/100_000_lines.txt)

output=$(cc -Wall -Wextra -Werror -D BUFFER_SIZE=1 tests/100_000_lines.c ../get_next_line.c ../get_next_line_utils.c && ./a.out)

if [ "$output" == "$expected" ]
then
    printf "\033[0;32mOK\033[0m"
else
    printf "\033[0;31mKO\033[0m"
fi

output=$(cc -Wall -Wextra -Werror -D BUFFER_SIZE=10 tests/100_000_lines.c ../get_next_line.c ../get_next_line_utils.c && ./a.out)

if [ "$output" == "$expected" ]
then
    printf "\t\033[0;32mOK\033[0m"
else
    printf "\t\033[0;31mKO\033[0m"
fi

output=$(cc -Wall -Wextra -Werror -D BUFFER_SIZE=100 tests/100_000_lines.c ../get_next_line.c ../get_next_line_utils.c && ./a.out)

if [ "$output" == "$expected" ]
then
    printf "\t\033[0;32mOK\033[0m"
else
    printf "\t\033[0;31mKO\033[0m"
fi

output=$(cc -Wall -Wextra -Werror -D BUFFER_SIZE=1000 tests/100_000_lines.c ../get_next_line.c ../get_next_line_utils.c && ./a.out)

if [ "$output" == "$expected" ]
then
    printf "\t\033[0;32mOK\033[0m"
else
    printf "\t\033[0;31mKO\033[0m"
fi

output=$(cc -Wall -Wextra -Werror -D BUFFER_SIZE=1000000 tests/100_000_lines.c ../get_next_line.c ../get_next_line_utils.c && ./a.out)

if [ "$output" == "$expected" ]
then
    printf "\t\033[0;32mOK\033[0m\n"
else
    printf "\t\033[0;31mKO\033[0m\n"
fi

rm -f a.out