Extension { #name : #Array }

{ #category : #'*Pharo-Advent-of-Code-2020' }
Array >> day01A [
	^ self combinationsOf: 2 
	       select: [ :e | e sum == 2020 ]
	    :> first 
	    :> inject: 1 into: #*.
]

{ #category : #'*Pharo-Advent-of-Code-2020' }
Array >> day01B [
	^ self combinationsOf: 3
	       select: [ :e | e sum == 2020 ]
	    :> first 
	    :> inject: 1 into: #*.
]

{ #category : #'*Pharo-Advent-of-Code-2020' }
Array >> day03A [
   | h |
   h := self size.
   ^ h iota 
    :> collect: [ :e | Pair with: e with: (((e - 1) * 3 % h) + 1) ]
    :> collect: [ :p | self at: (p first) :> at: (p second) ]
    :> select:  [ :e | e = $# ]
    :> size.

]
