
n1 = input("n1: ")
n2 = input("n2: ")
n3 = input("n3: ")

nums = [n1, n2, n3]

biggestNum = nums[0]
smallestNum = nums[0]
for n in nums:
    if n > biggestNum:
        biggestNum = n
    
    if n < smallestNum:
        smallestNum = n

print(f"Maior número: {biggestNum}")
print(f"Menor número: {smallestNum}")