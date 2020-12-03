Extension { #name : #Array }

{ #category : #'*Pharo-Advent-of-Code-2020' }
Array >> day01A [
	^ self combinationsOf: 2
	    :> select: [ :e | e sum == 2020 ]
	    :> first 
	    :> inject: 1 into: #*.
]

{ #category : #'*Pharo-Advent-of-Code-2020' }
Array >> day01B [
	^ self combinationsOf: 3
	    :> select: [ :e | e sum == 2020 ]
	    :> first 
	    :> inject: 1 into: #*.
]
