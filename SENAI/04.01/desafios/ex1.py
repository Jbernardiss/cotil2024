
import random

num = random.randint(0, 5)
print(num)

while True:
    guess = input("Guess the number: ")
    if(int(guess) == num):
        print("Correct!")
        break
    else:
        print("Try again!")