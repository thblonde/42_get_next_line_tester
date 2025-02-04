#include "../../get_next_line.h"

int main()
{
    int     fd;
    char    *line;

    fd = open("tests/long_line.txt", O_RDONLY);
    if (fd == -1)
        return (1);
    while ((line = get_next_line(fd)) != NULL)
    {
        printf("%s", line);
        free(line);
    }
    close(fd);
    return (0);
}
