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
   "Learned OrderedCollection/add is what you want for vector/push_back equivalent"
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

{ #category : #tests }
AoC2020Tests >> testDay08A [
	self assert: ('nop +0
acc +1
jmp +4
acc +3
jmp -3
acc -99
acc +1
jmp -4
acc +6' day08a) equals: 5.

   self assert: ('jmp +583
acc +9
jmp +525
jmp +302
jmp +287
jmp +412
acc -16
acc -19
acc -19
jmp +423
acc -4
nop +13
acc -8
jmp +37
acc +0
acc -5
acc +48
acc +0
jmp +232
acc +39
acc +5
jmp +69
acc +31
jmp +425
acc +31
jmp +93
nop +166
acc -7
jmp +192
acc +1
jmp +391
acc +11
acc +20
jmp +1
acc +24
acc +7
acc +27
jmp +162
jmp +580
acc +9
acc +39
acc -18
jmp +283
acc +28
acc -14
nop +464
acc -12
jmp +358
jmp +523
jmp +212
acc +16
acc -13
acc +10
acc +46
jmp +207
jmp +266
jmp +1
acc +36
jmp -19
jmp -3
acc -16
acc +3
jmp +229
acc +44
acc +0
acc -17
acc -14
jmp +132
acc +38
nop -30
acc -12
jmp +506
jmp +511
acc -15
acc +4
acc +29
jmp +129
jmp +419
jmp +1
jmp +45
acc +14
acc +20
acc +11
jmp +153
jmp +78
acc +32
nop +212
acc -7
acc +42
jmp -65
acc -17
jmp +458
acc +10
acc +18
acc -11
acc +8
jmp +215
acc +33
acc +25
jmp -21
nop +92
acc +0
nop +353
jmp +188
acc +43
jmp +82
jmp +399
acc +33
acc +16
acc -3
jmp +174
acc -12
acc -3
nop +171
jmp +73
nop +362
jmp -48
jmp +218
acc +5
jmp +486
acc +43
acc -1
acc +0
jmp +476
acc +21
jmp +44
acc +7
acc -6
jmp +1
acc +3
jmp +95
acc +12
acc +38
jmp +202
acc +17
acc -12
jmp +114
jmp -33
jmp +367
acc +45
acc +40
jmp -81
acc -5
acc +27
acc +6
jmp +374
acc -6
acc +10
acc +19
jmp +1
jmp +171
acc +8
acc +46
acc +12
jmp +234
acc +45
acc +28
jmp +337
acc +8
nop +10
acc +17
jmp +368
acc +2
acc -3
acc +29
jmp -160
acc -7
acc +11
jmp +174
acc +48
acc -3
acc +33
jmp +6
acc +3
acc -10
acc +9
acc -13
jmp +428
acc -13
acc +35
nop -112
jmp -147
acc +13
acc -4
acc +50
acc +46
jmp -118
acc +38
acc +36
jmp +375
nop -3
jmp +93
acc +10
acc -1
jmp +211
acc +6
acc +38
acc -12
jmp -6
jmp +1
acc +41
jmp -117
acc -17
acc -15
jmp -120
acc +17
acc +48
acc +37
acc +0
jmp +139
acc +7
acc -12
acc +0
jmp +98
acc +47
acc +3
acc -18
acc +26
jmp +141
jmp +236
acc +18
jmp +275
acc -10
acc -11
jmp +12
acc -19
acc +17
jmp +300
acc +32
nop +145
jmp +84
jmp +34
acc -17
acc +12
acc +37
jmp +182
acc -7
jmp +154
nop +375
acc -1
jmp +108
jmp +1
acc +16
acc +49
jmp +355
acc -16
acc -19
acc +47
acc +26
jmp -171
jmp +285
jmp +84
acc +28
acc -11
acc +6
jmp -252
nop +228
acc +10
acc -17
acc +42
jmp -221
acc +34
acc +8
jmp +201
jmp -225
acc +45
nop +125
acc +25
acc -7
jmp +318
nop +348
nop +40
acc +42
jmp +284
acc -1
acc +46
jmp +1
acc +41
jmp +231
acc +30
acc +45
acc +10
acc +45
jmp -227
acc +25
acc +13
jmp +219
acc -10
acc +27
acc +45
jmp -186
acc -18
acc +50
acc +31
acc +19
jmp +89
nop -240
jmp +173
nop +65
acc -8
jmp +1
nop -146
jmp -156
acc +27
jmp +106
acc +4
acc +45
jmp +35
acc +44
acc +47
jmp -254
jmp +57
acc +1
jmp -274
acc +32
acc +6
acc +1
nop +179
jmp +122
jmp +1
jmp -310
jmp -273
acc +46
acc +9
jmp -187
acc +36
acc +0
nop +47
acc +17
jmp -137
nop -116
acc -17
acc -6
acc -8
jmp +106
acc +36
acc +50
acc +3
acc +22
jmp +190
acc +48
jmp -336
jmp -164
jmp -32
acc +44
nop +242
jmp -215
jmp +7
acc +36
acc +3
acc +27
acc +24
jmp -8
jmp +156
acc -5
acc +42
nop +37
jmp +107
jmp +247
acc +12
acc +30
jmp +44
jmp -306
acc +36
jmp -354
nop +192
nop +153
jmp -106
jmp -284
jmp +1
acc +33
acc +18
acc +13
jmp +232
acc -4
nop -64
acc +38
acc +29
jmp -349
acc -7
acc +44
acc +4
acc +48
jmp -35
acc +13
jmp -144
acc -7
jmp +196
acc -8
jmp -316
jmp -138
jmp -381
jmp -156
acc +21
jmp +189
acc +30
nop -85
acc +34
acc -13
jmp -326
jmp -7
jmp +1
acc +2
acc +24
jmp -56
jmp +152
acc +42
acc +25
acc -6
jmp +174
jmp -96
jmp -86
jmp +20
acc +23
nop -93
acc +3
jmp -42
acc +0
acc +6
jmp +100
jmp +20
jmp -147
acc +19
nop -367
jmp -80
nop -318
nop -289
acc +45
jmp -321
nop -4
acc +13
jmp +74
acc +0
acc +15
jmp +153
acc -5
acc +24
acc +21
jmp +1
jmp -48
jmp -262
nop -317
jmp +93
acc +20
jmp -32
acc +44
acc +50
jmp -350
acc -19
acc +46
jmp -431
acc -11
nop -227
acc +48
jmp +103
acc +44
acc +31
acc -15
jmp -15
acc +0
acc +34
acc -3
acc +38
jmp +108
acc +28
nop -60
acc +28
acc +26
jmp -20
jmp -440
acc +48
jmp -257
acc +11
acc +8
acc +14
acc +30
jmp +8
acc +47
jmp -323
acc +15
acc +10
acc -15
acc +13
jmp -169
acc -11
acc -12
acc +24
acc +5
jmp +125
acc +34
acc -17
acc +2
acc +32
jmp -83
jmp -120
jmp -11
acc +25
nop -54
jmp +1
jmp -29
acc +13
acc +17
acc +6
acc +31
jmp -420
acc +25
acc +13
jmp +117
jmp -3
nop +68
acc +32
acc -11
acc +31
jmp -374
acc -4
acc +34
acc +38
acc +23
jmp -113
acc -19
acc +50
nop -216
jmp -134
nop -331
acc -7
acc +28
jmp -357
jmp -216
jmp -128
acc +34
acc +16
jmp -54
acc -16
acc +0
jmp -64
acc +7
nop -322
jmp -306
nop -414
acc +38
acc +15
jmp +77
acc +18
jmp +1
acc +0
acc -8
jmp -248
acc +26
jmp -6
acc +17
acc +21
acc +30
jmp -142
acc -13
acc -18
nop -330
jmp +27
acc -14
jmp +60
acc +31
acc -6
acc +49
acc +16
jmp -289
acc +11
acc +0
nop -141
acc +19
jmp -143
acc +44
jmp -286
acc +42
jmp -209
acc +34
acc +10
acc +3
jmp -461
acc +2
jmp -358
acc +42
acc +0
acc +26
jmp -191
acc +16
jmp -230
acc +31
jmp -244
nop -456
acc +16
nop -196
jmp -475
acc +24
jmp -553
acc +42
acc +24
acc +3
jmp -572
acc +31
jmp +7
jmp -144
acc +20
acc +23
acc -14
nop -506
jmp -17
acc +19
nop -428
jmp -286
acc +2
acc +6
acc +28
acc -13
jmp -291
jmp -377
acc -3
acc +32
jmp +1
jmp -205
acc +18
acc +32
nop -523
jmp -79
acc +32
jmp -30
acc +40
acc -17
jmp +1
acc +28
jmp +1
' day08a) equals: 2051.



]

{ #category : #tests }
AoC2020Tests >> testDay08B [
	self assert: ('nop +0
acc +1
jmp +4
acc +3
jmp -3
acc -99
acc +1
jmp -4
acc +6' day08b) equals: 8.

   self assert: ('jmp +583
acc +9
jmp +525
jmp +302
jmp +287
jmp +412
acc -16
acc -19
acc -19
jmp +423
acc -4
nop +13
acc -8
jmp +37
acc +0
acc -5
acc +48
acc +0
jmp +232
acc +39
acc +5
jmp +69
acc +31
jmp +425
acc +31
jmp +93
nop +166
acc -7
jmp +192
acc +1
jmp +391
acc +11
acc +20
jmp +1
acc +24
acc +7
acc +27
jmp +162
jmp +580
acc +9
acc +39
acc -18
jmp +283
acc +28
acc -14
nop +464
acc -12
jmp +358
jmp +523
jmp +212
acc +16
acc -13
acc +10
acc +46
jmp +207
jmp +266
jmp +1
acc +36
jmp -19
jmp -3
acc -16
acc +3
jmp +229
acc +44
acc +0
acc -17
acc -14
jmp +132
acc +38
nop -30
acc -12
jmp +506
jmp +511
acc -15
acc +4
acc +29
jmp +129
jmp +419
jmp +1
jmp +45
acc +14
acc +20
acc +11
jmp +153
jmp +78
acc +32
nop +212
acc -7
acc +42
jmp -65
acc -17
jmp +458
acc +10
acc +18
acc -11
acc +8
jmp +215
acc +33
acc +25
jmp -21
nop +92
acc +0
nop +353
jmp +188
acc +43
jmp +82
jmp +399
acc +33
acc +16
acc -3
jmp +174
acc -12
acc -3
nop +171
jmp +73
nop +362
jmp -48
jmp +218
acc +5
jmp +486
acc +43
acc -1
acc +0
jmp +476
acc +21
jmp +44
acc +7
acc -6
jmp +1
acc +3
jmp +95
acc +12
acc +38
jmp +202
acc +17
acc -12
jmp +114
jmp -33
jmp +367
acc +45
acc +40
jmp -81
acc -5
acc +27
acc +6
jmp +374
acc -6
acc +10
acc +19
jmp +1
jmp +171
acc +8
acc +46
acc +12
jmp +234
acc +45
acc +28
jmp +337
acc +8
nop +10
acc +17
jmp +368
acc +2
acc -3
acc +29
jmp -160
acc -7
acc +11
jmp +174
acc +48
acc -3
acc +33
jmp +6
acc +3
acc -10
acc +9
acc -13
jmp +428
acc -13
acc +35
nop -112
jmp -147
acc +13
acc -4
acc +50
acc +46
jmp -118
acc +38
acc +36
jmp +375
nop -3
jmp +93
acc +10
acc -1
jmp +211
acc +6
acc +38
acc -12
jmp -6
jmp +1
acc +41
jmp -117
acc -17
acc -15
jmp -120
acc +17
acc +48
acc +37
acc +0
jmp +139
acc +7
acc -12
acc +0
jmp +98
acc +47
acc +3
acc -18
acc +26
jmp +141
jmp +236
acc +18
jmp +275
acc -10
acc -11
jmp +12
acc -19
acc +17
jmp +300
acc +32
nop +145
jmp +84
jmp +34
acc -17
acc +12
acc +37
jmp +182
acc -7
jmp +154
nop +375
acc -1
jmp +108
jmp +1
acc +16
acc +49
jmp +355
acc -16
acc -19
acc +47
acc +26
jmp -171
jmp +285
jmp +84
acc +28
acc -11
acc +6
jmp -252
nop +228
acc +10
acc -17
acc +42
jmp -221
acc +34
acc +8
jmp +201
jmp -225
acc +45
nop +125
acc +25
acc -7
jmp +318
nop +348
nop +40
acc +42
jmp +284
acc -1
acc +46
jmp +1
acc +41
jmp +231
acc +30
acc +45
acc +10
acc +45
jmp -227
acc +25
acc +13
jmp +219
acc -10
acc +27
acc +45
jmp -186
acc -18
acc +50
acc +31
acc +19
jmp +89
nop -240
jmp +173
nop +65
acc -8
jmp +1
nop -146
jmp -156
acc +27
jmp +106
acc +4
acc +45
jmp +35
acc +44
acc +47
jmp -254
jmp +57
acc +1
jmp -274
acc +32
acc +6
acc +1
nop +179
jmp +122
jmp +1
jmp -310
jmp -273
acc +46
acc +9
jmp -187
acc +36
acc +0
nop +47
acc +17
jmp -137
nop -116
acc -17
acc -6
acc -8
jmp +106
acc +36
acc +50
acc +3
acc +22
jmp +190
acc +48
jmp -336
jmp -164
jmp -32
acc +44
nop +242
jmp -215
jmp +7
acc +36
acc +3
acc +27
acc +24
jmp -8
jmp +156
acc -5
acc +42
nop +37
jmp +107
jmp +247
acc +12
acc +30
jmp +44
jmp -306
acc +36
jmp -354
nop +192
nop +153
jmp -106
jmp -284
jmp +1
acc +33
acc +18
acc +13
jmp +232
acc -4
nop -64
acc +38
acc +29
jmp -349
acc -7
acc +44
acc +4
acc +48
jmp -35
acc +13
jmp -144
acc -7
jmp +196
acc -8
jmp -316
jmp -138
jmp -381
jmp -156
acc +21
jmp +189
acc +30
nop -85
acc +34
acc -13
jmp -326
jmp -7
jmp +1
acc +2
acc +24
jmp -56
jmp +152
acc +42
acc +25
acc -6
jmp +174
jmp -96
jmp -86
jmp +20
acc +23
nop -93
acc +3
jmp -42
acc +0
acc +6
jmp +100
jmp +20
jmp -147
acc +19
nop -367
jmp -80
nop -318
nop -289
acc +45
jmp -321
nop -4
acc +13
jmp +74
acc +0
acc +15
jmp +153
acc -5
acc +24
acc +21
jmp +1
jmp -48
jmp -262
nop -317
jmp +93
acc +20
jmp -32
acc +44
acc +50
jmp -350
acc -19
acc +46
jmp -431
acc -11
nop -227
acc +48
jmp +103
acc +44
acc +31
acc -15
jmp -15
acc +0
acc +34
acc -3
acc +38
jmp +108
acc +28
nop -60
acc +28
acc +26
jmp -20
jmp -440
acc +48
jmp -257
acc +11
acc +8
acc +14
acc +30
jmp +8
acc +47
jmp -323
acc +15
acc +10
acc -15
acc +13
jmp -169
acc -11
acc -12
acc +24
acc +5
jmp +125
acc +34
acc -17
acc +2
acc +32
jmp -83
jmp -120
jmp -11
acc +25
nop -54
jmp +1
jmp -29
acc +13
acc +17
acc +6
acc +31
jmp -420
acc +25
acc +13
jmp +117
jmp -3
nop +68
acc +32
acc -11
acc +31
jmp -374
acc -4
acc +34
acc +38
acc +23
jmp -113
acc -19
acc +50
nop -216
jmp -134
nop -331
acc -7
acc +28
jmp -357
jmp -216
jmp -128
acc +34
acc +16
jmp -54
acc -16
acc +0
jmp -64
acc +7
nop -322
jmp -306
nop -414
acc +38
acc +15
jmp +77
acc +18
jmp +1
acc +0
acc -8
jmp -248
acc +26
jmp -6
acc +17
acc +21
acc +30
jmp -142
acc -13
acc -18
nop -330
jmp +27
acc -14
jmp +60
acc +31
acc -6
acc +49
acc +16
jmp -289
acc +11
acc +0
nop -141
acc +19
jmp -143
acc +44
jmp -286
acc +42
jmp -209
acc +34
acc +10
acc +3
jmp -461
acc +2
jmp -358
acc +42
acc +0
acc +26
jmp -191
acc +16
jmp -230
acc +31
jmp -244
nop -456
acc +16
nop -196
jmp -475
acc +24
jmp -553
acc +42
acc +24
acc +3
jmp -572
acc +31
jmp +7
jmp -144
acc +20
acc +23
acc -14
nop -506
jmp -17
acc +19
nop -428
jmp -286
acc +2
acc +6
acc +28
acc -13
jmp -291
jmp -377
acc -3
acc +32
jmp +1
jmp -205
acc +18
acc +32
nop -523
jmp -79
acc +32
jmp -30
acc +40
acc -17
jmp +1
acc +28
jmp +1
' day08b) equals: 2304.



]

{ #category : #tests }
AoC2020Tests >> testDay09A [
	self assert: (#(35
20
15
25
47
40
62
55
65
95
102
117
150
182
127
219
299
277
309
576) day09a: 5) equals: 127.
	"self assert: (#(13
41
12
29
40
27
22
38
4
8
33
39
16
45
47
23
37
31
1
10
24
20
9
32
46
5
11
17
6
21
7
18
22
40
44
8
15
12
25
64
13
16
14
19
29
28
26
20
23
38
24
30
27
35
31
21
32
34
39
61
22
33
36
37
40
41
42
63
55
43
44
45
50
51
53
66
78
73
52
54
56
96
58
59
65
62
75
95
80
81
83
85
101
102
87
89
97
105
103
106
108
111
170
110
193
141
117
120
121
140
294
155
197
198
186
182
172
176
184
391
211
200
218
275
214
290
221
231
227
237
238
403
241
569
398
360
407
348
383
356
801
372
376
402
411
682
414
439
435
441
452
759
597
464
817
794
589
724
736
704
720
728
731
1134
732
748
787
778
841
1139
849
853
1293
887
1200
916
1305
1053
1460
1309
1367
1455
1467
2029
2087
1448
1459
1463
2427
1480
1601
1565
1619
1690
2316
1702
3003
2335
2362
3484
2764
2513
2420
4693
3170
3886
4629
2907
2911
2922
4203
2939
5588
3045
5683
3220
7393
3309
3392
5273
4037
4697
4848
8089
4933
5184
5327
5331
6142
5818
6612
5829
5861
5833
5967
5984
10815
6265
6354
6529
6701
11974
7346
11813
10558
8734
10664
10117
10260
12094
10511
10658
11192
12445
11647
23460
11662
11800
12098
16080
12249
17457
12619
12883
13230
14047
17463
17606
20377
20771
18851
20628
20775
21452
21169
21703
21850
33686
23309
23447
32428
30836
25847
24981
24868
25132
25502
44075
34335
30693
31510
35069
36457
59188
43937
40554
60916
65527
42621
61589
47550
56378
58554
46756
48315
49849
56540
84690
50370
50000
110192
94257
84184
71247
83213
66579
75623
77011
83175
97920
87310
132836
116949
90171
94306
95071
158798
98164
122379
146870
137159
100370
121247
116579
125623
161195
143590
153889
148258
152634
286725
264837
252053
222749
182381
181616
184477
188335
185242
189377
193235
198534
214743
247240
318858
216949
237826
242202
269213
273881
291848
296224
333500
378477
453172
363997
367623
396359
387911
366093
386869
369719
382612
374619
391769
581146
413277
452569
459151
480028
454775
507039
516083
543094
565729
769481
750866
898808
730090
748705
731620
754492
735812
740712
744338
752331
1127581
1144100
1059177
1493043
865846
920316
975234
934803
1683508
961814
1072768
1291799
1108823
1295819
1461710
1669021
1467432
1472332
3145218
1475958
1476524
1672647
2020991
1496669
1618177
2435899
2168000
2396274
1786162
1800649
1910037
2368587
1896617
3455183
3145545
2181591
2400622
2404642
2757529
5891082
2939764
2943390
2948290
2952482
2972627
2973193
3114846
3393286
3406706
5807328
5730156
5120482
8755618
12162324
3697266
6098027
7626773
5705819
4582213
4586233
4805264
5352932
10599400
8068772
11828183
5883154
9212873
5900772
8198550
7920110
6088039
10389541
20231096
7103972
11435975
8279479
12865712
11617376
8283499
8502530
13551482
9168446
9387477
10688418
9391497
32059279
19938505
14081704
11783926
15024082
11971193
11988811
13004744
13192011
14008149
15606502
21825516
15383451
22472344
25792075
21171403
17890007
24809387
22360457
27273715
18555923
18559943
33160762
20079915
32914089
23755119
23772737
23960004
24788670
29391600
30989953
36480493
30894751
23278925
36554854
33943394
33273458
33939374
38635838
63904042
36445930
42699394
37115866
38639858
47238929
59759418
48543789
69534609
48748674
47034044
47051662
47732741
54180270
48067595
64168209
69753951
57218299
118084312
56552383
67882768
95188221
67212832
81672115
101214314
93664229
79815260
75755724
103604045
95595451
123927627
104619978
115280427
96816269
94766785
104269961
94784403
101913011
102247865
105285894
113770682
123765215
220332177
199808199
124435151
135095600
142968556
174582045
155570984
172571993
170522509
199404381
170540127
189551188
190362236
191600672
191583054
218532000
293830919
229862385
196697414
207198905
301652246
366182717
219056576
237535897
248200366
290666584
418340199
367219923
345933220
298539540
326093493
326111111
388280468
362123181
528401925
360091315
379913424
381945290
383183726
403896319
425730905
579881140
426255481
415753990
908315349
538866950
686202426
467256942
563629390
636480834
693331034
624633033
708056401
989360295
1006578323
944155915
814011373
795667414
722214496
808914631
1005612045
1075276324
1147945401
787080045
819650309
893512423
883010932
1430270897
1030886332
1006123892
1091889975
1642604726
1188262423
1200110224
1814526676
1655519365
1702661241
1503723815
1509294541
2649183049
1697022305
1517881910
1582747459
2386734747
1888622977
2522311550
1606730354
2019760533
2590534728
1713162732
2230996556
1889134824
2673491058
2709404765
2509847707
2280152398
2691986238
3323821217
2703834039
3086471274
3013018356
3279769764
3021605725
3027176451
3214904215
3886882752
3100629369
5603973615
4099897479
3319893086
4707359723
4303697460
6332911442
8818877830
4398982531
4581121062
6987512121
4953643456
4790000105
5213681746
4972138636
7613886746
5716852395
5725439764
6034624081
9661003179
6048782176
7404326829
6127805820
6315533584
9288480785
10338321541
7419790565
8889897584
11546593188
8702679991
12201193867
9371121167
8980103593
11853245584
9534764518
9743643561
9762138741
18178378369
10185820382
10688991031
11442292159
15013920549
19195767697
12162429901
15709785355
18905885685
12443339404
15017703404
15018213575
16122470556
16309688149
16399894158
18446323552
17682783584
18073801158
22131283190
18351224760
18723747154
19947959123
19296903259
20451129772
35305779843
20874811413
28259621540
22851420932
31327391553
24605769305
33741450558
27180133305
37149496765
35468833176
27461042808
51424234142
53657004603
32432158705
32709582307
46983368694
35756584742
36034008344
36425025918
56631396155
37074971914
38020650413
54641176113
45480580718
41325941185
53584393720
50031554237
47457190237
50312463740
89063554860
58347219863
60921583863
74054658757
60170625115
87849260060
63217627550
106486817462
103615947957
129175201245
68743590651
91605044133
71790593086
77359949529
79346591598
98191275528
154822671683
83501231131
94910334905
86806521903
105804410100
97488744474
97769653977
116200780888
110483088855
118517844978
119268803726
129665174514
156706541127
139517216713
131961218201
135008220636
234066490656
180975897486
189796319661
223018447844
189305641231
149150542615
162847822729
177537867126
170307753034
266969438837
199702012019
203007302791
184295266377
195258398451
207971833329
378279586363
226683869743
237786648704
248183019492
261626392715
264673395150
288667759328
271478434914
315984118122
365566151485
434326257643
330126440101
311998365344
319458295649
347845620160
604634010677
361833133503
354603019411
387302569168
464375407169
503753562026
398265701242
550294152043
403230231780
753784553292
464470518447
526299787865
576671760494
780454636569
666601384755
553341154478
706760864817
583476800258
627982483466
677972060261
649584735750
966467144180
674061315060
709678753663
702448639571
716436152914
741905588579
752868720653
785568270410
1126965912537
801495933022
1041142278941
867700750227
929530019645
1175884523615
990770306312
1079640942343
1130012914972
1277567219216
1502004423324
1136817954736
1211459283724
1233061536008
1776338576722
1323646050810
1352033375321
1376509954631
1843402065451
1782089581914
1418884792485
1458341741493
2287572693734
1538436991063
1587064203432
1842638211963
1669196683249
2252601562665
1858471056539
1920300325957
2862083041873
3166284262773
2209653857315
2348277238460
3363402780154
3991743439229
2488851330057
4720554098412
3512598748700
4638421618595
5350934371930
3005948995917
2795394747116
2877226533978
2957321783548
2996778732556
4464290737410
3125501194495
3207633674312
3256260886681
4653865803655
3527667739788
6848075475910
5345055971016
4129954183272
4557931095775
4698505187372
4837128568517
5604538125141
8347713104486
5284246077173
5366077864035
6524446472344
5672621281094
5752716530664
7657621923060
5792173479672
5834548317526
9844854208466
8409747271668
6253039619237
7824006381867
14182261422012
11200626181561
7954766074053
10162469220916
10654400655616
8687885279047
8828459370644
8967082751789
9256436283147
9535633755889
10970615989176
10650323941208
10956867358267
14077046001104
11038699145129
24027115630478
15517475489560
11544890010336
13910661542297
11626721797198
12087587936763
14207805693290
20460845312527
14940924898284
19923950110056
16642651353100
16783225444697
16921848825842
17516344649691
17944321562194
17654968030836
17795542122433
18223519034936
18792070039036
20185957697097
27681350498229
21607191299475
22583589155465
22665420942327
23126287081892
28548570623040
23171611807534
50852962305763
33705074270539
33564500178942
26295393630053
29148730591574
31583576251384
31724150342981
40642631731583
33425876797797
34438193475533
39123535949166
45791708024219
35450510153269
45476892620662
36019061157369
38409476732033
38978027736133
41793148996572
44190780454940
57057701452744
58602650312834
54709863333276
62104314818025
49467005437587
52320342399108
55444124221627
60000467900592
58019543973034
57878969881437
60732306842958
69888703628802
65150027140778
75080825207116
68876386951066
93687891069409
128491353941636
73859986885302
) day09a: 25) equals: 23278925."
]

{ #category : #tests }
AoC2020Tests >> testDay09B [
	self assert: (#(35
20
15
25
47
40
62
55
65
95
102
117
150
182
127
219
299
277
309
576) day09b: 127) equals: 62.
	self assert: (#(13
41
12
29
40
27
22
38
4
8
33
39
16
45
47
23
37
31
1
10
24
20
9
32
46
5
11
17
6
21
7
18
22
40
44
8
15
12
25
64
13
16
14
19
29
28
26
20
23
38
24
30
27
35
31
21
32
34
39
61
22
33
36
37
40
41
42
63
55
43
44
45
50
51
53
66
78
73
52
54
56
96
58
59
65
62
75
95
80
81
83
85
101
102
87
89
97
105
103
106
108
111
170
110
193
141
117
120
121
140
294
155
197
198
186
182
172
176
184
391
211
200
218
275
214
290
221
231
227
237
238
403
241
569
398
360
407
348
383
356
801
372
376
402
411
682
414
439
435
441
452
759
597
464
817
794
589
724
736
704
720
728
731
1134
732
748
787
778
841
1139
849
853
1293
887
1200
916
1305
1053
1460
1309
1367
1455
1467
2029
2087
1448
1459
1463
2427
1480
1601
1565
1619
1690
2316
1702
3003
2335
2362
3484
2764
2513
2420
4693
3170
3886
4629
2907
2911
2922
4203
2939
5588
3045
5683
3220
7393
3309
3392
5273
4037
4697
4848
8089
4933
5184
5327
5331
6142
5818
6612
5829
5861
5833
5967
5984
10815
6265
6354
6529
6701
11974
7346
11813
10558
8734
10664
10117
10260
12094
10511
10658
11192
12445
11647
23460
11662
11800
12098
16080
12249
17457
12619
12883
13230
14047
17463
17606
20377
20771
18851
20628
20775
21452
21169
21703
21850
33686
23309
23447
32428
30836
25847
24981
24868
25132
25502
44075
34335
30693
31510
35069
36457
59188
43937
40554
60916
65527
42621
61589
47550
56378
58554
46756
48315
49849
56540
84690
50370
50000
110192
94257
84184
71247
83213
66579
75623
77011
83175
97920
87310
132836
116949
90171
94306
95071
158798
98164
122379
146870
137159
100370
121247
116579
125623
161195
143590
153889
148258
152634
286725
264837
252053
222749
182381
181616
184477
188335
185242
189377
193235
198534
214743
247240
318858
216949
237826
242202
269213
273881
291848
296224
333500
378477
453172
363997
367623
396359
387911
366093
386869
369719
382612
374619
391769
581146
413277
452569
459151
480028
454775
507039
516083
543094
565729
769481
750866
898808
730090
748705
731620
754492
735812
740712
744338
752331
1127581
1144100
1059177
1493043
865846
920316
975234
934803
1683508
961814
1072768
1291799
1108823
1295819
1461710
1669021
1467432
1472332
3145218
1475958
1476524
1672647
2020991
1496669
1618177
2435899
2168000
2396274
1786162
1800649
1910037
2368587
1896617
3455183
3145545
2181591
2400622
2404642
2757529
5891082
2939764
2943390
2948290
2952482
2972627
2973193
3114846
3393286
3406706
5807328
5730156
5120482
8755618
12162324
3697266
6098027
7626773
5705819
4582213
4586233
4805264
5352932
10599400
8068772
11828183
5883154
9212873
5900772
8198550
7920110
6088039
10389541
20231096
7103972
11435975
8279479
12865712
11617376
8283499
8502530
13551482
9168446
9387477
10688418
9391497
32059279
19938505
14081704
11783926
15024082
11971193
11988811
13004744
13192011
14008149
15606502
21825516
15383451
22472344
25792075
21171403
17890007
24809387
22360457
27273715
18555923
18559943
33160762
20079915
32914089
23755119
23772737
23960004
24788670
29391600
30989953
36480493
30894751
23278925
36554854
33943394
33273458
33939374
38635838
63904042
36445930
42699394
37115866
38639858
47238929
59759418
48543789
69534609
48748674
47034044
47051662
47732741
54180270
48067595
64168209
69753951
57218299
118084312
56552383
67882768
95188221
67212832
81672115
101214314
93664229
79815260
75755724
103604045
95595451
123927627
104619978
115280427
96816269
94766785
104269961
94784403
101913011
102247865
105285894
113770682
123765215
220332177
199808199
124435151
135095600
142968556
174582045
155570984
172571993
170522509
199404381
170540127
189551188
190362236
191600672
191583054
218532000
293830919
229862385
196697414
207198905
301652246
366182717
219056576
237535897
248200366
290666584
418340199
367219923
345933220
298539540
326093493
326111111
388280468
362123181
528401925
360091315
379913424
381945290
383183726
403896319
425730905
579881140
426255481
415753990
908315349
538866950
686202426
467256942
563629390
636480834
693331034
624633033
708056401
989360295
1006578323
944155915
814011373
795667414
722214496
808914631
1005612045
1075276324
1147945401
787080045
819650309
893512423
883010932
1430270897
1030886332
1006123892
1091889975
1642604726
1188262423
1200110224
1814526676
1655519365
1702661241
1503723815
1509294541
2649183049
1697022305
1517881910
1582747459
2386734747
1888622977
2522311550
1606730354
2019760533
2590534728
1713162732
2230996556
1889134824
2673491058
2709404765
2509847707
2280152398
2691986238
3323821217
2703834039
3086471274
3013018356
3279769764
3021605725
3027176451
3214904215
3886882752
3100629369
5603973615
4099897479
3319893086
4707359723
4303697460
6332911442
8818877830
4398982531
4581121062
6987512121
4953643456
4790000105
5213681746
4972138636
7613886746
5716852395
5725439764
6034624081
9661003179
6048782176
7404326829
6127805820
6315533584
9288480785
10338321541
7419790565
8889897584
11546593188
8702679991
12201193867
9371121167
8980103593
11853245584
9534764518
9743643561
9762138741
18178378369
10185820382
10688991031
11442292159
15013920549
19195767697
12162429901
15709785355
18905885685
12443339404
15017703404
15018213575
16122470556
16309688149
16399894158
18446323552
17682783584
18073801158
22131283190
18351224760
18723747154
19947959123
19296903259
20451129772
35305779843
20874811413
28259621540
22851420932
31327391553
24605769305
33741450558
27180133305
37149496765
35468833176
27461042808
51424234142
53657004603
32432158705
32709582307
46983368694
35756584742
36034008344
36425025918
56631396155
37074971914
38020650413
54641176113
45480580718
41325941185
53584393720
50031554237
47457190237
50312463740
89063554860
58347219863
60921583863
74054658757
60170625115
87849260060
63217627550
106486817462
103615947957
129175201245
68743590651
91605044133
71790593086
77359949529
79346591598
98191275528
154822671683
83501231131
94910334905
86806521903
105804410100
97488744474
97769653977
116200780888
110483088855
118517844978
119268803726
129665174514
156706541127
139517216713
131961218201
135008220636
234066490656
180975897486
189796319661
223018447844
189305641231
149150542615
162847822729
177537867126
170307753034
266969438837
199702012019
203007302791
184295266377
195258398451
207971833329
378279586363
226683869743
237786648704
248183019492
261626392715
264673395150
288667759328
271478434914
315984118122
365566151485
434326257643
330126440101
311998365344
319458295649
347845620160
604634010677
361833133503
354603019411
387302569168
464375407169
503753562026
398265701242
550294152043
403230231780
753784553292
464470518447
526299787865
576671760494
780454636569
666601384755
553341154478
706760864817
583476800258
627982483466
677972060261
649584735750
966467144180
674061315060
709678753663
702448639571
716436152914
741905588579
752868720653
785568270410
1126965912537
801495933022
1041142278941
867700750227
929530019645
1175884523615
990770306312
1079640942343
1130012914972
1277567219216
1502004423324
1136817954736
1211459283724
1233061536008
1776338576722
1323646050810
1352033375321
1376509954631
1843402065451
1782089581914
1418884792485
1458341741493
2287572693734
1538436991063
1587064203432
1842638211963
1669196683249
2252601562665
1858471056539
1920300325957
2862083041873
3166284262773
2209653857315
2348277238460
3363402780154
3991743439229
2488851330057
4720554098412
3512598748700
4638421618595
5350934371930
3005948995917
2795394747116
2877226533978
2957321783548
2996778732556
4464290737410
3125501194495
3207633674312
3256260886681
4653865803655
3527667739788
6848075475910
5345055971016
4129954183272
4557931095775
4698505187372
4837128568517
5604538125141
8347713104486
5284246077173
5366077864035
6524446472344
5672621281094
5752716530664
7657621923060
5792173479672
5834548317526
9844854208466
8409747271668
6253039619237
7824006381867
14182261422012
11200626181561
7954766074053
10162469220916
10654400655616
8687885279047
8828459370644
8967082751789
9256436283147
9535633755889
10970615989176
10650323941208
10956867358267
14077046001104
11038699145129
24027115630478
15517475489560
11544890010336
13910661542297
11626721797198
12087587936763
14207805693290
20460845312527
14940924898284
19923950110056
16642651353100
16783225444697
16921848825842
17516344649691
17944321562194
17654968030836
17795542122433
18223519034936
18792070039036
20185957697097
27681350498229
21607191299475
22583589155465
22665420942327
23126287081892
28548570623040
23171611807534
50852962305763
33705074270539
33564500178942
26295393630053
29148730591574
31583576251384
31724150342981
40642631731583
33425876797797
34438193475533
39123535949166
45791708024219
35450510153269
45476892620662
36019061157369
38409476732033
38978027736133
41793148996572
44190780454940
57057701452744
58602650312834
54709863333276
62104314818025
49467005437587
52320342399108
55444124221627
60000467900592
58019543973034
57878969881437
60732306842958
69888703628802
65150027140778
75080825207116
68876386951066
93687891069409
128491353941636
73859986885302
) day09b: 23278925) equals: 4011064.
]

{ #category : #tests }
AoC2020Tests >> testDay10A [
	self assert: (#(16
10
15
5
1
11
7
19
6
12
4) day10a) equals: 35.

  self assert: (#(28
33
18
42
31
14
46
20
48
47
24
23
49
45
19
38
39
11
1
32
25
35
8
17
7
9
4
2
34
10
3) day10a) equals: 220.

  self assert: (#(153
69
163
123
89
4
135
9
124
74
141
132
75
3
18
134
84
15
61
91
90
98
99
51
131
166
127
77
106
50
22
70
43
28
41
160
44
117
66
60
76
17
138
105
97
161
116
49
104
169
71
100
16
54
168
42
57
103
1
32
110
48
12
143
112
82
25
81
148
133
144
118
80
63
156
88
47
115
36
2
94
128
35
62
109
29
40
19
37
122
142
167
7
147
121
159
87
83
111
162
150
8
149
) day10a) equals: 2380.
]
