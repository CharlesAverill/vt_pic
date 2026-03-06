/* Minimum Excludant
 * 
 * Finds the smallest non-negative integer not present in an array
 *
 * https://verifythis.github.io/onsite/archive/2025/challenges/verifyThis2025-Challenge-1.pdf
 */

#include <stdbool.h>
#include <stdlib.h>
#include <assert.h>
#include <stdint.h>

typedef unsigned long int ulong;

// Naive Implementation
ulong mex0(int* arr, ulong n) {
    for(ulong v = 0; v < n; v++) {
        ulong i = 0;
        
        while (i < n && arr[i] != v)
            i++;

        if (i == n)
            return v;
    }

    return n;
}

// Boolean Marks
ulong mex1(int* arr, ulong n) {
    bool *seen = malloc(sizeof(bool) * n);

    for(ulong i = 0; i < n; i++) {
        int x = arr[i];
        if (0 <= x && x < n)
            seen[x] = true;
    }

    ulong r = 0;
    while(r < n && seen[r])
        r++;

    free(seen);

    return r;
}

// Mutated Array
inline void swap(int* arr, unsigned int i, unsigned int j) {
    int tmp = arr[i];
    arr[i] = arr[j];
    arr[j] = tmp;
}

unsigned int mex2(int* arr, unsigned int n) {
    int i = 0;
    while(i < n) {
        int x = arr[i];
        if (x < 0 || x >= n || arr[x] == x)
            i++;
        else if (x < i)
            swap(arr, i++, x);
        else
            swap(arr, i, x);
    }

    for(i = 0; i < n; i++)
        if (arr[i] != i)
            return i;

    return n;
}

// Sorted Array
unsigned int mex3(int* arr, unsigned int n) {
    int last = -1;

    for(int i = 0; i < n; i++) {
        if (arr[i] >= last + 2)
            return last + 1;
        if (arr[i] >= 0)
            last = arr[i];
        assert(last < n);
    }

    return last + 1;
}
