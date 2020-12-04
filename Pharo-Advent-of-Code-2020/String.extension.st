Extension { #name : #String }

{ #category : #'*Pharo-Advent-of-Code-2020' }
String >> day02A [
   | parsed lower upper letter password count |
   parsed   := self splitOnAny: '-: '.
   lower    := parsed at: 1 :> asNumber.
   upper    := parsed at: 2 :> asNumber.
   letter   := parsed at: 3 :> first.
   password := parsed at: 5.
   count    := password occurrencesOf: letter.
   ^ count between: lower and: upper.
]

{ #category : #'*Pharo-Advent-of-Code-2020' }
String >> day02B [
   | parsed left right letter password |
   parsed   := self splitOnAny: '-: '.
   left     := parsed at: 1 :> asNumber.
   right    := parsed at: 2 :> asNumber.
   letter   := parsed at: 3 :> first.
   password := parsed at: 5.
   ^ (password at: left :> = letter) ~~ (password at: right :> = letter).
]