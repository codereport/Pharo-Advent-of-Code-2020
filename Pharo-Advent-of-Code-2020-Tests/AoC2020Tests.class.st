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
