
--#1
print("Please enter a sentence to capitalize.")
userInput = io.read()

print(string.upper(userInput))



--#2


print ("Please enter the first number to add.")
firstNum = tonumber(io.read())

while firstNum == nil do
    print ("Please enter a valid number.")
    firstNum = tonumber(io.read())
end

print ("Please enter the second number to add.")
secondNum = tonumber(io.read())

while secondNum == nil do
    print ("Please enter a valid number.")
    secondNum = tonumber(io.read())
end

print (firstNum + secondNum)

--#3

print("Please enter how many numbers you'd like to add.")
numbersToAdd = tonumber(io.read())
addedNums = 0
i = 0
while i < numbersToAdd do
    print("Please enter a number.")
    addedNums = addedNums + tonumber(io.read())
    i = i + 1
end
print (addedNums)

--#4

quit = "n"



while quit == "n" do
    print("Enter the largest number to randomize.")
    numberMax = tonumber(io.read())
    while numberMax == nil do
        print("This isn't a number.")
        numberMax = tonumber(io.read())
    end
    randomNumber = math.random(0, numberMax)
    print("The number is " .. randomNumber)
    print("Would you like to quit? y/n")
    quit = string.lower(io.read())
end


--5

math.randomseed(os.time())
math.random() math.random() math.random()

evens = 0
odds = 0

for x = 1, 10 do
    randomNum = math.random(1, 100)
    print(randomNum)
    if randomNum % 2 == 0 then 
        print("Even")
        evens = evens + 1
    else
        print ("Odd")
        odds = odds + 1
    end
end

print ("There are " .. evens .. " numbers and " .. odds .. " odd numbers.")
