Extension { #name : #String }

{ #category : #'*Pharo-Advent-of-Code-2020' }
String >> day02A [
   | parsed lower upper letter password count |
   parsed   := self splitOnAny: '-: '.
   lower    := parsed first asNumber.
   upper    := parsed second asNumber.
   letter   := parsed third first.
   password := parsed fifth.
   count    := password occurrencesOf: letter.
   ^ count between: lower and: upper.
]

{ #category : #'*Pharo-Advent-of-Code-2020' }
String >> day02B [
   | parsed left right letter password |
   parsed   := self splitOnAny: '-: '.
   left     := parsed first asNumber.
   right    := parsed second asNumber.
   letter   := parsed third first.
   password := parsed fifth.
   ^    (password at: left  :> = letter) 
     ~~ (password at: right :> = letter).
]

{ #category : #'*Pharo-Advent-of-Code-2020' }
String >> day03A [
   | h |
   h := self size.
   ^ h iota 
    :> collect: [ :e |  e @ (e - 1 * 3 % h + 1) ]
    :> collect: [ :p | self at: (p x) :> at: (p y) ]
    :> select:  (#= @@ $#)
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
   | delim valid validByr validIyr validEyr validHgt validHcl validEcl validPid |

   delim := String new: 2 withAll: Character cr.

   validByr := [ :e | (e size = 4) and: (e asNumber between: 1920 and: 2002). ].
   validIyr := [ :e | (e size = 4) and: (e asNumber between: 2010 and: 2020). ].
   validEyr := [ :e | (e size = 4) and: (e asNumber between: 2020 and: 2030). ].
   validHgt := [ :e | (e size between: 4 and: 5) and: ((e allButLast: 2) = 'in'
	    ifTrue: [ ((e allButFirst: 2) asNumber between: 59 and: 76) ]
	    ifFalse: ((e allButLast: 2) = 'cm' and: (((e allButFirst: 3) isAllDigits) and: (((e allButFirst: 3) asNumber) between: 150 and: 193 )))) ].
   validHcl := [ :e | (e size = 7) and: (e first = $# and: (e allButLast: 6 :> allSatisfy: [ :c | ('01234567890abcdef' indexOf: c) ~~ 0 ])) ].
   validEcl := [ :e | #('amb' 'blu' 'brn' 'gry' 'grn' 'hzl' 'oth') includes: e ].
   validPid := [ :e | (e size = 9) and: (e isAllDigits) ].
   
   valid := [ :e | 
	    e first = 'byr' ifTrue: [ validByr value: (e second) ] ifFalse:
	   (e first = 'iyr' ifTrue: [ validIyr value: (e second) ] ifFalse:
	   (e first = 'eyr' ifTrue: [ validEyr value: (e second) ] ifFalse:
     (e first = 'hgt' ifTrue: [ validHgt value: (e second) ] ifFalse:
     (e first = 'hcl' ifTrue: [ validHcl value: (e second) ] ifFalse:
	   (e first = 'ecl' ifTrue: [ validEcl value: (e second) ] ifFalse:
     (e first = 'pid' ifTrue: [ validPid value: (e second) ] ifFalse: (e first = 'cid'))))))). ].

   ^ self splitOn: delim
       :> collect: [ :e | e substrings :> collect: [ :kv | kv splitOn: $: ] ]
       :> collect: [ :e | (e size >= 7) and: (e collect: valid) :> fold: #and: ]
       :> select: #yourself
       :> size.

]

{ #category : #'*Pharo-Advent-of-Code-2020' }
String >> day05A [
   ^ self lines collect: #day05AseatId 
       :> max.
]

{ #category : #'*Pharo-Advent-of-Code-2020' }
String >> day05AseatId [
   ^ self reversed 
       :> collect: [ :e | ('RB' includes: e) asBit ] as: Array
       :> polynomialEval: 2.
    
]

{ #category : #'*Pharo-Advent-of-Code-2020' }
String >> day05B [
  ^ self lines 
      :> collect: #day05AseatId
      :> sorted
      :> adjacentFind: [ :a :b | b - a ~~ 1 ]
      :> average.
]

{ #category : #'*Pharo-Advent-of-Code-2020' }
String >> day06A [
   ^ self splitOn: '\\' withCRs
       :> collect: [ :e | e copyWithout: Character cr ]
       :> collect: [ :e | e asSet size ]
       :> sum
]

{ #category : #'*Pharo-Advent-of-Code-2020' }
String >> day06B [
   ^ self splitOn: '\\' withCRs 
       :> collect: #lines 
       :> collect: [ :e | e reduce: #&] 
       :> collect: #size
       :> sum
]

{ #category : #'*Pharo-Advent-of-Code-2020' }
String >> day07a [
   | parsed |
   parsed := self copyWithoutAll: 's.'
      :> lines
      :> collect: [ :e | e splitOn: 'bag' :> select: #isNotEmpty :> asArray ]" can remove asArray "
      :> collect: [ :e | e collect: [ :f | f substrings last: 2 :> fold: #, ] ].
   ^ 0.
]

{ #category : #'*Pharo-Advent-of-Code-2020' }
String >> day08a [
   | asm seen idx acc p |
   asm := self lines
       :> collect: #substrings
       :> collect: [ :e | Pair with: e first with: (e last copyWithout: $+) asNumber ].
   seen := Set new.
   idx  := 1.
   acc  := 0.
   [ seen includes: idx ] whileFalse: [ 
      seen add: idx.
      p   := asm at: idx.
      idx := (p first = 'jmp') ifTrue: [ idx + (p second) ] ifFalse: [ idx + 1 ].
      acc := (p first = 'acc') ifTrue: [ acc + (p second) ] ifFalse: [ acc ]. 
   ].
   ^ acc.
]

{ #category : #'*Pharo-Advent-of-Code-2020' }
String >> day08b [
   | asm seen idx acc p flip a |
   asm := self lines
            :> collect: #substrings
            :> collect: [ :e | Pair with: e first with: (e last copyWithout: $+) asNumber ].

	flip := 1.
	[ true ] whileTrue: [ 
      (asm at: flip :> first :> = 'acc') ifFalse: [ 
         seen := Set new.
         idx  := 1.
         acc  := 0.
         [ (seen includes: idx) or: (idx > asm size) ] whileFalse: [ 
	         seen add: idx.
	         p := asm at: idx.
	         a := p first. " how to avoid itm here "
	         idx = flip ifTrue: [ p first = 'nop' ifTrue: [ a := 'jmp' ] ifFalse: [ a := 'nop' ] ].
            a = 'jmp' ifTrue: [ idx := idx + (p second) ] ifFalse: [ idx := idx + 1 ]. " how to avoid itm here "
	         a = 'acc' ifTrue: [ acc := acc + (p second) ]. 
	      ].
	      idx = (asm size + 1) ifTrue: [ ^ acc. ]
	   ].
      flip := flip + 1.
   ]
]
