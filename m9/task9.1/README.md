# Module 9. Python

* Develop fizzbuzz function for list of numbers from 1 to 100. (Check in Jupyter)
* If number divided by 3 without rest, print “Fizz”,
* If number divided by 5 without rest, print “Buzz”,
* If number divided by 3 and 5 without rest, print “FizzBuzz”.

```python
def fizzbuzz(i):
    if i % 3 == 0 and i % 5 == 0:
        print("fizzbuzz")
    elif i % 3 == 0:
        print("fizz")
    elif i % 5 == 0:
        print("buzz")
    else:
        print(i)

numbers = range(1,101)

for i in numbers:
    fizzbuzz(i)
```

* 1* Make unit tests for your new FizzBuzz function.

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
