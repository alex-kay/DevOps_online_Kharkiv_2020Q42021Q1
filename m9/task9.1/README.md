# Module 9. Python

* Develop fizzbuzz function for list of numbers from 1 to 100. (Check in Jupyter)
* If number divided by 3 without rest, print “Fizz”,
* If number divided by 5 without rest, print “Buzz”,
* If number divided by 3 and 5 without rest, print “FizzBuzz”.

```python
def fizz_buzz(i):
    if i % 3 == 0 and i % 5 == 0:
        return "FizzBuzz"
    elif i % 3 == 0:
        return "Fizz"
    elif i % 5 == 0:
        return "Buzz"
    else:
        return ""

numbers = range(1,101)

for i in numbers:
    print(fizz_buzz(i))
```

* 1* Make unit tests for your new FizzBuzz function.

```python
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
```

* Develop count_vowels function for counting vowels in input text.
* Example of usage
* count_vowels(annnmemmmtlo) = 3
* count_vowels(kjjs)=0

```python
def count_vowels(string):
    vowels = 0
    for character in string:
        if character in "aeiou":
            vowels += 1
    print(f"String \"{string}\" has {vowels} vowels.")
```
