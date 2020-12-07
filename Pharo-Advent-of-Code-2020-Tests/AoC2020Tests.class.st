Class {
	#name : #AoC2020Tests,
	#superclass : #TestCase,
	#category : #'Pharo-Advent-of-Code-2020-Tests'
}

{ #category : #tests }
AoC2020Tests >> WhatILearnedFromAoC [
   "Learned about Point (@) as an alternative to Pair"
   "Learned about restarting test and debugging through it"
   "Learned that Collection has reduce and fold on top of inject"
   "Learned that first, second, third etc can be used instead of at: 1, 2, 3 etc"
   "Learned about String new: 2 withAll: ..."
   "Learned you can assign blocks to local variables"
]

{ #category : #tests }
AoC2020Tests >> testDay01A [
	self assert: (#(1721 979 366 299 675 1456) day01A) equals: 514579.
]

{ #category : #tests }
AoC2020Tests >> testDay01B [
	self assert: (#(1721 979 366 299 675 1456) day01B) equals: 241861950.
]

{ #category : #tests }
AoC2020Tests >> testDay02A [
	self assert: ('1-3 a: abcde'     day02A).
	self deny:   ('1-3 b: cdefg'     day02A).
	self assert: ('2-9 c: ccccccccc' day02A).
]

{ #category : #tests }
AoC2020Tests >> testDay02B [
	self assert: ('1-3 a: abcde'     day02B).
	self deny:   ('1-3 b: cdefg'     day02B).
	self deny:   ('2-9 c: ccccccccc' day02B).
]

{ #category : #tests }
AoC2020Tests >> testDay03A [
	self assert: 
	(#('..##.......'
     '#...#...#..'
     '.#....#..#.'
     '..#.#...#.#'
     '.#...##..#.'
     '..#.##.....'
     '.#.#.#....#'
     '.#........#'
     '#.##...#...'
     '#...##....#'
     '.#..#...#.#' ) day03A) equals: 7.
]

{ #category : #tests }
AoC2020Tests >> testDay04A [
	self assert: 
	('ecl:gry pid:860033327 eyr:2020 hcl:#fffffd
byr:1937 iyr:2017 cid:147 hgt:183cm

iyr:2013 ecl:amb cid:350 eyr:2023 pid:028048884
hcl:#cfa07d byr:1929

hcl:#ae17e1 iyr:2013
eyr:2024
ecl:brn pid:760753108 byr:1931
hgt:179cm

hcl:#cfa07d eyr:2025 pid:166559648
iyr:2011 ecl:brn hgt:59in' day04A) equals: 2.
]

{ #category : #tests }
AoC2020Tests >> testDay04B [
	self assert: 
	('eyr:1972 cid:100
hcl:#18171d ecl:amb hgt:170 pid:186cm iyr:2018 byr:1926

iyr:2019
hcl:#602927 eyr:1967 hgt:170cm
ecl:grn pid:012533040 byr:1946

hcl:dab227 iyr:2012
ecl:brn hgt:182cm pid:021572410 eyr:2020 byr:1992 cid:277

hgt:59cm ecl:zzz
eyr:2038 hcl:74454a iyr:2023
pid:3556412378 byr:2007

pid:087499704 hgt:74in ecl:grn iyr:2012 eyr:2030 byr:1980
hcl:#623a2f

eyr:2029 ecl:blu cid:129 byr:1989
iyr:2014 pid:896056539 hcl:#a97842 hgt:165cm

hcl:#888785
hgt:164cm byr:2001 iyr:2015 cid:88
pid:545766238 ecl:hzl
eyr:2022

iyr:2010 hgt:158cm hcl:#b6652a ecl:blu byr:1944 eyr:2021 pid:093154719' day04B) equals: 4.
]

{ #category : #tests }
AoC2020Tests >> testDay05A [
  self assert:	('FBFBBFFRLR' day05AseatId) equals: 357.
	self assert:	('BFFFBBFRRR' day05AseatId) equals: 567.
	self assert:	('FFFBBBFRRR' day05AseatId) equals: 119.
	self assert:	('BBFFBBFRLL' day05AseatId) equals: 820.
	self assert: ('BFFFBBFRRR
FFFBBBFRRR
BBFFBBFRLL' day05A) equals: 820.
  self assert: ('FBBBFBBLRR
BFFFBBFLRR
BFBFBBFLLR
BBFFFFBLLR
FBBFBBFRLL
BBFFFFBRLL
FBBFBFFLLR
BFFBBBFRRL
FFBFBFFRLR
FBFFFFBLLL
FBFFFFFLRL
FFFBFBBRLR
FFBFFFFLLL
BFBBBFFLLL
FFBBBFBRLR
BFFBFBFLLL
FBFBFFFLLL
BBFFBBBRRL
FBFFBFBLLL
BFFBFBFRRL
FBFBFFFRLR
BFBBBFBRLL
FFBBFBFLRL
FBBFFBFRRR
BFBBBBBLRL
FFBFBFBLRL
FFBFFFFLRL
BFBFBFBRRR
FBBBBBBRRR
BFBFFBBRLL
BBFFBFBLLL
BFBFBBFRLL
FBFBBBBRLR
BFFBBFBRRL
BFBBBFBRRR
FBBBFBBLRL
BBFFBBBLRL
FFBBFFFRRR
FBFFBFFLLL
FBFFBBFRLL
FBBBFBFRLL
BFFBBFFLRL
FFFBFBBRRR
BFBBBBFRLR
FBFBFBBRRL
BFFFFFFRRL
BFBBBBFRRL
FBFBBFFRRL
FBFFBFFRLR
FBBFFBBRRR
FBFBBFFRRR
FFFBBFFRLR
BBFFBFBRRL
FBBBBBFRRR
BFBBBBBRLL
BFFBFFBLRL
FBBBFFBRRR
BFFFBBFRLR
FFBFBBBRLL
BFBBBFFRLL
BFBBFBFRRR
FBFBFBBLLL
BBFBFBBRLL
FBBFFBBRLR
FFBBFBFLRR
FBFFFFFRLL
BFBFBBBRLR
FBFFFFBLRR
FBFFFFBRLL
BFFFFFFRLL
BBFBFFFRRL
BFBFBBBRRR
FFBFFFBLRL
BFFFBBBLLR
FBFFBFFRLL
FFFBFBBLRL
BFBFBBFRRL
FFBFFBBRLL
FBBFBFFLRR
FBFFFFFLLR
FFBFFBFRLL
FFBFFBFLRR
FBFBBBFRLR
FFBFBBFLLR
BBFFBFBLLR
FFBBBBBRRL
BFFBBBBRLL
FFBFBFFLLL
BBFFFBBRRL
FFBFFBFRRL
BBFFBFFRLR
FBFBBFFRLR
FBBFFBFRRL
FBBBFBBRRR
FFBBBBBRRR
BFFBBFBRLL
BFBFBBFLLL
FFBFBBBRRR
BBFFFBBRRR
BFFBFFBLRR
FFFBBFFLRL
BFFBBBFRLR
BFBBFBBRLL
BFBBFBBLLL
FFBFBFBRRL
BFFBBFFRRR
FBFBBBBLLL
FBFFFBFRRR
BFFBFFFLRL
FFFBFBBRRL
FBFBFBBRRR
FBBFBFBLLR
FBBBFFBRLR
FBFBFFBLLR
FBFFBBBRLL
FBFFFBBLRR
BFFFBFFLLL
BFBBBBBLLR
FFBBFFBRLR
BFBFBBFLRL
BBFFBBBRRR
FFBBFFFLRR
BFBFFFFRLR
BFBBBFBRRL
BFFBBBBRLR
BFFBFBBLLR
BFFBBFFLLR
FBFFBBBRLR
FBFFBBBLLR
BBFFBFFLLL
BFFBFBFRRR
BFBFFBFRLR
FBFFFBBLRL
FBBBFBFRRL
BBFFFFBLLL
FFBBBFFLRL
BFFBFFFRLR
FBBFBBFLLL
FBFFBFFRRL
FFBFFBBRLR
BBFFBFFLRR
FBFBBBBLLR
FFBBBFFLRR
BFBBFBFLLR
FBBFBBFLLR
FFBFFBBRRL
BBFFFFBRRL
FBBBBFBRRL
FBFBFFFLLR
BFBFBFBLLR
FFBFBFBRRR
BFFFBFFLLR
BBFFBFFRLL
FBBBFFBRLL
FBBFFFFRRL
FBBBFFFRRR
BBFFFBBRLL
BFFBBFFLRR
BFFBFBBRLR
BFFBFBBLLL
BBFBFFBLLR
FBBBBFFLLL
BFFBBFBLRL
FBBBBFBRRR
FBBFBBBRRL
BFFBBFFRLL
BFFFFFBLLR
BFFBBFBLRR
FFBBFBFRRR
BFBFFBFRRL
BFFFFBBLRR
FFFBBFBLRR
BFFFBBBLRR
FFBFBBFLRL
FBBBFFFLLL
FBFBFBFLRR
FFFBBFBLLL
FFBBFBBLLR
FBBFBBFLRL
FFBFFBBRRR
FBBBBFFRRL
FFFBBBFRLR
FBBFFFBLRL
BFFBFBBLRL
BFFBFBFLRR
BFFBFFBRRR
FFBFBBBRRL
BFFBFFFLLR
BFFBBFBRLR
FBBBFFFRRL
BBFBFFBLRL
BBFFFBBLLR
FBFBFFFRRR
BFFFBBBLRL
FBFFBFFLLR
BBFFFFFRLL
FFBFFFBLLL
BFBBFBBRLR
BFFFFFBLLL
BFBBFFFLLL
FFBBBBFRLR
BBFFFFFLLR
BFFFFBFLRL
FFBFFBBLLR
BBFFBFFLLR
BFBFFBFRRR
FBFFBFFRRR
BBFFFBFLLL
FFBFFFFRRL
FBBFBFFRRR
FFBBFBBRRL
FFBBBFFLLR
BFFFFBBLLR
FFBFBFBLLR
BFFBBBBLLR
FBBBBFBLLL
BFBFBBBRLL
FFBFBBFRRR
FFFBFBBLLR
FFFBBFBRRR
FFFBBBBLRR
FBBFFFFLRL
FFFBBFFLRR
FFBFBFFRLL
FBBFBBBRLR
FFBFBFBRLR
FBBBFFBLRL
BFFFFFFLRL
BFFBBBBLRR
FBBFFBBLRR
BBFFBBFRRL
FFBFBBBLLR
FFBFFFFRRR
FBFFFBBRRL
BFBFFFBLLR
FBBFBFBRRL
BBFBFFBRLR
FBBBBBFRLR
BFFBBBFLRR
BFFFFFBLRR
BBFFBBFRLL
FFFBBFFRRR
FBBBBFFRLL
FFBFFFFRLR
BFFFBFFRRL
FBBBBFFLRL
BBFBFFFRLL
BBFFFBBLRR
FBBBFFFLLR
BFFBFBFLRL
FFBBBBFLLL
BFFFBFFRLL
FBBFFBFLLR
BBFBFBBRRR
FFBFFFBRLL
FBFBBBFRLL
BFBBFBBLRR
FBBBBFFRLR
BFFBBBBLLL
FFFBBBBRLR
FBBFBBBRLL
FFBBBFBLRL
BBFBFFBLRR
FFBBFFFLLR
FFBBFBFRLR
BFBBBFBRLR
FBBFFFFLLL
BBFFFBFRRR
FFBFBBFLLL
FBBFBBBRRR
BFBBFFBRRR
FBBFFBFLLL
FFBFBBBLRL
FBFBBFBRRR
FBFBFFFRLL
BFFFFFFLLR
FBFBBBFLLR
BFBFFBFRLL
BFBFFBBRLR
BFFBBFBLLR
BFFBFBBLRR
BFBBBFFLRL
BFBBFBFLRR
BFBBBFFRLR
FFFBBFFRRL
BFFFBBFRRL
BFFBFBFLLR
BFBFFBBLRR
BFBBBBBRRR
FFBBFBBLRR
BFFBBFFRLR
FFBFBFBRLL
BFBBBBFLRL
FBBFBBFLRR
FBFBBBFLRL
FBFFFBBRRR
BBFBFFFRRR
FBFFBFBRLL
FBBBBBBRLL
FFBBBFFRRL
FFBBFFFRLL
FBFBBFBRLL
FFFBBBBLLL
BFBFBBBLLL
FFFBBBFLLR
FFBFBBFRLL
BBFFBBBLLR
FFFBBFBLRL
FFBBFBBLLL
FBFFFBFRLR
BFBBFBBLRL
FFFBFBFRLR
BFBFFFBRLR
FFBBBBBLLL
FBFBFFBRRR
BFFBBBBRRL
FBBBBFBLLR
BFBBFBFRRL
BBFBFBFLLR
BFFFBFBRRR
FFFBBFBRRL
BFBBBBFLLR
FBBBFBFLLR
FFBFFBFLRL
BFFFBFBLLL
BFBBBBBLRR
BFBFBBBLRR
BFFBFBBRLL
FFBFBFFLRL
FBBBFBBRRL
BFFBBFFLLL
FBFBFFBRLR
FBBFFFFLRR
FBBFBFBLRL
BBFFBBBLRR
BBFFBBFLLL
FBBBBBBRRL
BFFFFBFRRL
BFFFFBBLRL
BBFFFBFRLL
BFFBBFFRRL
FBBBFBFRLR
FBFFBFBLLR
FFBFFFFLRR
FBBBBBBLRL
FFBBFBBRLL
FFBBFBBLRL
FBFFFBBRLR
FFBBFFFLLL
BFFFFBFRRR
BFBFBFBLLL
FFFBBFFLLR
FBBBFBBRLL
BFFFFBBRLL
FBFBFFBRRL
BFBBBFBLLR
BFFBBBBRRR
BBFFFFFRLR
BFFFBBBRRL
BBFFFFFRRL
BFFBFBFRLL
BBFFFFFLRR
FBFBBBBLRR
FBFFBBBLRL
BFBFBFFRLL
FFFBBBBLLR
FBFBBBBRRR
FBBBBBFRRL
BFBFFFBRRL
BFBFFFBRRR
BBFBFBBLRR
FFBBBFBLLR
FFBBBFBRLL
BFBFFFFLLR
BFBFBFFLRL
FBFFFBBLLR
BFFFFFBRLL
BBFBFBBRRL
BFBBFFFRLL
BFFFFFFRLR
FBFFBFBRRR
BBFFBBFRRR
FFBBBFFRRR
FFBBBFFLLL
BFBBFFFLRR
FBBFFBFLRL
FBFFFFBLLR
BFBBBFBLRL
BFFBBBFRRR
BFBBBFFLLR
BFFFBBBRRR
BBFBFBFRRR
FFBFFBFRLR
FBBFFFFRLR
BFBFBBFRRR
BBFFBBFLRR
FBBBFFBLRR
BFBBFFBLRL
FBFBBBBRRL
FFFBBBFLRL
FBBFFFBRLR
FFFBBFFLLL
BFFBFBBRRL
BFFFBFBLRR
FBBFFFBRRR
FBBFFFBRRL
FBBBBBBRLR
FBFFFBFLRL
BBFFBFBLRL
FBBFFFBLLR
BFBFFBBRRR
FBFBBFFLRR
FBBFFBBLLR
FFBBBFFRLR
BFFBFFFLLL
FBBFFFFRLL
BFBFFBBLRL
BFBFFBFLLR
BFBBFFFRRR
BBFFFBFRLR
FBFBBBFRRL
FFBBFBBRLR
BFFFFFFRRR
BBFBBFFLLL
BBFBFFBRRR
FBBFFBBLLL
FFBFBFBLRR
BFBBFFFRRL
BBFBFFFLRR
FBBBBFBLRL
FBBFBFBRRR
FBFBFBBLRR
FBFFBBBLLL
FFBFBFFLRR
BFBFBFFRRR
BFBFBFFLRR
BFFFFFFLRR
FBFBFBBRLR
FFBFFFFRLL
FBBBFBFLRL
BFBFBBFLRR
FFBBFBBRRR
FBFBFFFLRR
BBFBFFBRRL
BFBFBFFLLL
FBFFBFBRLR
FBBBBBBLLR
FFBBBBFRLL
BFBFBBBLLR
FBFBBBBRLL
BFBBBBFLLL
FBFBFFBLRL
FFFBBBBRRR
BFFFFBFLLR
BBFFFFBLRR
BBFFFBFRRL
FBBFBFFLLL
BFFFBFBRLL
FBBBFFBRRL
FFFBFBBLRR
BBFFBBFLRL
BBFFBFFRRR
BFFFFBFRLR
FBFBBFBLRL
FBFFBBFLLL
FBFFFBBLLL
FFBBFFBLRL
FBBFBBFRLR
FBBFBBBLRL
FBFFFBBRLL
BFBFBBBRRL
BFBFBFBRLR
FBFFBFFLRR
BFFFBFFLRR
BFBBBFFLRR
FBBBBBFLLL
FFBFBFFRRR
BBFFBFFRRL
BFBBBFBLLL
FFBBFBFRLL
FBBBFBFRRR
FBFFBBBLRR
BBFFFFBRRR
FBFBFFFRRL
BFFFBBFLRL
FBBFFFBLLL
BFBBFFBLLR
BFBBFFBLLL
FBFFBBFRRR
BFFBBFBRRR
BFFFFFBRLR
FBBBBBBLLL
FFBFBBFLRR
FBFBFBBRLL
BBFBFFFLLR
BFFFFBBRRL
BFFBFFBLLR
BFFFBBFRLL
BBFFFFFLRL
FBFFFFFLLL
BBFFBBBRLL
BFBBFFBRRL
BFFFBBBRLL
FBFFBBFLRL
BBFBFFBLLL
FBFBBFBLRR
FFFBBBFLRR
BBFBFBFLRR
BFBBBBFRRR
BFFFBFFLRL
FBFFFFBRRL
BBFBFBFLLL
BFFFBBBRLR
FBFFBBFRRL
FBBFFBBRRL
FBFBFBFRLR
BFFBFFFRRL
FFFBFBBLLL
BFBBFBFRLL
BFFFBFBLLR
FBBFBBFRRL
FBBBBBFLRR
FBFFBFBLRR
FBBBFFBLLL
BFBBBFFRRR
BFBFFFFLRL
FFBBFFBRRL
BFFFFFFLLL
FFBFFBBLRL
FFFBBBFRLL
BFFFBBFLLL
FBBBFBBRLR
BBFBFFFRLR
BFFBFFBLLL
FFBBFBFLLR
FBFFBBBRRR
BFBFFBFLRR
FBFBFBBLRL
FFBFFFBRRR
FBBFFFFLLR
BFBBBFFRRL
FFBBBFFRLL
FFFBFBFRRR
FFBBBBFLRL
BFBFBFBRLL
FFFBBBFLLL
BFBFFFFLRR
BFFBFFBRRL
BFBFFBBLLL
FBBBBFBLRR
FFBFFBFRRR
FFBFFFBLLR
FFBBFFFRRL
BFBFFFFRLL
BBFFFBBRLR
FBFBBFBRRL
BFFFFFBLRL
FFBFFFFLLR
FBFFFBFLLR
FFFBBFBRLR
BBFBBFFLRL
FFBBBBBLLR
BFBBFBFLLL
BFBFFFFRRL
BFBBFFBRLR
FBBBFFFRLR
FBBFFBFRLR
BBFBFBBRLR
FBBBFFBLLR
FBBBFFFRLL
FBFBFBFRRR
BBFFBFBRRR
FFBBBBBRLL
FBFFBFBRRL
FBFFBBFLRR
FFFBBBFRRL
FFBBFFBRLL
BFBFFFBRLL
FBFFFBFLLL
FBBBBFFRRR
FBBFBFBRLL
BFFBFBFRLR
FFBFBFBLLL
FFBBFFBRRR
FBFFFFBLRL
FBBBFFFLRR
FFBBBBFRRL
FFBFBBBRLR
FBBBBFFLRR
BFBFBFBLRR
BBFBFFFLRL
FFFBBFBRLL
FBBBBBFLRL
FBBFBBBLLR
BFBBFFFLLR
FBFFFFFRLR
BBFFFFBRLR
FBFFFFFRRL
FFBBFFFLRL
FFBBBFBRRR
BBFFFBBLRL
FBBBBFBRLR
FBFBBFFLRL
FBFFBFFLRL
FFBFFFBRRL
FFBBBBFLLR
FBBFBFBLRR
FBFBBFBLLL
FFBBBFBLLL
BFFFFBBRRR
BBFFFBFLRL
FFFBBBBRLL
FFBFFBBLLL
FBFFFBFLRR
FBFBFFBLLL
BFFFBFFRRR
FFBBFFBLRR
BFBBFBFRLR
FFBFBFFRRL
BBFFFFBLRL
FFBBFFFRLR
BFBBFFBLRR
BBFBFBFRLL
FBFFFFBRLR
BBFFBBFLLR
FBBFFBBLRL
BFFFFFBRRL
BFBBFBFLRL
BBFFBFBRLR
BFFFFBFLRR
BFBFBFBLRL
FBFBFFFLRL
BFFFBBFLLR
BBFBFBBLRL
BFFFFBBLLL
BBFBFBBLLL
BFBBBBBRRL
FBFFBBFLLR
FFBFFBBLRR
FFBBFBFRRL
FBFBBBFLRR
FBFBBFFLLR
FFBBBBBRLR
FBFBBBFLLL
FBBFBBFRRR
FBBFBBBLLL
BFBFFBFLRL
FBFBFFBRLL
BFBFBFFLLR
FBBFFBFRLL
BFFBBBFLLR
BFFFFBBRLR
BFFBBFBLLL
BFFFFBFRLL
FFBFBBFRLR
BFFFBBBLLL
FBFBFBFLLL
BFBBBBBRLR
BFBBBFBLRR
FBBBFBFLLL
FBFFBBFRLR
BBFFBBBRLR
FFBFBBFRRL
BFBFBBFRLR
FBFFFFFLRR
BBFFFBFLRR
FBBFBFFRLR
BFBBFFFLRL
FBFBBFBLLR
BFFBBBFLRL
BFFBBBFLLL
BFBBFFFRLR
FBFFBBBRRL
BFFFBFBLRL
FBBBBBFRLL
BFFBBBBLRL
FBBFFFBRLL
FBBFBFFRLL
FBBFFBFLRR
FFBFBBBLLL
FFBFBBBLRR
BFBFFFBLLL
FFBFFFBLRR
FBFBBFBRLR
FBFBBBFRRR
FFFBFBFRLL
FBFFFBFRLL
BBFFBFBRLL
FFFBBBBRRL
FBFBFBBLLR
BBFFBBBLLL
FBBBBBFLLR
BFBFFFFRRR
FBBBBFFLLR
BFBBBBFLRR
BFBFFFBLRR
BFFFBBFRRR
FFFBBFBLLR
BFBBBBFRLL
BBFBFBFRRL
BBFBFFFLLL
FBFBFBFRLL
FBFBFFBLRR
BFBFBFBRRL
BFBBFFBRLL
BBFBFFBRLL
BFBBFBBRRR
FFBBBBFLRR
BBFFFBBLLL
FBBBFBBLLL
FFBBBFBLRR
BFBFBFFRLR
BBFBFBBLLR
BFBFFBFLLL
FBFBBFFRLL
FBFBFBFLRL
FBBFFFBLRR
BFBFFBBRRL
FFBFBFFLLR
FFBBFFBLLR
FFFBBBFRRR
BFFBFBBRRR
FFFBBBBLRL
FBBBBBBLRR
FBBBFBFLRR
FFBBBBFRRR
FFBFFBFLLL
BBFFBBFRLR
FBFFFFFRRR
FBBBFFFLRL
BFFBFFBRLR
FBFFFBFRRL
BBFFFFFLLL
FFBBFBFLLL
BFFBFFBRLL
FFBBFFBLLL
BBFFFBFLLR
FBBFBFBLLL
BFFFFFBRRR
BFBFBBBLRL
FBBFFBBRLL
BFFBFFFRLL
BFFBFFFLRR
BFFBBBFRLL
FBFBBFFLLL
FBFBFBFRRL
BFBBFBBLLR
FBFBBBBLRL
BFFFBFBRLR
FFFBFBFRRL
BBFBBFFLLR
FBBFBFFLRL
FFBBBBBLRR
FBBBBFBRLL
BBFBFBFRLR
BFBBBBBLLL
FBBBFBBLLR
FFFBBFFRLL
FFFBFBBRLL
FFBFFBFLLR
BBFFFFFRRR
BBFFBFFLRL
FBFFFFBRRR
BFBFFFBLRL
BBFFBFBLRR
FFBBBFBRRL
FBFFBFBLRL
FBBFBFBRLR
BFBFBFFRRL
BFFFBFBRRL
BFFFBFFRLR
BBFBFBFLRL
FBBFBFFRRL
BFBBFBBRRL
BFFFFBFLLL
FBBFBBBLRR
BFBFFFFLLL
FFBBBBBLRL
BFBFFBBLLR
FBFBFBFLLR
FFBFFFBRLR
FBBFFFFRRR') day05A equals: 866.

]

{ #category : #tests }
AoC2020Tests >> testDay05B [
  self assert: ('FBBBFBBLRR
BFFFBBFLRR
BFBFBBFLLR
BBFFFFBLLR
FBBFBBFRLL
BBFFFFBRLL
FBBFBFFLLR
BFFBBBFRRL
FFBFBFFRLR
FBFFFFBLLL
FBFFFFFLRL
FFFBFBBRLR
FFBFFFFLLL
BFBBBFFLLL
FFBBBFBRLR
BFFBFBFLLL
FBFBFFFLLL
BBFFBBBRRL
FBFFBFBLLL
BFFBFBFRRL
FBFBFFFRLR
BFBBBFBRLL
FFBBFBFLRL
FBBFFBFRRR
BFBBBBBLRL
FFBFBFBLRL
FFBFFFFLRL
BFBFBFBRRR
FBBBBBBRRR
BFBFFBBRLL
BBFFBFBLLL
BFBFBBFRLL
FBFBBBBRLR
BFFBBFBRRL
BFBBBFBRRR
FBBBFBBLRL
BBFFBBBLRL
FFBBFFFRRR
FBFFBFFLLL
FBFFBBFRLL
FBBBFBFRLL
BFFBBFFLRL
FFFBFBBRRR
BFBBBBFRLR
FBFBFBBRRL
BFFFFFFRRL
BFBBBBFRRL
FBFBBFFRRL
FBFFBFFRLR
FBBFFBBRRR
FBFBBFFRRR
FFFBBFFRLR
BBFFBFBRRL
FBBBBBFRRR
BFBBBBBRLL
BFFBFFBLRL
FBBBFFBRRR
BFFFBBFRLR
FFBFBBBRLL
BFBBBFFRLL
BFBBFBFRRR
FBFBFBBLLL
BBFBFBBRLL
FBBFFBBRLR
FFBBFBFLRR
FBFFFFFRLL
BFBFBBBRLR
FBFFFFBLRR
FBFFFFBRLL
BFFFFFFRLL
BBFBFFFRRL
BFBFBBBRRR
FFBFFFBLRL
BFFFBBBLLR
FBFFBFFRLL
FFFBFBBLRL
BFBFBBFRRL
FFBFFBBRLL
FBBFBFFLRR
FBFFFFFLLR
FFBFFBFRLL
FFBFFBFLRR
FBFBBBFRLR
FFBFBBFLLR
BBFFBFBLLR
FFBBBBBRRL
BFFBBBBRLL
FFBFBFFLLL
BBFFFBBRRL
FFBFFBFRRL
BBFFBFFRLR
FBFBBFFRLR
FBBFFBFRRL
FBBBFBBRRR
FFBBBBBRRR
BFFBBFBRLL
BFBFBBFLLL
FFBFBBBRRR
BBFFFBBRRR
BFFBFFBLRR
FFFBBFFLRL
BFFBBBFRLR
BFBBFBBRLL
BFBBFBBLLL
FFBFBFBRRL
BFFBBFFRRR
FBFBBBBLLL
FBFFFBFRRR
BFFBFFFLRL
FFFBFBBRRL
FBFBFBBRRR
FBBFBFBLLR
FBBBFFBRLR
FBFBFFBLLR
FBFFBBBRLL
FBFFFBBLRR
BFFFBFFLLL
BFBBBBBLLR
FFBBFFBRLR
BFBFBBFLRL
BBFFBBBRRR
FFBBFFFLRR
BFBFFFFRLR
BFBBBFBRRL
BFFBBBBRLR
BFFBFBBLLR
BFFBBFFLLR
FBFFBBBRLR
FBFFBBBLLR
BBFFBFFLLL
BFFBFBFRRR
BFBFFBFRLR
FBFFFBBLRL
FBBBFBFRRL
BBFFFFBLLL
FFBBBFFLRL
BFFBFFFRLR
FBBFBBFLLL
FBFFBFFRRL
FFBFFBBRLR
BBFFBFFLRR
FBFBBBBLLR
FFBBBFFLRR
BFBBFBFLLR
FBBFBBFLLR
FFBFFBBRRL
BBFFFFBRRL
FBBBBFBRRL
FBFBFFFLLR
BFBFBFBLLR
FFBFBFBRRR
BFFFBFFLLR
BBFFBFFRLL
FBBBFFBRLL
FBBFFFFRRL
FBBBFFFRRR
BBFFFBBRLL
BFFBBFFLRR
BFFBFBBRLR
BFFBFBBLLL
BBFBFFBLLR
FBBBBFFLLL
BFFBBFBLRL
FBBBBFBRRR
FBBFBBBRRL
BFFBBFFRLL
BFFFFFBLLR
BFFBBFBLRR
FFBBFBFRRR
BFBFFBFRRL
BFFFFBBLRR
FFFBBFBLRR
BFFFBBBLRR
FFBFBBFLRL
FBBBFFFLLL
FBFBFBFLRR
FFFBBFBLLL
FFBBFBBLLR
FBBFBBFLRL
FFBFFBBRRR
FBBBBFFRRL
FFFBBBFRLR
FBBFFFBLRL
BFFBFBBLRL
BFFBFBFLRR
BFFBFFBRRR
FFBFBBBRRL
BFFBFFFLLR
BFFBBFBRLR
FBBBFFFRRL
BBFBFFBLRL
BBFFFBBLLR
FBFBFFFRRR
BFFFBBBLRL
FBFFBFFLLR
BBFFFFFRLL
FFBFFFBLLL
BFBBFBBRLR
BFFFFFBLLL
BFBBFFFLLL
FFBBBBFRLR
BBFFFFFLLR
BFFFFBFLRL
FFBFFBBLLR
BBFFBFFLLR
BFBFFBFRRR
FBFFBFFRRR
BBFFFBFLLL
FFBFFFFRRL
FBBFBFFRRR
FFBBFBBRRL
FFBBBFFLLR
BFFFFBBLLR
FFBFBFBLLR
BFFBBBBLLR
FBBBBFBLLL
BFBFBBBRLL
FFBFBBFRRR
FFFBFBBLLR
FFFBBFBRRR
FFFBBBBLRR
FBBFFFFLRL
FFFBBFFLRR
FFBFBFFRLL
FBBFBBBRLR
FFBFBFBRLR
FBBBFFBLRL
BFFFFFFLRL
BFFBBBBLRR
FBBFFBBLRR
BBFFBBFRRL
FFBFBBBLLR
FFBFFFFRRR
FBFFFBBRRL
BFBFFFBLLR
FBBFBFBRRL
BBFBFFBRLR
FBBBBBFRLR
BFFBBBFLRR
BFFFFFBLRR
BBFFBBFRLL
FFFBBFFRRR
FBBBBFFRLL
FFBFFFFRLR
BFFFBFFRRL
FBBBBFFLRL
BBFBFFFRLL
BBFFFBBLRR
FBBBFFFLLR
BFFBFBFLRL
FFBBBBFLLL
BFFFBFFRLL
FBBFFBFLLR
BBFBFBBRRR
FFBFFFBRLL
FBFBBBFRLL
BFBBFBBLRR
FBBBBFFRLR
BFFBBBBLLL
FFFBBBBRLR
FBBFBBBRLL
FFBBBFBLRL
BBFBFFBLRR
FFBBFFFLLR
FFBBFBFRLR
BFBBBFBRLR
FBBFFFFLLL
BBFFFBFRRR
FFBFBBFLLL
FBBFBBBRRR
BFBBFFBRRR
FBBFFBFLLL
FFBFBBBLRL
FBFBBFBRRR
FBFBFFFRLL
BFFFFFFLLR
FBFBBBFLLR
BFBFFBFRLL
BFBFFBBRLR
BFFBBFBLLR
BFFBFBBLRR
BFBBBFFLRL
BFBBFBFLRR
BFBBBFFRLR
FFFBBFFRRL
BFFFBBFRRL
BFFBFBFLLR
BFBFFBBLRR
BFBBBBBRRR
FFBBFBBLRR
BFFBBFFRLR
FFBFBFBRLL
BFBBBBFLRL
FBBFBBFLRR
FBFBBBFLRL
FBFFFBBRRR
BBFBFFFRRR
FBFFBFBRLL
FBBBBBBRLL
FFBBBFFRRL
FFBBFFFRLL
FBFBBFBRLL
FFFBBBBLLL
BFBFBBBLLL
FFFBBBFLLR
FFBFBBFRLL
BBFFBBBLLR
FFFBBFBLRL
FFBBFBBLLL
FBFFFBFRLR
BFBBFBBLRL
FFFBFBFRLR
BFBFFFBRLR
FFBBBBBLLL
FBFBFFBRRR
BFFBBBBRRL
FBBBBFBLLR
BFBBFBFRRL
BBFBFBFLLR
BFFFBFBRRR
FFFBBFBRRL
BFBBBBFLLR
FBBBFBFLLR
FFBFFBFLRL
BFFFBFBLLL
BFBBBBBLRR
BFBFBBBLRR
BFFBFBBRLL
FFBFBFFLRL
FBBBFBBRRL
BFFBBFFLLL
FBFBFFBRLR
FBBFFFFLRR
FBBFBFBLRL
BBFFBBBLRR
BBFFBBFLLL
FBBBBBBRRL
BFFFFBFRRL
BFFFFBBLRL
BBFFFBFRLL
BFFBBFFRRL
FBBBFBFRLR
FBFFBFBLLR
FFBFFFFLRR
FBBBBBBLRL
FFBBFBBRLL
FFBBFBBLRL
FBFFFBBRLR
FFBBFFFLLL
BFFFFBFRRR
BFBFBFBLLL
FFFBBFFLLR
FBBBFBBRLL
BFFFFBBRLL
FBFBFFBRRL
BFBBBFBLLR
BFFBBBBRRR
BBFFFFFRLR
BFFFBBBRRL
BBFFFFFRRL
BFFBFBFRLL
BBFFFFFLRR
FBFBBBBLRR
FBFFBBBLRL
BFBFBFFRLL
FFFBBBBLLR
FBFBBBBRRR
FBBBBBFRRL
BFBFFFBRRL
BFBFFFBRRR
BBFBFBBLRR
FFBBBFBLLR
FFBBBFBRLL
BFBFFFFLLR
BFBFBFFLRL
FBFFFBBLLR
BFFFFFBRLL
BBFBFBBRRL
BFBBFFFRLL
BFFFFFFRLR
FBFFBFBRRR
BBFFBBFRRR
FFBBBFFRRR
FFBBBFFLLL
BFBBFFFLRR
FBBFFBFLRL
FBFFFFBLLR
BFBBBFBLRL
BFFBBBFRRR
BFBBBFFLLR
BFFFBBBRRR
BBFBFBFRRR
FFBFFBFRLR
FBBFFFFRLR
BFBFBBFRRR
BBFFBBFLRR
FBBBFFBLRR
BFBBFFBLRL
FBFBBBBRRL
FFFBBBFLRL
FBBFFFBRLR
FFFBBFFLLL
BFFBFBBRRL
BFFFBFBLRR
FBBFFFBRRR
FBBFFFBRRL
FBBBBBBRLR
FBFFFBFLRL
BBFFBFBLRL
FBBFFFBLLR
BFBFFBBRRR
FBFBBFFLRR
FBBFFBBLLR
FFBBBFFRLR
BFFBFFFLLL
FBBFFFFRLL
BFBFFBBLRL
BFBFFBFLLR
BFBBFFFRRR
BBFFFBFRLR
FBFBBBFRRL
FFBBFBBRLR
BFFFFFFRRR
BBFBBFFLLL
BBFBFFBRRR
FBBFFBBLLL
FFBFBFBLRR
BFBBFFFRRL
BBFBFFFLRR
FBBBBFBLRL
FBBFBFBRRR
FBFBFBBLRR
FBFFBBBLLL
FFBFBFFLRR
BFBFBFFRRR
BFBFBFFLRR
BFFFFFFLRR
FBFBFBBRLR
FFBFFFFRLL
FBBBFBFLRL
BFBFBBFLRR
FFBBFBBRRR
FBFBFFFLRR
BBFBFFBRRL
BFBFBFFLLL
FBFFBFBRLR
FBBBBBBLLR
FFBBBBFRLL
BFBFBBBLLR
FBFBBBBRLL
BFBBBBFLLL
FBFBFFBLRL
FFFBBBBRRR
BFFFFBFLLR
BBFFFFBLRR
BBFFFBFRRL
FBBFBFFLLL
BFFFBFBRLL
FBBBFFBRRL
FFFBFBBLRR
BBFFBBFLRL
BBFFBFFRRR
BFFFFBFRLR
FBFBBFBLRL
FBFFBBFLLL
FBFFFBBLLL
FFBBFFBLRL
FBBFBBFRLR
FBBFBBBLRL
FBFFFBBRLL
BFBFBBBRRL
BFBFBFBRLR
FBFFBFFLRR
BFFFBFFLRR
BFBBBFFLRR
FBBBBBFLLL
FFBFBFFRRR
BBFFBFFRRL
BFBBBFBLLL
FFBBFBFRLL
FBBBFBFRRR
FBFFBBBLRR
BBFFFFBRRR
FBFBFFFRRL
BFFFBBFLRL
FBBFFFBLLL
BFBBFFBLLR
BFBBFFBLLL
FBFFBBFRRR
BFFBBFBRRR
BFFFFFBRLR
FBBBBBBLLL
FFBFBBFLRR
FBFBFBBRLL
BBFBFFFLLR
BFFFFBBRRL
BFFBFFBLLR
BFFFBBFRLL
BBFFFFFLRL
FBFFFFFLLL
BBFFBBBRLL
BFBBFFBRRL
BFFFBBBRLL
FBFFBBFLRL
BBFBFFBLLL
FBFBBFBLRR
FFFBBBFLRR
BBFBFBFLRR
BFBBBBFRRR
BFFFBFFLRL
FBFFFFBRRL
BBFBFBFLLL
BFFFBBBRLR
FBFFBBFRRL
FBBFFBBRRL
FBFBFBFRLR
BFFBFFFRRL
FFFBFBBLLL
BFBBFBFRLL
BFFFBFBLLR
FBBFBBFRRL
FBBBBBFLRR
FBFFBFBLRR
FBBBFFBLLL
BFBBBFFRRR
BFBFFFFLRL
FFBBFFBRRL
BFFFFFFLLL
FFBFFBBLRL
FFFBBBFRLL
BFFFBBFLLL
FBBBFBBRLR
BBFBFFFRLR
BFFBFFBLLL
FFBBFBFLLR
FBFFBBBRRR
BFBFFBFLRR
FBFBFBBLRL
FFBFFFBRRR
FBBFFFFLLR
BFBBBFFRRL
FFBBBFFRLL
FFFBFBFRRR
FFBBBBFLRL
BFBFBFBRLL
FFFBBBFLLL
BFBFFFFLRR
BFFBFFBRRL
BFBFFBBLLL
FBBBBFBLRR
FFBFFBFRRR
FFBFFFBLLR
FFBBFFFRRL
BFBFFFFRLL
BBFFFBBRLR
FBFBBFBRRL
BFFFFFBLRL
FFBFFFFLLR
FBFFFBFLLR
FFFBBFBRLR
BBFBBFFLRL
FFBBBBBLLR
BFBBFBFLLL
BFBFFFFRRL
BFBBFFBRLR
FBBBFFFRLR
FBBFFBFRLR
BBFBFBBRLR
FBBBFFBLLR
FBBBFFFRLL
FBFBFBFRRR
BBFFBFBRRR
FFBBBBBRLL
FBFFBFBRRL
FBFFBBFLRR
FFFBBBFRRL
FFBBFFBRLL
BFBFFFBRLL
FBFFFBFLLL
FBBBBFFRRR
FBBFBFBRLL
BFFBFBFRLR
FFBFBFBLLL
FFBBFFBRRR
FBFFFFBLRL
FBBBFFFLRR
FFBBBBFRRL
FFBFBBBRLR
FBBBBFFLRR
BFBFBFBLRR
BBFBFFFLRL
FFFBBFBRLL
FBBBBBFLRL
FBBFBBBLLR
BFBBFFFLLR
FBFFFFFRLR
BBFFFFBRLR
FBFFFFFRRL
FFBBFFFLRL
FFBBBFBRRR
BBFFFBBLRL
FBBBBFBRLR
FBFBBFFLRL
FBFFBFFLRL
FFBFFFBRRL
FFBBBBFLLR
FBBFBFBLRR
FBFBBFBLLL
FFBBBFBLLL
BFFFFBBRRR
BBFFFBFLRL
FFFBBBBRLL
FFBFFBBLLL
FBFFFBFLRR
FBFBFFBLLL
BFFFBFFRRR
FFBBFFBLRR
BFBBFBFRLR
FFBFBFFRRL
BBFFFFBLRL
FFBBFFFRLR
BFBBFFBLRR
BBFBFBFRLL
FBFFFFBRLR
BBFFBBFLLR
FBBFFBBLRL
BFFFFFBRRL
BFBBFBFLRL
BBFFBFBRLR
BFFFFBFLRR
BFBFBFBLRL
FBFBFFFLRL
BFFFBBFLLR
BBFBFBBLRL
BFFFFBBLLL
BBFBFBBLLL
BFBBBBBRRL
FBFFBBFLLR
FFBFFBBLRR
FFBBFBFRRL
FBFBBBFLRR
FBFBBFFLLR
FFBBBBBRLR
FBFBBBFLLL
FBBFBBFRRR
FBBFBBBLLL
BFBFFBFLRL
FBFBFFBRLL
BFBFBFFLLR
FBBFFBFRLL
BFFBBBFLLR
BFFFFBBRLR
BFFBBFBLLL
BFFFFBFRLL
FFBFBBFRLR
BFFFBBBLLL
FBFBFBFLLL
BFBBBBBRLR
BFBBBFBLRR
FBBBFBFLLL
FBFFBBFRLR
BBFFBBBRLR
FFBFBBFRRL
BFBFBBFRLR
FBFFFFFLRR
BBFFFBFLRR
FBBFBFFRLR
BFBBFFFLRL
FBFBBFBLLR
BFFBBBFLRL
BFFBBBFLLL
BFBBFFFRLR
FBFFBBBRRL
BFFFBFBLRL
FBBBBBFRLL
BFFBBBBLRL
FBBFFFBRLL
FBBFBFFRLL
FBBFFBFLRR
FFBFBBBLLL
FFBFBBBLRR
BFBFFFBLLL
FFBFFFBLRR
FBFBBFBRLR
FBFBBBFRRR
FFFBFBFRLL
FBFFFBFRLL
BBFFBFBRLL
FFFBBBBRRL
FBFBFBBLLR
BBFFBBBLLL
FBBBBBFLLR
BFBFFFFRRR
FBBBBFFLLR
BFBBBBFLRR
BFBFFFBLRR
BFFFBBFRRR
FFFBBFBLLR
BFBBBBFRLL
BBFBFBFRRL
BBFBFFFLLL
FBFBFBFRLL
FBFBFFBLRR
BFBFBFBRRL
BFBBFFBRLL
BBFBFFBRLL
BFBBFBBRRR
FFBBBBFLRR
BBFFFBBLLL
FBBBFBBLLL
FFBBBFBLRR
BFBFBFFRLR
BBFBFBBLLR
BFBFFBFLLL
FBFBBFFRLL
FBFBFBFLRL
FBBFFFBLRR
BFBFFBBRRL
FFBFBFFLLR
FFBBFFBLLR
FFFBBBFRRR
BFFBFBBRRR
FFFBBBBLRL
FBBBBBBLRR
FBBBFBFLRR
FFBBBBFRRR
FFBFFBFLLL
BBFFBBFRLR
FBFFFFFRRR
FBBBFFFLRL
BFFBFFBRLR
FBFFFBFRRL
BBFFFFFLLL
FFBBFBFLLL
BFFBFFBRLL
FFBBFFBLLL
BBFFFBFLLR
FBBFBFBLLL
BFFFFFBRRR
BFBFBBBLRL
FBBFFBBRLL
BFFBFFFRLL
BFFBFFFLRR
BFFBBBFRLL
FBFBBFFLLL
FBFBFBFRRL
BFBBFBBLLR
FBFBBBBLRL
BFFFBFBRLR
FFFBFBFRRL
BBFBBFFLLR
FBBFBFFLRL
FFBBBBBLRR
FBBBBFBRLL
BBFBFBFRLR
BFBBBBBLLL
FBBBFBBLLR
FFFBBFFRLL
FFFBFBBRLL
FFBFFBFLLR
BBFFFFFRRR
BBFFBFFLRL
FBFFFFBRRR
BFBFFFBLRL
BBFFBFBLRR
FFBBBFBRRL
FBFFBFBLRL
FBBFBFBRLR
BFBFBFFRRL
BFFFBFBRRL
BFFFBFFRLR
BBFBFBFLRL
FBBFBFFRRL
BFBBFBBRRL
BFFFFBFLLL
FBBFBBBLRR
BFBFFFFLLL
FFBBBBBLRL
BFBFFBBLLR
FBFBFBFLLR
FFBFFFBRLR
FBBFFFFRRR') day05B equals: 583.

]

{ #category : #tests }
AoC2020Tests >> testDay06A [
	self assert: ('abc

a
b
c

ab
ac

a
a
a
a

b' day06A) equals: 11.
   self assert: ('jmqnkzlsfedaptx
usjfkadqwmeyilph

lodbmhvcaset
wcognbeaxhmvdt

f
f
f
f

dwxfircztpyshol
dogfryaxtlhzscw
gwchdzyftolsxra
thrdwcxfosqzyl
rholzdwctxfsy

dbifho
zmdh
hobd

iqjdvpxyfremnbzuohglc
dpohfyzjqicbnegrmuxvl
uromlgbqyjznecvpxhidf
cyebghlzpoiqmrjfxnudv
vjgzlpbfondxrceyhqimu

mpxsao
oxasmp
rzxqokamp

bigjutwl

rdcwfenzhlos
gzorslxh
marjhzqbipoukvls

fdclagjkvrmwxqyszupnoethbi
zdiyfcuahnkxewltsgqrpbj
derbpujchxlqfngtaskzwyi

gyx
yg
gx
fgver

nb
bo

efruscbgipldnvhkmj
nurivmpbcjhdlgeks
dejbncphmrugwilosvk
rdshekcjvpulmnigbx
ceylvdjbrtmipukhqsnagz

brel
sre

mrswukndjx
bpdmzfueco

pdlmyaghtbokvncwfej
awetylgcdvojhfbknpmz
hdcelimjygvtfbonkpa

phqa
nprhzw
ecilsgmtyxhupbofd

czilhqfowdmx
ozlhficawmx
lnhfzsxcwoim
hzlfoxawcim

efrhjzslqoptycnda
teszplncraojhqydf
fqshytjplrcnodaz
fpanjlzrocstmqydh
qvclarztynpdfjsguoh

tsazpikyfb
vprgizekaucq
kdlowxhnzamj

lnyr
pnyl
lny
znly

tlsp
tdpl
ktpl
ltps
wvqtzlep

zvpyqm
xn
se
sbt

itwldrhevjpsxfmyugkaoc
olaxpdtfgrewkjcsyuhimqv
sdeokjvhucplgyxtimwafr
tjmliweuykfvcrspaxghod
ufcesrkohxtipmjaylvwdg

g
g

eopcfqntlsxbrmwjku
xcybqjknurefsptwl
entfcwuxqbkzljrps
ufkxaincsdjbelrwhtqp
fwsnekcrtxupjlqb

gpwuyvtmefadj
ujaiwdetfyvgmp
mvdajpgwfeuty
fptkgamuveyjdw

pqelcgwyksmhx
wxlpghsqmnykec
hlkcbfyemwqpgdx

hflgy
hgfl
vfhlgp
hlgf

qfecvy
yefcvq
yqvfec

vgioynksz
kgzsivyo
vosigzyk

r
r
t
pz
r

smcejxgypzldar
pfjevtgrowiqmxbnc

wsk
iwks
wks
ksiw
ksuaw

bnxp
penx
jnxqpgl
pxcn

itdaowjkclxvuzgyprb
vbagupycikozjrtdwxl

jtokzdhpiy
pyhzjdikt
ihzmdjyktp
tjdihkzpy
yztkdpjhi

zpamwnubtx
ymznbwtu

zcxrublkn
nlrxubkz

hqtc
vedjnxuosriz
mp
lk

w
w
w
y
w

lsiphdnogwcjvx
ayxwtvqcogldn

rcxas
xcswy

ekxyfmurzcqhsojg
xshfumlkqrcytejo
uosqjyfihcxkrme
imorjfsxqcugekhy
uxrysjmqhkcofe

uhn
hu
uhyd
hun
mhru

rowzbpfcxvtaudlmnsygike
wnqbtsaplrxkyedzvfui
ntrkabpixsuqfvzlhewyd

ixzyehksfb
exifbzyksh
bjyzfieskxh
wxyhikrsnezvfb
hzkbfsexyi

rdtenu
xudh
hud
udx
ud

tqinldjgzhyosm
glnipmzoyqhts
hitsylzgqmon

fgmxvubwisltn
emxtwfnqdbvisl
lsmftnbvxwi
vlnwbstzxrimf

hxopuygnmsjfzketdliwr
lerzsoghdiuwfxpjtbymnk
ysmkdrgwpxujztnohlife

ubwsf
tpzwehnikrgyjl

uongl
nolug
luvnog
glonu
onugl

c
c

qhflxwpb
cfx
fuzxng
tfxah

ctfzbwdmv
mvtaowgk
motwvx
wtimv
wotmv

bkxz
awytslxgcj

ohyx
oxh
xho
xho

wrziyfnpqm
tjysexk

xvqnadomefi
miqovedxnaf
adxvofimqne
doxqnvafmie
xnioaevmfqd

mjleo
aeldc
tihrlk
ml

hxdoicvbzm
omvnxidwzhc
mzkilcfhudtex
qrhcdyxvwmzi

i
i
i

mrspfekayvo
fmrysvpkoa
kdozcmgasfrjypv
kvfmyrspoa
bwpsvfamokyr

vrotxenkg
rokmet
rekto
etykrpo
aetrpmko

ahkbpnglj
nalbqgpjh

ardusw
duwars
rduasw
auwsdr

v
b
d
b
d

alycurnjmw
msjdtwurqkypev
iurcfhmjywx

vkgiz
lnvzcdkj
bmqarwto

sdye
sdye
esyd

vwljec
zydxaenitwj
jerwohg
jregbwh

idzerxjavywb
fxawvzjriebo
lsbwgqaicuepxzrjmvt
jrbzdwivxea

paegsh
oagshetpj
eapghs

nsa
snma
san
nsa
ans

klctpn
kzp
pce
mpgbfqory
ecnp

pjhztrfdnax
zlhstupnbfajxdri
rkztopwdqnmxyaejfc
jxfrtapzdgns
vnjxzratlpdf

jeoqafrcsybmln
fiqjnmasrxky
snvqjryfamt
fanymhjrsq

xfshvyz
nluwirzdfehxpmtqv

yxzl
zpxl

it
eit
si

kotcavg
fgkbot
krojszy
tokewgiv

nz
n
n

xtehngmdwavqfocisl
htgwexliqsafvmnc

krjs
rkjseu
rjkwbgs
srjk

mksdca
whetbmv

bnckvzhdrwi
azbtvlqjymn
bhzcnkv

jgcwltupqdmyiobnkxfeh
digkmftlyxoqjcwhepunb
iyejcnutgbohwdmfkpxql

fnudjpocvl
ylupojvxk

etadjxh
ealvymb
ecmuybva
mlaneqr

iuetgj
egj

ovwaedbjungzi
goczdweuv
edjzsorywu
odfmzteqxuphwk
iuldwevoznj

kuafxo
kfubnx
xkuy

szbrnetfcmygqahop
bhmqfzctorelpagy
afemogythkrszcqpb

oazfxmulgki
lmagfukdzqx
iudmgelxcqkfaz
ujkzgfnarmxsl
lxptkgwmfazuy

ge
ibjufwpt

er
rte
re

lmiugtfa
isqokgfmybja
imvefghaw
mngcaifz

pkdgzocuen
aqyjrongpiszdwk

rhsjtnv
nftzhudvm
clhtvxrn
otchwyvn

obr
tbnha
bek
tbve
bvh

fzy
yvi
ys

linyheauvwqczfgxbm
mfvglhieqwxrubny
xuqemsiyldobgvfnw

wtlp
kyr

sxqecjzagtn
ntvpjxsciqzkga
jltghzxydqsmwca

tayqzsou
mhfbjkpngexvt

tulkjgfcb
bfmgucijtysl
jlocdagt
jlcpenqrhzvtg
cyxfjmgltwu

ifxsclutj
vxscjuidfl
icxfusjl
ijculsfx

nswkzpixhaojlruyq
akxjqrysohpiwl
xarqyepwlsgikthoj
lpqoxmkjaityhrsw
sxhjrwalqiypeko

maisrcxbwdtezfokqyunh
agsqmexkuyrodhb
ehoxduarylskmqb
oesydbkaumhrxql
msyuvhokbexpqard

yxnqvzglspecmathrb
gbnarexvolhmyspq
xblvqgpsfahmner

ewnudklzmvxqcs
xcspjzvmbhrtulk

vfzgpomk
zqgkrfopmhv
evzomkgxslip
vzhkopmyg

djoebyfurmnsczlapwhxtigvq
ahzdbvqljmpfcwskytuiogr

wyubqtslnxrkhjgfvi
ivlsqkfbtrjgyw

zj
u
k
bemnplisa
u

kqr
h
p
czh

nlwyij
njawiy

dmjtlipsqafwoezuxbrhkc
lzbwfusqdcrexaitmjkph
clpawkxbeifzdqmvhjsrut
gtxahqnzkbrpecuyfldswimj
sbzehxlcdtruafwkimpjq

vjlpwzocebkinmdaxtfsh
xtvnfekwdlhoj
jdovxkheunfltw
eylqghtonxjdfwvk

yvflxdbuaswtkj
ubatvydkwjfx
dtfkwvxaybuj
dwbftxakyjvgu

fitncsg
tfgnisc
gnscfti
cfsmtngi
tscfing

pqiynka
xjcuolmgtzwedrs

pjtfwa
v

ftaexgsbwmryph
ubfilnqyxamd
mjfayxlidbcou

phftai
aptighf
taphfi

zhvdutaxgyjcfp
cvzjtygfhpdu
dtzvphgcyjfu

ey
y
y

mhguzvyxtbnorf
bynmexr
bynxmer

teagprlboyfcjw
rptxbeyjfakwlg
yarpftwkljegb
fpkeltybjragw

akmbegwrtiszpqjclvy
hkqbmvnyir
irhvmqyokb
bvqkyimrf
mbkoyxrivqdn

yigkdnrmowxsje
jsigwnorxdmeyk
wjxengdiorskmy

wfqlmzv
tbposdrkhaygx

xdpu
a
cbq
p

kwveirgajyxcb
urkyvzwcibpexq
kwxvbcyeri
ciwxryekblv

cezbkty
bytezckq
iekgzxytbc
ecykztqb

ojpru
apouxrj
ofzrjpu
pjiruxo

lepmrvdqajo
peqnvaousjhmflb

apkzlh
clrp
jpfvyiune

kzonxufgedqjcvp
ljtypdihbrscmxguv

hztgrdkfbuilowmsepvncyj
yjzciltueoshvbkfmdgnwr
jbswehmkiyvgdnzurotlfc
xgqrhwsozelnyvudmftbkacji

i
cyeti
i

gahjt
thbljy
yjht

jvzdynegqkf
onyvlzfse
fvyezncw
nmezwuvyf

dz
zs
z

inrhgtdplvmqbykjfew
niuwhdabevcflpqmt

rndbqw
wnrcdqb

lqugyhvmpsbdicj
hnvqsilpbcgju
pvbscrqalhigjux
spcqlabijhguv
spagvcqbuhilj

drmfvibstegqjku
mveurqfjsdgtik
rmqdifjkvsegtu
ymdifkvtsquejgr

ocknfiw
pqtukinymcaow
owkcnsi

wfydm
mhflywcd

zoxdfl
rjbmwai

orikvxpg
kiubgrmxvpo
vokgcxirp
povkrigx

yjdir
zyudejri
jyrdi
jdyri

iqg
igq
iqg
gqei

gxyapsbkotzmjuwfnrqd
rbjuwaifmgykxdevpq
prdbgwmkhfanjyxqlzuc

cz
zc

xgdrpnmzq
xsqhflioukzevba
gdzycqxmwt

ksthb
hutjfk
htbzkj
ipdghalotk

z
f
f
f

h
ius

y
yjd
y
y

amv
mefva
avm
vma
avm

dsgce
gvcdsweplb
mhdgcfjaury

klg
lgkx
kgl

afxcimest
mfcaxstie
acmseitfxkh
xmifsacet
sxicetafm

hvenw
envhw
bevhn
ndhysev

d
dvj
cf
q

pcymvj
pmvcj
vpctmrja
cvmpj

slywjaeqovbduzg
fvprxbztdnisolcme

njlwgdhtpmqv
hlmcbgpfditvqwyza

drichegunkzsxaob
ashvyqigbzekjoxrmcdu
iabkzdgsrxechoul

gswcar
rwasgc
hcwrsga
srwacg

lmroa
ml
rlna
lbkvxy

cm
cm

iuljnorfsapxceztmbwhd
tyemwsnpjcbolqzifhrxau
ujpsfzamicorxenlbwghdt

aqibdv
qvceadli
qvaid
daviq

weyaps
eswyka

othfcp
qrplshxf
hfp

noegrjpfakyuxlbi
xfunzlrhgykijdpae
npjgilaykufrhex
nqfkxlryaoejgpiu
nspyigjltxwvmcuakerf

pdqk
pkqd
qpdok

onqriyzefvwat
pbgjslwd

ojhuntyxkvisg
touknjhyigrsvx

upbozynctgja
gjouyzenc

dhefoiyrxwbajt
fairhbtjywlxdops
adxfhtiybojw
tbyhixjwanfdo
ibyomdtkwjfhxa

sevowj
safehvyoxw
svoewt
jvsewio
woevs

ibqj
qjfb
bq
cbnwlqx

abhzxvqlrcjkmswgoynifpdet
upqvrzwfglaknioymtsbdhexj
rzeswobatkxqnlmyidjghvfp
rxmglhojqdtzbaeisnvkfpyw
zehtiqfslvpxkodgwarmjynb

ajrfuhtq
nsf
pifoycz
cgvefo

ufpzi
axu
wu
qtdul
gfu

qlfyskwebuzindcxmjohp
ydpznsqokiahbmcfeujwx
bogpjmfnyclizxkwsuhdeq
jezbdocqskpxynwhmuif

bdvrmazgpno
gmbantdurp

vawrthce
xpfcobhrzlatv
avethrc
vhtqrac

lsue
euils
esul
luse

rtcangphwi
hvlacwoftepnx

vkdmr
dlvtfrkmozshg
bmdvrk
uadbmkrjv
dmvexrkjp

jinbek
jknieb
jnkeib
kpiebnqj
jekibn

kfecmdalsjuo
ntjicfxguey

zviloscfjeywmuqgnh
lgizmhjqcounvy
ojhizcmvlnyguq
vchmnoyiuzqjlg

oqrwpzi
oipzuq

vpf
pfvx
paf

wrl
cfmrubxoap

nqufrlhkgzavmjwx
rvhmcpjlatfugwzqkn
umqznjfbglkvwarh

uaqvoxngrhkwpejtczsid
tujpcvwhkdsxzqoinelag

lypwa
wa

eyiukqb
fibueqyko

zxoatgsyfjv
stzgvxyafo
ystzfogvxa
yotxzafvsg
xtygovfsaz

ojz
joz
opqzdcjsyre

x
x
x
x
x

rc
fcr

i
i
ronsi
i
i

e
g
dqzls
rm

fxkvlgbtmnryusaidheo
nrylbusaoivfkxdmehgt
advjqoynebcirkwtmhlxzufg

zdqlbwhaio
dclkpzihborwxqa
adowihbzlq

fzgmpsnjvqudy
pvsyznmfdjqugw
amfsjduvygnqpz
ympsvndqzgjuwf
qfmxvspzdjgcyoun

akjpwio
hcbm

zrcxphil
cihbsgxlzypa
txlhsumizc
qikzldwxvhcnf

otnqmblawiuyzpekch
ztceiqnakymuwblpho
biaehczpwoklumxynqt
tekznibhmcqypluaow
zlmteknopqwcuibyah

lbmdvpyquzehwo
yjrhivaxkopsbzgft

ijbqampfcnyhluxg
cbqdijhumyxpagnfl
gfncxwjulpqmyba

vqfjaklcpsxn
sknqbcepz

dvejbmfk
pkmfjevb
jmfbkves
emkbfjv
ejvmbsfk

q
j
p
j

fzahk
khfa
fhak
hafk
ahkf

mrtvwxd
vrxpw

sz
zb
z
z
zd

umynwrjvdbxfgtoiazhskec
azocfmxwbsiyutnhkdvergj
bimekgvzhafnutodyrxscjw
rzscbaxwdvteoniumykfgjh

wixlhoqnkfecr
ntlyfkrwgziceh
isfluhxknrcbew

egnrfpwuvcys
vruygnfkeosw
yuqsfmkgnepvr
zdvutrsljxeygnf
gqfpiersynuv

rpenvsx
rvyepxsn
nxpersv
srpvxne
spezcjxrkdnv

kyjgzoub
ygzkiusoba
ybzjougk

yenijuv
nehjoyiuv

cx
ctx
xc
xc
fxkyc

yuf
yetf
yf

lcerywpto
uryte
eytr
veytr
rtye

skrfb
rmscwgk
fkrnjs
krvs
fsrken

lnapgo
nop
opn

cmwslaozbxtidn
xctbiadnmozlws
zdilnxobsactmwq
bwxcnszldiotam
zspaxcrityodmlbnw

qknijt
jipqknt
njtqkir
ktnjiq
iknqjt

awekvcdlzxufpbt
ucvjprwldkzbafxme
lmkxwefudvpjarbz
axsfpnbwkvlzyoegud

vpykichglsernwudt
cvtkuypidlwhersgn

qowbdgthv
hwdtgovbrq
hdbqtwokczv

vgmnarhkiqxybpj
abgjkqmrxypnvih
rhpaqvjxidtkmbngy
xpybkgqijrnhamv

u
u
u
u
u

bczhrlgvy
bxdswtfzmka
ozbge

wy
xte
bunkexi
magp

wchuym
youcw
cuyto
cuywqro
xnygieuc

htlxjfmbi
mtxiqjfhbyl

chsuf
d
vymtlxr
xto
kvm

iegprozq
zoqpegir
gzepiroq

pqjbvedxiscft
cztpxsfkjv
jtpzxfyacnsv
fkhtulcpxsvj
nxypcvtflsj

mbaeyinswvcjdqpflro
wyfivehtpalrjqdbmusnco
fdoipmenabsyqjrcwvl

sxumcri
xeupbrfimg

rvytkuzxhwj
kywbxrzjuvth
jkryxuvnwzht
ktjnrhpuvxwzy

pfuozncwalsv
iloasnzmuc

eamjzlcgrpytkwvdf
mgyrezadjpkwfltcvn
djplwrmyzgetfacvnk
ryzfmpagjwcltedvk
kezfgywvmltjarcpbd

unwsrlpbfqgikjx
kuewiqrfsgvbnjxpl
smgnakxrfjpliwuqb

rpjdloambtxiueskf
ultjriaoxbdgwspkm
amtlkpsjuibdrox
bjcikursxmaolepdt

dcrhitjplqmbsz
vjwrdktpclszhb

aknpdwxzyob
cbmepxzanwghlod
dftnzywxvobap
tpzaxwondb

skvfhqjwc
jvhfkwacq

rxhlqpsv
uoksgfhqmxwpct
qhvjpibsdnzxl
qxypisahb

ucxhazo
hoazcux
xhczoau
azuoxch
ucohzax

jroudctikylaz
uikajctloyrzdh
ztudariclkojy
yuakrlocjdzti

ibjgyheqtsfaokl
jnkxcrpfdwuvg

bgdcwmliqapr
zmnjtrfciskue

wrftzpxjbedniahscvguy
ztcvwbdiphryfsajegxnu
wjtnafcrsvyzpgdxubqhie
fjxazirvdgynetwhbcusp
rpwhyadfvecsxgijnlutzb

ixsafmqz
gckxfzuq
hbqxfz

btrkgnadzs
qdkwgstpfzv
hdieoxugzsj

gf
fg
fg
gfe

ieqgstfyzmvc
sbfvgjt
atsgvf
gfsvt

unktjiwsgfxvqh
wvbsikqmxjhtufng
iqhvkwxslutjfneg
ivqcujwngkxhfst
fixvhqtkusjnwg

jyeizdhnr
lfzdwes

sfnwxrhomibjk
jknewldztvcrsfmohi

bsnkyeljzihrvoq
jslzbqowfvekym

nhysveaf
mpfcoa
foam

adcj
jyc
jvad
mkj

ynoflmsi
mlzrfspi

djmqatpxs
stdmjxqa

jwdx
myplugwjs
hwjbd
wajxb

zpstmcdyijohqwexl
wqxoecpdihmszyjlt
eqxmpywisjchztodl

wcntrjpyubmdoeazh
cepthmbdzoynajrws
dnorwhbpqycetmjza
zncmybxroipjatweh

teobkvdywzmrq
yedjkgrofnvwtxb
oyewkrxftbdv

gdxqht
thd
thd

ornwqcgvfm
rgnvwqofmc

lgmkvjudyiobrfcehazs
idgzlokpbfhaujrymcsve
vhikocutjbsedrlamgyz

upafbl
bfaukpl

jzytn
nft
mnftz
qetna
hlcwpxigotd

ugiyjvlpeasw
qznlpu
umctqnplrd
fxkqphblu

urjsc
ecjurxsi
rcsljeu
jsurc
nsvzbcjur

shgtowmxzue
voedwskmhuajq
sompeirfyc

lofiwgavbxpdmrj
gjxbowprfaldmvi
rlwiafvjxdgompb
xvprgwoafmjdlbi
moildgafjrwvxpb

orqmykigx
gximohqyr
mqygxori
qymriogx

bw
wutak
oxsdf
rupqm
ehm

zvjibpa
ptgyzvild
itpzvxwnh
rkuiosqcpfze

viq
tviq
qiv
viq
qvi

dxpvnchftlqiokejyb
njayvfqcipxltdhbk
cdntplibhyvjqkfx

e
em
e
yve

pbkhjxsqwryfgiecavodunmzt
qxcnposglmrjbvyuzwedftik

yvwtescpiqmbxzkr
pmcbvytqkzwixes
wciktumeqzyxbvsp
wvfpkzysitbcxqem

ctxjqfkyehlpdnimaru
umayxlticfrnhzweqdj

zandguibwkxcmthy
vytkfexwczbnumagi

omfjbgiew
xjufhnoglwicp
jivdgwokf

uhiforcjt
tfrsehcbzou
crfogtuh
rtguhocf
ctioufryh

omgzpckleuwhvdixqns
dkhpognscemaivjwtzlbxu
mdivfpeczsnguolwxkh
zfvdhimgplseunwkoxcq
lmnpkvszheiwodcgqux

zyqmgvetxihro
odbkpwzxclnsu

vlbcuafq
ublqzv

bmfvqrhn
qbhjfnrvm
hjqbnvmfr
qmvhnrbtf
mrqnfvhb

amrvbuxwq
qxv
tszixqcfj
ryxaq

pbaoqmuhtzlnjfvki
poyaqztfbclkhus

osrkdltnbpcwe
jfypxqrkdvtoc

iwcng
hknmzjeribx
icndgo
cnid
gin

qdcglm
qgdmcl
cdmlqfg
qmgcdl
qdgwlmc

wmksilftz
ltsmkzfiewq
slmfwktiz
wfmzsiklnbt
itkmsewzlf

lqfeanvdbmxurghpjkz
bxiqwspehgckamdnyfl
bnmetlfxhgqdakp
jqzonfralpxbgedtkhm

ohjlba
njvolrh
nhloj
njlohzg
qfcyjholk

idntcbergvzw
benuwdqkvisrgz
bywroevdgzni

bsmypejhaqwtoc
bqraoipmnxsyvwhc
gsmohzqplfiwabyuc
crpqxsbzdhyamwo

hjiwcpsaem
acsjihpewm
pjchaewsim
mepjcshaiw

phxymeqsgd
emdgujsoqx

ahjw
lakw
wah
awh
wam

uqnem
unqem
uqmen
qeunm

mvixeokutywnspjd
pvondstjybxkuewmf
mxpevuokjgytnwsd

ljfqzmdtnubo
edmjungbzfqop
bmwndujzyqfo

ezpmodywqxgbakl
txljuwgbedqmzaoknpy
mwkzxgloyqpedab

jdanqfmbxtzgcireh
nhfqzrjicdmxabgte
izeafnmxqtjcrgdhb
xqtfadmbnzirjhcge
nmcfeihjxdalbgrqtz

tkcpyamfnqx
ckhmwnfprqsybt

yzjhtglxoimsnrapevfbwkdcqu
kjbtvgzlhrmdcsyfeiauoqwpxn

aoinshmy
fh
hf

bd
bk
b
b
bd

zbhvoa
revhzgbsof
qzcbvo

k
c

gsxmitkp
rqsxkp
skxp
skpx

tyfujzvsowxhqblapnk
atvoflqbpxkhnzsjwuy
hjasyxbztufwnpqkvlo

rphmgva
gmjp
bqnwofsdtzckeiluyx

wikmayl
hixnymja
anyim
ymrntaixu
ivmogaqybep

cafwzdvb
bnvmezfjpuqostyr
lavfcwbgzik

vuekszlxbnoid
codnzveliyxuk

mesvilyqtkrp
tiqjyvepsukl

ruicvofq
uvcfhoqr
frocuavq
forvcqui

q
q
q
wq

njbcfkdwsx
cbyfskwge
bdowxcsefk
wprzkiuvmlabfcs

qzbxragvojiysmc
xfhelp

nemwakchpqvbgzro
zqvbwrkhcmagoenp
nchqbaeozrgmvkpw
eqmbovwcakngzhpr
rhwzokanpvqbegmc

w
i
kuen
vp
p

rxjvfqgtam
xvfasqrdtng
atbfvqgcrx

egrj
ergnd
mvqxrpatke
hre

o
r
ej

eqotfizr
fioezr
eznorfmi

einyftdglp
tlegyfnbip

vnaftgzqyxldpkuhcjm
jhycgqwxvuznfdpbmlkaet
pgvkarltjnmzxchfuydq
hxzsqaltnyfcjmgvkpdu
zpnhuxagcjdqtfmvlky

juvirnzwohl
ecps
bckqpdy

jbgztcyhvidkpmrnfuawe
jhntweaufcpmizrydbkgv
dpievumwzfbcarngkjthy
vrkuhgtwpimncoafdzyjbe

dsqgnwtyf
fjdvstgwq
tdgnvwsfq
gqshfwdt
qtfolgdrsw

sa
as
as
as
soa

iyhbzw
bjwizhy
qywzbtinh
izyhcjbwd

kujogydsxtraliqmezbhwf
ydgrlabhfqizswoxktjme
fyjorqamgixhkbdlszetw
hroibgxfmjkweztqaysld
qrebaikxwzlfjogtdyhsm

zefvicmnptwjsrdaoguk
xjnrwosmvcbyeklfptzaui
wsmuajtnrkheopizcvf

tphinkmgfqlwxrdyevcbuzaso
qelonzuybdxvshtcfpkiagwrm

wjniasqzmecyupvo
qjewvapfmcxnlyuitzo
dvzqjruhkyeginmwpaoc
wozympvnijceqaubx
lpzwiumecayovjqn

yh
xc
xzl
g
qz

j
jg
jn

gtnerjuha
hagjvertnu
rgeahjutn
jngtherau

pzmvogy
tdjnxmc
bsruhakifwelq

qyswkhevrjxplmza
fkdequwnioby

avgqyxszctedpifhnbowjm
wotmkxnzavqpicbyjfh
rlybfxonczvhqmiptwaj

prs
sp
csp
ps

rq
naowd

zpmfkyuqo
uzqpymko
kmqznopuy

ozgdkubisx
zfbaidhwkgxstycq
dbmgxnipszk
gbvxznilsjdk

ow
o
o
qo

wqj
wtlqxj
wqjtf
qjucowa
qdjletw

ysaglonmkduqerzvixb
amribxuvnkyodslqgze

vx
a
x
x

cq
qc
cqj
qc

gmkto
hjiavenz
mo
fp
rkcduty

gprmentzywxdlbqsuj
yunepgtrqsjlwzmxbd
ujylsbqgvxnmpdtwzer
ntmpqedrgysjbuzlxw
crdujwtymosxgnpzqelb

rzd
o
ow
o
w

cnbsiowkrlpez
sjnlbwckprei

ibm
mbi
ziu

qiameynpoj
bijsyczhodtapelqf
opejqriyan
oaqygiejwp
onapeqjiy

lqjhiuyob
ybhuftil

u
j
u
u
u

cxhtlekagrpsz
aoyrtgqepm
jefwtirguaphd
puivrgacebnjt

iezamrsjwtgcdh
ymolpqdzscegtijanwxv
cmdgijsawetz
tbdcjiaszuegwm
agdmwkecijzfts

qbrhj
vrej
rjhpa
jpr
mylfzudkrtjw

qlxhycegwtadvfjumrnk
mlscrjtvhufkxdyegawqn

mxuiehsocznyvtd
nsoevihduzcmxty
sntheuocxzvydmi
zcnuxhmoivdetys
vdhzcslyminexout

nltphyz
tzyhnlp

chboyxelwdm
jafztipqr
kv
taj
nspuq

yaog
jvy
jkye

ofwcpsnbzejgu
srboczftpuewnkg
bgunhokierzpxsfcw
edwzsihpuxgnobfc
szxmuyabofvdecnpgw

gtpus
sptu
tuvsndqp

ti
it

jdlnmscgpaebruqh
pmglrnhcqebajdus
jbecumrqshlagdpn
qgpceanuhdlsojmbr
plcmsbhujrgedqan

uaekpzbgn
knvxhefcimy

ltvho
thlvo
tvohl

egaicytnwvkrsohljxbu
rvwbxjyasehnickgltuoz

nysofuzrbhcetakmdgp
trnvygcxzmsubaekd

dhva
shdav
vadh
avdh

piftmjyvorhdk
zovxaghiuq
ozvlibhugqew
cwhlivxo
iqhgosbv

icaxyjb
rklpxgq
tzrmx
xfmvn
zvexd

uezd
dfbze
yedzv
deyzf
szajqxpdk

jpetks
jpktie
xykjdcebzgtoh
nlkjaeit
ektjqfnl

itsgqnl
endictjfgoslu
ishtlpgxrn
stlngvi
twqslnrgi

agodjfkmblxvi
fixgmajlvokb
joafvxgkimlb

gfpqsxctouhrkaijzbmevw
gmfoikabwhzpsuqynetvlrxj
suejaigxtpodrmfzqhvkwb

pnvtgafmj
tnapfvjmg
njatvgpmf

lft
ltf
lsgyvmbfct
jdflt
tfdl

ihlxnvsktqyjgrpuow
whokcilnutvsxgy
lukshywxgntovi
vhtgyxwuknsloi
hxwgiukyotlvzsn

gtlhswu
ksutghwli
ltgushwp
ltjauwvecsxqhg

it
it
ti
it

n
o
j
stym

t
t
kt
t
tu

rnkmbuljxf
mabjnkychf
ktqbnmoflej
fknzmbrje

zsfewbyvxta
fywztbsa
tbsynqwzaof
toawfzbys

a
y
c

hl
hl
hl
lh

vqipoaygbnesrwhdm
dhrcapsuexbwioytnqgmk
gypzoneqdvfmbsrahiw

kypcwmun
emcnukhgw
ucgwmkn

doejsplwvmybiq
lbcjhmwsoqtdpgy

mylqbcezj
elmryzsq
ymqbdzeln

j
j
jt
j
j

nr
dn

oqzlbvtpgca
bqoeg
qugbreo

i
fd
mxy
ebgy

bktxgjlfnc
knfjtgxlcb
fbnltjgxmkc
xtnbjlfkcyg

rthfbiajsy
txsoayjh

xfjykonhtzwbric
wsvmtlgepc

iavozrmcxwf
jbpguq

qagdznlfwtpscre
fepczhiasgwdqlntr
fnwplacgutzeqsdr
acdqeplwgnsfztr

stxqayumzelihb
oumqlxbsatiyhze
bqsxemzyhtuila

g
sft
b
g

aozwhycb
azwy

f
kif

t
s
s
s
s

godyxji
igydjob
yjodig
yjdiog
ozjcdgyi

e
o
o
d

fqzpyghcv
cqvyhzfpg
chfqpzyvg

afvxbzskqu
puavxhzks

jtbg
gj
ijg
gij

k
vbcn
k
t

tzbkywxemd
tbkzxwmde
dbmekxwzt
tbzmkwedx

hagcokltv
lvgocykat
hyvipgcltako
amecltgnxvfjqdzkb

adgbvno
n

hgzkdpnimvaqtroycwf
yfjvrohmkapcwezdntsig
rkhnwzivptyomacfdgb

yoqdxf
uorhyx
cevlywoxzp
ogrumyxd

opmbnzxk
znobkmpx

pirlwzuqa
plunfoarqivz
rlqagzusip

r
q
j
r
c

qpokva
ikvaoq

bl
nxqv
sqb
rtikywjpdh
oaqg

zjoksy
zyosjk

otsuclvnbi
rusfwedazpjkygqm

qfdsrzk
suwrkqdh
eaisxcjdm

cdlnwvkoeizhmujfgtspxybrq
rdykiuwbhtzxmvcspnfeojqg

v
v
hv
' day06A) equals: 6437.
]

{ #category : #tests }
AoC2020Tests >> testDay06B [
	self assert: ('abc

a
b
c

ab
ac

a
a
a
a

b' day06B) equals: 6.
   self assert: ('jmqnkzlsfedaptx
usjfkadqwmeyilph

lodbmhvcaset
wcognbeaxhmvdt

f
f
f
f

dwxfircztpyshol
dogfryaxtlhzscw
gwchdzyftolsxra
thrdwcxfosqzyl
rholzdwctxfsy

dbifho
zmdh
hobd

iqjdvpxyfremnbzuohglc
dpohfyzjqicbnegrmuxvl
uromlgbqyjznecvpxhidf
cyebghlzpoiqmrjfxnudv
vjgzlpbfondxrceyhqimu

mpxsao
oxasmp
rzxqokamp

bigjutwl

rdcwfenzhlos
gzorslxh
marjhzqbipoukvls

fdclagjkvrmwxqyszupnoethbi
zdiyfcuahnkxewltsgqrpbj
derbpujchxlqfngtaskzwyi

gyx
yg
gx
fgver

nb
bo

efruscbgipldnvhkmj
nurivmpbcjhdlgeks
dejbncphmrugwilosvk
rdshekcjvpulmnigbx
ceylvdjbrtmipukhqsnagz

brel
sre

mrswukndjx
bpdmzfueco

pdlmyaghtbokvncwfej
awetylgcdvojhfbknpmz
hdcelimjygvtfbonkpa

phqa
nprhzw
ecilsgmtyxhupbofd

czilhqfowdmx
ozlhficawmx
lnhfzsxcwoim
hzlfoxawcim

efrhjzslqoptycnda
teszplncraojhqydf
fqshytjplrcnodaz
fpanjlzrocstmqydh
qvclarztynpdfjsguoh

tsazpikyfb
vprgizekaucq
kdlowxhnzamj

lnyr
pnyl
lny
znly

tlsp
tdpl
ktpl
ltps
wvqtzlep

zvpyqm
xn
se
sbt

itwldrhevjpsxfmyugkaoc
olaxpdtfgrewkjcsyuhimqv
sdeokjvhucplgyxtimwafr
tjmliweuykfvcrspaxghod
ufcesrkohxtipmjaylvwdg

g
g

eopcfqntlsxbrmwjku
xcybqjknurefsptwl
entfcwuxqbkzljrps
ufkxaincsdjbelrwhtqp
fwsnekcrtxupjlqb

gpwuyvtmefadj
ujaiwdetfyvgmp
mvdajpgwfeuty
fptkgamuveyjdw

pqelcgwyksmhx
wxlpghsqmnykec
hlkcbfyemwqpgdx

hflgy
hgfl
vfhlgp
hlgf

qfecvy
yefcvq
yqvfec

vgioynksz
kgzsivyo
vosigzyk

r
r
t
pz
r

smcejxgypzldar
pfjevtgrowiqmxbnc

wsk
iwks
wks
ksiw
ksuaw

bnxp
penx
jnxqpgl
pxcn

itdaowjkclxvuzgyprb
vbagupycikozjrtdwxl

jtokzdhpiy
pyhzjdikt
ihzmdjyktp
tjdihkzpy
yztkdpjhi

zpamwnubtx
ymznbwtu

zcxrublkn
nlrxubkz

hqtc
vedjnxuosriz
mp
lk

w
w
w
y
w

lsiphdnogwcjvx
ayxwtvqcogldn

rcxas
xcswy

ekxyfmurzcqhsojg
xshfumlkqrcytejo
uosqjyfihcxkrme
imorjfsxqcugekhy
uxrysjmqhkcofe

uhn
hu
uhyd
hun
mhru

rowzbpfcxvtaudlmnsygike
wnqbtsaplrxkyedzvfui
ntrkabpixsuqfvzlhewyd

ixzyehksfb
exifbzyksh
bjyzfieskxh
wxyhikrsnezvfb
hzkbfsexyi

rdtenu
xudh
hud
udx
ud

tqinldjgzhyosm
glnipmzoyqhts
hitsylzgqmon

fgmxvubwisltn
emxtwfnqdbvisl
lsmftnbvxwi
vlnwbstzxrimf

hxopuygnmsjfzketdliwr
lerzsoghdiuwfxpjtbymnk
ysmkdrgwpxujztnohlife

ubwsf
tpzwehnikrgyjl

uongl
nolug
luvnog
glonu
onugl

c
c

qhflxwpb
cfx
fuzxng
tfxah

ctfzbwdmv
mvtaowgk
motwvx
wtimv
wotmv

bkxz
awytslxgcj

ohyx
oxh
xho
xho

wrziyfnpqm
tjysexk

xvqnadomefi
miqovedxnaf
adxvofimqne
doxqnvafmie
xnioaevmfqd

mjleo
aeldc
tihrlk
ml

hxdoicvbzm
omvnxidwzhc
mzkilcfhudtex
qrhcdyxvwmzi

i
i
i

mrspfekayvo
fmrysvpkoa
kdozcmgasfrjypv
kvfmyrspoa
bwpsvfamokyr

vrotxenkg
rokmet
rekto
etykrpo
aetrpmko

ahkbpnglj
nalbqgpjh

ardusw
duwars
rduasw
auwsdr

v
b
d
b
d

alycurnjmw
msjdtwurqkypev
iurcfhmjywx

vkgiz
lnvzcdkj
bmqarwto

sdye
sdye
esyd

vwljec
zydxaenitwj
jerwohg
jregbwh

idzerxjavywb
fxawvzjriebo
lsbwgqaicuepxzrjmvt
jrbzdwivxea

paegsh
oagshetpj
eapghs

nsa
snma
san
nsa
ans

klctpn
kzp
pce
mpgbfqory
ecnp

pjhztrfdnax
zlhstupnbfajxdri
rkztopwdqnmxyaejfc
jxfrtapzdgns
vnjxzratlpdf

jeoqafrcsybmln
fiqjnmasrxky
snvqjryfamt
fanymhjrsq

xfshvyz
nluwirzdfehxpmtqv

yxzl
zpxl

it
eit
si

kotcavg
fgkbot
krojszy
tokewgiv

nz
n
n

xtehngmdwavqfocisl
htgwexliqsafvmnc

krjs
rkjseu
rjkwbgs
srjk

mksdca
whetbmv

bnckvzhdrwi
azbtvlqjymn
bhzcnkv

jgcwltupqdmyiobnkxfeh
digkmftlyxoqjcwhepunb
iyejcnutgbohwdmfkpxql

fnudjpocvl
ylupojvxk

etadjxh
ealvymb
ecmuybva
mlaneqr

iuetgj
egj

ovwaedbjungzi
goczdweuv
edjzsorywu
odfmzteqxuphwk
iuldwevoznj

kuafxo
kfubnx
xkuy

szbrnetfcmygqahop
bhmqfzctorelpagy
afemogythkrszcqpb

oazfxmulgki
lmagfukdzqx
iudmgelxcqkfaz
ujkzgfnarmxsl
lxptkgwmfazuy

ge
ibjufwpt

er
rte
re

lmiugtfa
isqokgfmybja
imvefghaw
mngcaifz

pkdgzocuen
aqyjrongpiszdwk

rhsjtnv
nftzhudvm
clhtvxrn
otchwyvn

obr
tbnha
bek
tbve
bvh

fzy
yvi
ys

linyheauvwqczfgxbm
mfvglhieqwxrubny
xuqemsiyldobgvfnw

wtlp
kyr

sxqecjzagtn
ntvpjxsciqzkga
jltghzxydqsmwca

tayqzsou
mhfbjkpngexvt

tulkjgfcb
bfmgucijtysl
jlocdagt
jlcpenqrhzvtg
cyxfjmgltwu

ifxsclutj
vxscjuidfl
icxfusjl
ijculsfx

nswkzpixhaojlruyq
akxjqrysohpiwl
xarqyepwlsgikthoj
lpqoxmkjaityhrsw
sxhjrwalqiypeko

maisrcxbwdtezfokqyunh
agsqmexkuyrodhb
ehoxduarylskmqb
oesydbkaumhrxql
msyuvhokbexpqard

yxnqvzglspecmathrb
gbnarexvolhmyspq
xblvqgpsfahmner

ewnudklzmvxqcs
xcspjzvmbhrtulk

vfzgpomk
zqgkrfopmhv
evzomkgxslip
vzhkopmyg

djoebyfurmnsczlapwhxtigvq
ahzdbvqljmpfcwskytuiogr

wyubqtslnxrkhjgfvi
ivlsqkfbtrjgyw

zj
u
k
bemnplisa
u

kqr
h
p
czh

nlwyij
njawiy

dmjtlipsqafwoezuxbrhkc
lzbwfusqdcrexaitmjkph
clpawkxbeifzdqmvhjsrut
gtxahqnzkbrpecuyfldswimj
sbzehxlcdtruafwkimpjq

vjlpwzocebkinmdaxtfsh
xtvnfekwdlhoj
jdovxkheunfltw
eylqghtonxjdfwvk

yvflxdbuaswtkj
ubatvydkwjfx
dtfkwvxaybuj
dwbftxakyjvgu

fitncsg
tfgnisc
gnscfti
cfsmtngi
tscfing

pqiynka
xjcuolmgtzwedrs

pjtfwa
v

ftaexgsbwmryph
ubfilnqyxamd
mjfayxlidbcou

phftai
aptighf
taphfi

zhvdutaxgyjcfp
cvzjtygfhpdu
dtzvphgcyjfu

ey
y
y

mhguzvyxtbnorf
bynmexr
bynxmer

teagprlboyfcjw
rptxbeyjfakwlg
yarpftwkljegb
fpkeltybjragw

akmbegwrtiszpqjclvy
hkqbmvnyir
irhvmqyokb
bvqkyimrf
mbkoyxrivqdn

yigkdnrmowxsje
jsigwnorxdmeyk
wjxengdiorskmy

wfqlmzv
tbposdrkhaygx

xdpu
a
cbq
p

kwveirgajyxcb
urkyvzwcibpexq
kwxvbcyeri
ciwxryekblv

cezbkty
bytezckq
iekgzxytbc
ecykztqb

ojpru
apouxrj
ofzrjpu
pjiruxo

lepmrvdqajo
peqnvaousjhmflb

apkzlh
clrp
jpfvyiune

kzonxufgedqjcvp
ljtypdihbrscmxguv

hztgrdkfbuilowmsepvncyj
yjzciltueoshvbkfmdgnwr
jbswehmkiyvgdnzurotlfc
xgqrhwsozelnyvudmftbkacji

i
cyeti
i

gahjt
thbljy
yjht

jvzdynegqkf
onyvlzfse
fvyezncw
nmezwuvyf

dz
zs
z

inrhgtdplvmqbykjfew
niuwhdabevcflpqmt

rndbqw
wnrcdqb

lqugyhvmpsbdicj
hnvqsilpbcgju
pvbscrqalhigjux
spcqlabijhguv
spagvcqbuhilj

drmfvibstegqjku
mveurqfjsdgtik
rmqdifjkvsegtu
ymdifkvtsquejgr

ocknfiw
pqtukinymcaow
owkcnsi

wfydm
mhflywcd

zoxdfl
rjbmwai

orikvxpg
kiubgrmxvpo
vokgcxirp
povkrigx

yjdir
zyudejri
jyrdi
jdyri

iqg
igq
iqg
gqei

gxyapsbkotzmjuwfnrqd
rbjuwaifmgykxdevpq
prdbgwmkhfanjyxqlzuc

cz
zc

xgdrpnmzq
xsqhflioukzevba
gdzycqxmwt

ksthb
hutjfk
htbzkj
ipdghalotk

z
f
f
f

h
ius

y
yjd
y
y

amv
mefva
avm
vma
avm

dsgce
gvcdsweplb
mhdgcfjaury

klg
lgkx
kgl

afxcimest
mfcaxstie
acmseitfxkh
xmifsacet
sxicetafm

hvenw
envhw
bevhn
ndhysev

d
dvj
cf
q

pcymvj
pmvcj
vpctmrja
cvmpj

slywjaeqovbduzg
fvprxbztdnisolcme

njlwgdhtpmqv
hlmcbgpfditvqwyza

drichegunkzsxaob
ashvyqigbzekjoxrmcdu
iabkzdgsrxechoul

gswcar
rwasgc
hcwrsga
srwacg

lmroa
ml
rlna
lbkvxy

cm
cm

iuljnorfsapxceztmbwhd
tyemwsnpjcbolqzifhrxau
ujpsfzamicorxenlbwghdt

aqibdv
qvceadli
qvaid
daviq

weyaps
eswyka

othfcp
qrplshxf
hfp

noegrjpfakyuxlbi
xfunzlrhgykijdpae
npjgilaykufrhex
nqfkxlryaoejgpiu
nspyigjltxwvmcuakerf

pdqk
pkqd
qpdok

onqriyzefvwat
pbgjslwd

ojhuntyxkvisg
touknjhyigrsvx

upbozynctgja
gjouyzenc

dhefoiyrxwbajt
fairhbtjywlxdops
adxfhtiybojw
tbyhixjwanfdo
ibyomdtkwjfhxa

sevowj
safehvyoxw
svoewt
jvsewio
woevs

ibqj
qjfb
bq
cbnwlqx

abhzxvqlrcjkmswgoynifpdet
upqvrzwfglaknioymtsbdhexj
rzeswobatkxqnlmyidjghvfp
rxmglhojqdtzbaeisnvkfpyw
zehtiqfslvpxkodgwarmjynb

ajrfuhtq
nsf
pifoycz
cgvefo

ufpzi
axu
wu
qtdul
gfu

qlfyskwebuzindcxmjohp
ydpznsqokiahbmcfeujwx
bogpjmfnyclizxkwsuhdeq
jezbdocqskpxynwhmuif

bdvrmazgpno
gmbantdurp

vawrthce
xpfcobhrzlatv
avethrc
vhtqrac

lsue
euils
esul
luse

rtcangphwi
hvlacwoftepnx

vkdmr
dlvtfrkmozshg
bmdvrk
uadbmkrjv
dmvexrkjp

jinbek
jknieb
jnkeib
kpiebnqj
jekibn

kfecmdalsjuo
ntjicfxguey

zviloscfjeywmuqgnh
lgizmhjqcounvy
ojhizcmvlnyguq
vchmnoyiuzqjlg

oqrwpzi
oipzuq

vpf
pfvx
paf

wrl
cfmrubxoap

nqufrlhkgzavmjwx
rvhmcpjlatfugwzqkn
umqznjfbglkvwarh

uaqvoxngrhkwpejtczsid
tujpcvwhkdsxzqoinelag

lypwa
wa

eyiukqb
fibueqyko

zxoatgsyfjv
stzgvxyafo
ystzfogvxa
yotxzafvsg
xtygovfsaz

ojz
joz
opqzdcjsyre

x
x
x
x
x

rc
fcr

i
i
ronsi
i
i

e
g
dqzls
rm

fxkvlgbtmnryusaidheo
nrylbusaoivfkxdmehgt
advjqoynebcirkwtmhlxzufg

zdqlbwhaio
dclkpzihborwxqa
adowihbzlq

fzgmpsnjvqudy
pvsyznmfdjqugw
amfsjduvygnqpz
ympsvndqzgjuwf
qfmxvspzdjgcyoun

akjpwio
hcbm

zrcxphil
cihbsgxlzypa
txlhsumizc
qikzldwxvhcnf

otnqmblawiuyzpekch
ztceiqnakymuwblpho
biaehczpwoklumxynqt
tekznibhmcqypluaow
zlmteknopqwcuibyah

lbmdvpyquzehwo
yjrhivaxkopsbzgft

ijbqampfcnyhluxg
cbqdijhumyxpagnfl
gfncxwjulpqmyba

vqfjaklcpsxn
sknqbcepz

dvejbmfk
pkmfjevb
jmfbkves
emkbfjv
ejvmbsfk

q
j
p
j

fzahk
khfa
fhak
hafk
ahkf

mrtvwxd
vrxpw

sz
zb
z
z
zd

umynwrjvdbxfgtoiazhskec
azocfmxwbsiyutnhkdvergj
bimekgvzhafnutodyrxscjw
rzscbaxwdvteoniumykfgjh

wixlhoqnkfecr
ntlyfkrwgziceh
isfluhxknrcbew

egnrfpwuvcys
vruygnfkeosw
yuqsfmkgnepvr
zdvutrsljxeygnf
gqfpiersynuv

rpenvsx
rvyepxsn
nxpersv
srpvxne
spezcjxrkdnv

kyjgzoub
ygzkiusoba
ybzjougk

yenijuv
nehjoyiuv

cx
ctx
xc
xc
fxkyc

yuf
yetf
yf

lcerywpto
uryte
eytr
veytr
rtye

skrfb
rmscwgk
fkrnjs
krvs
fsrken

lnapgo
nop
opn

cmwslaozbxtidn
xctbiadnmozlws
zdilnxobsactmwq
bwxcnszldiotam
zspaxcrityodmlbnw

qknijt
jipqknt
njtqkir
ktnjiq
iknqjt

awekvcdlzxufpbt
ucvjprwldkzbafxme
lmkxwefudvpjarbz
axsfpnbwkvlzyoegud

vpykichglsernwudt
cvtkuypidlwhersgn

qowbdgthv
hwdtgovbrq
hdbqtwokczv

vgmnarhkiqxybpj
abgjkqmrxypnvih
rhpaqvjxidtkmbngy
xpybkgqijrnhamv

u
u
u
u
u

bczhrlgvy
bxdswtfzmka
ozbge

wy
xte
bunkexi
magp

wchuym
youcw
cuyto
cuywqro
xnygieuc

htlxjfmbi
mtxiqjfhbyl

chsuf
d
vymtlxr
xto
kvm

iegprozq
zoqpegir
gzepiroq

pqjbvedxiscft
cztpxsfkjv
jtpzxfyacnsv
fkhtulcpxsvj
nxypcvtflsj

mbaeyinswvcjdqpflro
wyfivehtpalrjqdbmusnco
fdoipmenabsyqjrcwvl

sxumcri
xeupbrfimg

rvytkuzxhwj
kywbxrzjuvth
jkryxuvnwzht
ktjnrhpuvxwzy

pfuozncwalsv
iloasnzmuc

eamjzlcgrpytkwvdf
mgyrezadjpkwfltcvn
djplwrmyzgetfacvnk
ryzfmpagjwcltedvk
kezfgywvmltjarcpbd

unwsrlpbfqgikjx
kuewiqrfsgvbnjxpl
smgnakxrfjpliwuqb

rpjdloambtxiueskf
ultjriaoxbdgwspkm
amtlkpsjuibdrox
bjcikursxmaolepdt

dcrhitjplqmbsz
vjwrdktpclszhb

aknpdwxzyob
cbmepxzanwghlod
dftnzywxvobap
tpzaxwondb

skvfhqjwc
jvhfkwacq

rxhlqpsv
uoksgfhqmxwpct
qhvjpibsdnzxl
qxypisahb

ucxhazo
hoazcux
xhczoau
azuoxch
ucohzax

jroudctikylaz
uikajctloyrzdh
ztudariclkojy
yuakrlocjdzti

ibjgyheqtsfaokl
jnkxcrpfdwuvg

bgdcwmliqapr
zmnjtrfciskue

wrftzpxjbedniahscvguy
ztcvwbdiphryfsajegxnu
wjtnafcrsvyzpgdxubqhie
fjxazirvdgynetwhbcusp
rpwhyadfvecsxgijnlutzb

ixsafmqz
gckxfzuq
hbqxfz

btrkgnadzs
qdkwgstpfzv
hdieoxugzsj

gf
fg
fg
gfe

ieqgstfyzmvc
sbfvgjt
atsgvf
gfsvt

unktjiwsgfxvqh
wvbsikqmxjhtufng
iqhvkwxslutjfneg
ivqcujwngkxhfst
fixvhqtkusjnwg

jyeizdhnr
lfzdwes

sfnwxrhomibjk
jknewldztvcrsfmohi

bsnkyeljzihrvoq
jslzbqowfvekym

nhysveaf
mpfcoa
foam

adcj
jyc
jvad
mkj

ynoflmsi
mlzrfspi

djmqatpxs
stdmjxqa

jwdx
myplugwjs
hwjbd
wajxb

zpstmcdyijohqwexl
wqxoecpdihmszyjlt
eqxmpywisjchztodl

wcntrjpyubmdoeazh
cepthmbdzoynajrws
dnorwhbpqycetmjza
zncmybxroipjatweh

teobkvdywzmrq
yedjkgrofnvwtxb
oyewkrxftbdv

gdxqht
thd
thd

ornwqcgvfm
rgnvwqofmc

lgmkvjudyiobrfcehazs
idgzlokpbfhaujrymcsve
vhikocutjbsedrlamgyz

upafbl
bfaukpl

jzytn
nft
mnftz
qetna
hlcwpxigotd

ugiyjvlpeasw
qznlpu
umctqnplrd
fxkqphblu

urjsc
ecjurxsi
rcsljeu
jsurc
nsvzbcjur

shgtowmxzue
voedwskmhuajq
sompeirfyc

lofiwgavbxpdmrj
gjxbowprfaldmvi
rlwiafvjxdgompb
xvprgwoafmjdlbi
moildgafjrwvxpb

orqmykigx
gximohqyr
mqygxori
qymriogx

bw
wutak
oxsdf
rupqm
ehm

zvjibpa
ptgyzvild
itpzvxwnh
rkuiosqcpfze

viq
tviq
qiv
viq
qvi

dxpvnchftlqiokejyb
njayvfqcipxltdhbk
cdntplibhyvjqkfx

e
em
e
yve

pbkhjxsqwryfgiecavodunmzt
qxcnposglmrjbvyuzwedftik

yvwtescpiqmbxzkr
pmcbvytqkzwixes
wciktumeqzyxbvsp
wvfpkzysitbcxqem

ctxjqfkyehlpdnimaru
umayxlticfrnhzweqdj

zandguibwkxcmthy
vytkfexwczbnumagi

omfjbgiew
xjufhnoglwicp
jivdgwokf

uhiforcjt
tfrsehcbzou
crfogtuh
rtguhocf
ctioufryh

omgzpckleuwhvdixqns
dkhpognscemaivjwtzlbxu
mdivfpeczsnguolwxkh
zfvdhimgplseunwkoxcq
lmnpkvszheiwodcgqux

zyqmgvetxihro
odbkpwzxclnsu

vlbcuafq
ublqzv

bmfvqrhn
qbhjfnrvm
hjqbnvmfr
qmvhnrbtf
mrqnfvhb

amrvbuxwq
qxv
tszixqcfj
ryxaq

pbaoqmuhtzlnjfvki
poyaqztfbclkhus

osrkdltnbpcwe
jfypxqrkdvtoc

iwcng
hknmzjeribx
icndgo
cnid
gin

qdcglm
qgdmcl
cdmlqfg
qmgcdl
qdgwlmc

wmksilftz
ltsmkzfiewq
slmfwktiz
wfmzsiklnbt
itkmsewzlf

lqfeanvdbmxurghpjkz
bxiqwspehgckamdnyfl
bnmetlfxhgqdakp
jqzonfralpxbgedtkhm

ohjlba
njvolrh
nhloj
njlohzg
qfcyjholk

idntcbergvzw
benuwdqkvisrgz
bywroevdgzni

bsmypejhaqwtoc
bqraoipmnxsyvwhc
gsmohzqplfiwabyuc
crpqxsbzdhyamwo

hjiwcpsaem
acsjihpewm
pjchaewsim
mepjcshaiw

phxymeqsgd
emdgujsoqx

ahjw
lakw
wah
awh
wam

uqnem
unqem
uqmen
qeunm

mvixeokutywnspjd
pvondstjybxkuewmf
mxpevuokjgytnwsd

ljfqzmdtnubo
edmjungbzfqop
bmwndujzyqfo

ezpmodywqxgbakl
txljuwgbedqmzaoknpy
mwkzxgloyqpedab

jdanqfmbxtzgcireh
nhfqzrjicdmxabgte
izeafnmxqtjcrgdhb
xqtfadmbnzirjhcge
nmcfeihjxdalbgrqtz

tkcpyamfnqx
ckhmwnfprqsybt

yzjhtglxoimsnrapevfbwkdcqu
kjbtvgzlhrmdcsyfeiauoqwpxn

aoinshmy
fh
hf

bd
bk
b
b
bd

zbhvoa
revhzgbsof
qzcbvo

k
c

gsxmitkp
rqsxkp
skxp
skpx

tyfujzvsowxhqblapnk
atvoflqbpxkhnzsjwuy
hjasyxbztufwnpqkvlo

rphmgva
gmjp
bqnwofsdtzckeiluyx

wikmayl
hixnymja
anyim
ymrntaixu
ivmogaqybep

cafwzdvb
bnvmezfjpuqostyr
lavfcwbgzik

vuekszlxbnoid
codnzveliyxuk

mesvilyqtkrp
tiqjyvepsukl

ruicvofq
uvcfhoqr
frocuavq
forvcqui

q
q
q
wq

njbcfkdwsx
cbyfskwge
bdowxcsefk
wprzkiuvmlabfcs

qzbxragvojiysmc
xfhelp

nemwakchpqvbgzro
zqvbwrkhcmagoenp
nchqbaeozrgmvkpw
eqmbovwcakngzhpr
rhwzokanpvqbegmc

w
i
kuen
vp
p

rxjvfqgtam
xvfasqrdtng
atbfvqgcrx

egrj
ergnd
mvqxrpatke
hre

o
r
ej

eqotfizr
fioezr
eznorfmi

einyftdglp
tlegyfnbip

vnaftgzqyxldpkuhcjm
jhycgqwxvuznfdpbmlkaet
pgvkarltjnmzxchfuydq
hxzsqaltnyfcjmgvkpdu
zpnhuxagcjdqtfmvlky

juvirnzwohl
ecps
bckqpdy

jbgztcyhvidkpmrnfuawe
jhntweaufcpmizrydbkgv
dpievumwzfbcarngkjthy
vrkuhgtwpimncoafdzyjbe

dsqgnwtyf
fjdvstgwq
tdgnvwsfq
gqshfwdt
qtfolgdrsw

sa
as
as
as
soa

iyhbzw
bjwizhy
qywzbtinh
izyhcjbwd

kujogydsxtraliqmezbhwf
ydgrlabhfqizswoxktjme
fyjorqamgixhkbdlszetw
hroibgxfmjkweztqaysld
qrebaikxwzlfjogtdyhsm

zefvicmnptwjsrdaoguk
xjnrwosmvcbyeklfptzaui
wsmuajtnrkheopizcvf

tphinkmgfqlwxrdyevcbuzaso
qelonzuybdxvshtcfpkiagwrm

wjniasqzmecyupvo
qjewvapfmcxnlyuitzo
dvzqjruhkyeginmwpaoc
wozympvnijceqaubx
lpzwiumecayovjqn

yh
xc
xzl
g
qz

j
jg
jn

gtnerjuha
hagjvertnu
rgeahjutn
jngtherau

pzmvogy
tdjnxmc
bsruhakifwelq

qyswkhevrjxplmza
fkdequwnioby

avgqyxszctedpifhnbowjm
wotmkxnzavqpicbyjfh
rlybfxonczvhqmiptwaj

prs
sp
csp
ps

rq
naowd

zpmfkyuqo
uzqpymko
kmqznopuy

ozgdkubisx
zfbaidhwkgxstycq
dbmgxnipszk
gbvxznilsjdk

ow
o
o
qo

wqj
wtlqxj
wqjtf
qjucowa
qdjletw

ysaglonmkduqerzvixb
amribxuvnkyodslqgze

vx
a
x
x

cq
qc
cqj
qc

gmkto
hjiavenz
mo
fp
rkcduty

gprmentzywxdlbqsuj
yunepgtrqsjlwzmxbd
ujylsbqgvxnmpdtwzer
ntmpqedrgysjbuzlxw
crdujwtymosxgnpzqelb

rzd
o
ow
o
w

cnbsiowkrlpez
sjnlbwckprei

ibm
mbi
ziu

qiameynpoj
bijsyczhodtapelqf
opejqriyan
oaqygiejwp
onapeqjiy

lqjhiuyob
ybhuftil

u
j
u
u
u

cxhtlekagrpsz
aoyrtgqepm
jefwtirguaphd
puivrgacebnjt

iezamrsjwtgcdh
ymolpqdzscegtijanwxv
cmdgijsawetz
tbdcjiaszuegwm
agdmwkecijzfts

qbrhj
vrej
rjhpa
jpr
mylfzudkrtjw

qlxhycegwtadvfjumrnk
mlscrjtvhufkxdyegawqn

mxuiehsocznyvtd
nsoevihduzcmxty
sntheuocxzvydmi
zcnuxhmoivdetys
vdhzcslyminexout

nltphyz
tzyhnlp

chboyxelwdm
jafztipqr
kv
taj
nspuq

yaog
jvy
jkye

ofwcpsnbzejgu
srboczftpuewnkg
bgunhokierzpxsfcw
edwzsihpuxgnobfc
szxmuyabofvdecnpgw

gtpus
sptu
tuvsndqp

ti
it

jdlnmscgpaebruqh
pmglrnhcqebajdus
jbecumrqshlagdpn
qgpceanuhdlsojmbr
plcmsbhujrgedqan

uaekpzbgn
knvxhefcimy

ltvho
thlvo
tvohl

egaicytnwvkrsohljxbu
rvwbxjyasehnickgltuoz

nysofuzrbhcetakmdgp
trnvygcxzmsubaekd

dhva
shdav
vadh
avdh

piftmjyvorhdk
zovxaghiuq
ozvlibhugqew
cwhlivxo
iqhgosbv

icaxyjb
rklpxgq
tzrmx
xfmvn
zvexd

uezd
dfbze
yedzv
deyzf
szajqxpdk

jpetks
jpktie
xykjdcebzgtoh
nlkjaeit
ektjqfnl

itsgqnl
endictjfgoslu
ishtlpgxrn
stlngvi
twqslnrgi

agodjfkmblxvi
fixgmajlvokb
joafvxgkimlb

gfpqsxctouhrkaijzbmevw
gmfoikabwhzpsuqynetvlrxj
suejaigxtpodrmfzqhvkwb

pnvtgafmj
tnapfvjmg
njatvgpmf

lft
ltf
lsgyvmbfct
jdflt
tfdl

ihlxnvsktqyjgrpuow
whokcilnutvsxgy
lukshywxgntovi
vhtgyxwuknsloi
hxwgiukyotlvzsn

gtlhswu
ksutghwli
ltgushwp
ltjauwvecsxqhg

it
it
ti
it

n
o
j
stym

t
t
kt
t
tu

rnkmbuljxf
mabjnkychf
ktqbnmoflej
fknzmbrje

zsfewbyvxta
fywztbsa
tbsynqwzaof
toawfzbys

a
y
c

hl
hl
hl
lh

vqipoaygbnesrwhdm
dhrcapsuexbwioytnqgmk
gypzoneqdvfmbsrahiw

kypcwmun
emcnukhgw
ucgwmkn

doejsplwvmybiq
lbcjhmwsoqtdpgy

mylqbcezj
elmryzsq
ymqbdzeln

j
j
jt
j
j

nr
dn

oqzlbvtpgca
bqoeg
qugbreo

i
fd
mxy
ebgy

bktxgjlfnc
knfjtgxlcb
fbnltjgxmkc
xtnbjlfkcyg

rthfbiajsy
txsoayjh

xfjykonhtzwbric
wsvmtlgepc

iavozrmcxwf
jbpguq

qagdznlfwtpscre
fepczhiasgwdqlntr
fnwplacgutzeqsdr
acdqeplwgnsfztr

stxqayumzelihb
oumqlxbsatiyhze
bqsxemzyhtuila

g
sft
b
g

aozwhycb
azwy

f
kif

t
s
s
s
s

godyxji
igydjob
yjodig
yjdiog
ozjcdgyi

e
o
o
d

fqzpyghcv
cqvyhzfpg
chfqpzyvg

afvxbzskqu
puavxhzks

jtbg
gj
ijg
gij

k
vbcn
k
t

tzbkywxemd
tbkzxwmde
dbmekxwzt
tbzmkwedx

hagcokltv
lvgocykat
hyvipgcltako
amecltgnxvfjqdzkb

adgbvno
n

hgzkdpnimvaqtroycwf
yfjvrohmkapcwezdntsig
rkhnwzivptyomacfdgb

yoqdxf
uorhyx
cevlywoxzp
ogrumyxd

opmbnzxk
znobkmpx

pirlwzuqa
plunfoarqivz
rlqagzusip

r
q
j
r
c

qpokva
ikvaoq

bl
nxqv
sqb
rtikywjpdh
oaqg

zjoksy
zyosjk

otsuclvnbi
rusfwedazpjkygqm

qfdsrzk
suwrkqdh
eaisxcjdm

cdlnwvkoeizhmujfgtspxybrq
rdykiuwbhtzxmvcspnfeojqg

v
v
hv
' day06B) equals: 3229.
]

{ #category : #tests }
AoC2020Tests >> testDay07A [
	self assert: ('light red bags contain 1 bright white bag, 2 muted yellow bags.
dark orange bags contain 3 bright white bags, 4 muted yellow bags.
bright white bags contain 1 shiny gold bag.
muted yellow bags contain 2 shiny gold bags, 9 faded blue bags.
shiny gold bags contain 1 dark olive bag, 2 vibrant plum bags.
dark olive bags contain 3 faded blue bags, 4 dotted black bags.
vibrant plum bags contain 5 faded blue bags, 6 dotted black bags.
faded blue bags contain no other bags.
dotted black bags contain no other bags.' day07a) equals: 4.
]
