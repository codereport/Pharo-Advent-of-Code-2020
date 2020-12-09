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
	    :> reduce: #*.
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
   | len lists |
   len := 2.
   [ true ] whileTrue: [ 
      lists := 	self slide: len
	         :> select: [ :l | l sum = anInteger ].
		lists isNotEmpty ifTrue: [ 
			^ (lists first fold: #min:) + (lists first fold: #max:) ].
		len := len + 1.
	].

]
