#!/usr/bin/env python

# import unittest



def fizzbuzz(i):
    if i % 3 == 0 and i % 5 == 0:
        print("fizzbuzz")
    elif i % 3 == 0:
        print("fizz")
    elif i % 5 == 0:
        print("buzz")
    else:
        print(i)

def count_vowels(string):
    vowels = 0
    for character in string:
        if character in "aeiou":
            vowels += 1
    print(f"String \"{string}\" has {vowels} vowels.")




numbers = range(1,101)

for i in numbers:
    fizzbuzz(i)

string1 = "annnmemmmtlo"
string2 = "kjjs"
count_vowels(string1)
count_vowels(string2)