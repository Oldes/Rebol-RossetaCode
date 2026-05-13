Rebol [
    title: "Rosetta code: Extend your language"
    file:  %Extend_your_language.r3
    url:   https://rosettacode.org/wiki/Extend_your_language
]

if2: func [cond1 cond2 both one two none][
    case [
        all [cond1 cond2] both
        cond1             one 
        cond2             two 
        true              none
    ]
]

print if2 false true ["both"       ]
                     ["only first" ]
                     ["only second"]
                     ["none"       ]
