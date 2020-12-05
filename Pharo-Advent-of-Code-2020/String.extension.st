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

{ #category : #'*Pharo-Advent-of-Code-2020' }
String >> day03A [
   | h |
   h := self size.
   ^ h iota 
    :> collect: [ :e |  e @ (((e - 1) * 3 % h) + 1) ]
    :> collect: [ :p | self at: (p x) :> at: (p y) ]
    :> select:  [ :e | e = $# ]
    :> size.

]

{ #category : #'*Pharo-Advent-of-Code-2020' }
String >> day04A [
   | delim valid |

   delim := String new: 2 withAll: Character cr.
   valid := [ :e | (e size = 8) or: 
	                 (e size = 7 and: (e includes: 'cid' :> not)) ].

   ^ self splitOn: delim
       :> collect: [ :e | e substrings first ]
       :> select: valid
       :> size.
]

{ #category : #'*Pharo-Advent-of-Code-2020' }
String >> day04B [
   | delim valid validByr validIyr validEyr validEcl |

   delim := String new: 2 withAll: Character cr.

   validByr := [ :e | (e size = 4) and: (e asNumber between: 1920 and: 2002). ].
   validIyr := [ :e | (e size = 4) and: (e asNumber between: 2010 and: 2020). ].
   validEyr := [ :e | (e size = 4) and: (e asNumber between: 2020 and: 2030). ].
	
   validEcl := [ :e | #('amb' 'blu' 'brn' 'gry' 'grn' 'hzl' 'oth') includes: e ].
   
   valid := [ :e | 
	    e first = 'byr' ifTrue: (e second validByr)
	    ifFalse: false. ].

   ^ self splitOn: delim
       :> collect: [ :e | e substrings :> collect: [ :kv | kv splitOn: $: ] ]
       :> collect: [ :e | e collect: valid ].

]

{ #category : #'*Pharo-Advent-of-Code-2020' }
String >> day05A [
   ^ self lines 
          collect: #day05AseatId
       :> inject: -1 into: #max:.
]

{ #category : #'*Pharo-Advent-of-Code-2020' }
String >> day05AseatId [
   | bf lr a b x y |
   bf := self first: 7.
   lr := self last: 3.
   a := 0.
   b := 127.
   bf do: [ :e | e = $B ifTrue: [ a := a + b // 2 + 1 ] ifFalse: [ b := a + b // 2 ] ].
   x := 0.
   y := 7.
   lr do: [ :e | e = $R ifTrue: [ x := x + y // 2 + 1 ] ifFalse: [ y := x + y // 2 ] ].
   ^ (8 * a) + x
]

{ #category : #'*Pharo-Advent-of-Code-2020' }
String >> day05B [
  | temp |
  temp := self lines 
         collect: #day05AseatId
      :> sort.
  ^ temp zip: (temp allButFirst) 
    :> asArray
    :> select: [ :e | (e second) - (e first) ~~ 1 ]
    :> first
    :> first 
    :> + 1.
]
