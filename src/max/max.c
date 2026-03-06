#include <stdint.h>

int64_t max(int64_t *arr, uint64_t n) {
    int64_t x = 0;
    int64_t y = n - 1;

    while (x != y) {
        if (arr[x] < arr[y])
            x++;
        else
            y--;
    }

    return x;
}
