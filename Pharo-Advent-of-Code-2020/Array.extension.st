Extension { #name : #Array }

{ #category : #'*Pharo-Advent-of-Code-2020' }
Array >> day01A [
	^ self combinationsOf: 2 
	       select: [ :e | e sum == 2020 ]
	    :> first 
	    :> fold: #*.
]

{ #category : #'*Pharo-Advent-of-Code-2020' }
Array >> day01B [
	^ self combinationsOf: 3
	       select: [ :e | e sum == 2020 ]
	    :> first 
	    :> fold: #*.
]

{ #category : #'*Pharo-Advent-of-Code-2020' }
Array >> day03A [
   | h |
   h := self size.
   ^ h iota 
    :> collect: [ :e |  e @ (((e - 1) * 3 % h) + 1) ]
    :> collect: [ :p | self at: (p x) :> at: (p y) ]
    :> select:  [ :e | e = $# ]
    :> size.

]

{ #category : #'*Pharo-Advent-of-Code-2020' }
Array >> day09a: anInteger [ 
   | notTwoSum |
	notTwoSum := [ :l | l allButLast combinationsOf: 2 
		                           collect: [ :e | e sum = (l last) ] 
		                        :> select: #yourself 
		                        :> size :> = 0]. 

	^ self slide: (anInteger + 1)
	    :> select: notTwoSum
	    :> first
	    :> last.
]

{ #category : #'*Pharo-Advent-of-Code-2020' }
Array >> day09b: anInteger [
   | xs |
   2 to: self size do: [ :i |
      xs := self slide: i 
         :> select: [ :l | l sum = anInteger ].
      xs isNotEmpty ifTrue: [ 
         ^ xs first minMaxElement sum ].
   ].
]

{ #category : #'*Pharo-Advent-of-Code-2020' }
Array >> day10a [
	^ self sorted
	    :> adjacentDifference
	    :> frequencies 
	    :> values
       :> collect: 1 @@ #+
	    :> fold: #*.
]
