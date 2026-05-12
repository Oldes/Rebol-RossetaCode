Rebol [
    title: "Rosetta code: Sorting algorithms/Comb sort"
    file:  %Sorting_algorithms-Comb_sort.r3
    url:   https://rosettacode.org/wiki/Sorting_algorithms/Comb_sort
]

comb-sort: function [
    "Sort a series in ascending order using comb sort."
    items [series!] "Values to sort"
][
    gap: len: length? items
    swaps: 0
    while [gap + swaps > 1][
        swaps: 0
        ;; shrink gap each pass until it reaches 1
        if gap > 1 [gap: to integer! gap / 1.2473]
        ;; compare and swap each pair separated by 'gap'
        repeat k len - gap [
            if items/:k > items/(k + gap) [
                swap at items k at items k + gap
                ++ swaps
            ]
        ]
    ]
    items
]

probe comb-sort [3 1 2 8 5 7 9 4 6]
probe comb-sort "Hello Rosetta"