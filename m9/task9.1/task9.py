#!/usr/bin/env python

import unittest

def fizz_buzz(i):
    if i % 3 == 0 and i % 5 == 0:
        return "FizzBuzz"
    elif i % 3 == 0:
        return "Fizz"
    elif i % 5 == 0:
        return "Buzz"
    else:
        return ""

def count_vowels(string):
    vowels = 0
    for character in string:
        if character in "aeiou":
            vowels += 1
    print(f"String \"{string}\" has {vowels} vowels.")

numbers = range(1,101)

for i in numbers:
    print(fizz_buzz(i))

string1 = "annnmemmmtlo"
string2 = "kjjs"
count_vowels(string1)
count_vowels(string2)

class FizzBuzzTests(unittest.TestCase):
    def test_fizz(self):
        numbers=range(33,101, 33)
        for i in numbers:
            result = fizz_buzz(i)
            with self.subTest(result=result):
                    self.assertEqual(result, 'Fizz')
    def test_buzz(self):
        numbers=range(55,111, 55)
        for i in numbers:
            result = fizz_buzz(i)
            with self.subTest(result=result):
                self.assertEqual(result, 'Buzz')
    def test_fizzbuzz(self):
        numbers=range(15,151, 15)
        for i in numbers:
            result = fizz_buzz(i)
            with self.subTest(result=result):
                self.assertEqual(result, 'FizzBuzz')

if __name__ == '__main__':
    unittest.main()