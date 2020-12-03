Class {
	#name : #AoC2020Tests,
	#superclass : #TestCase,
	#category : #'Pharo-Advent-of-Code-2020-Tests'
}

{ #category : #tests }
AoC2020Tests >> testDay01A [
	self assert: (#(1721 979 366 299 675 1456) day01A) equals: 514579.
]

{ #category : #tests }
AoC2020Tests >> testDay01B [
	self assert: (#(1721 979 366 299 675 1456) day01B) equals: 241861950.
]
