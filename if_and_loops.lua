-- if statements and loops in lua

-- this statement will only run if the condition is true
if true then
    print("This is true, because the condition is true")
end

local number = 10
-- this statement will run if the condition is true
if number > 5 then
    print("x is greater than 5")
end

-- with comparison operators

local x = 16
local y = 20

-- with and operator both conditions must be true
if x < y and x > 10 then
    print(x .." is less than " .. y .. " and greater than 10")
end

-- with or operator only one condition must be true
if x < y or x > 10 then
    print(x .." is less than " .. y .. " or greater than 10")
end

-- with not operator the condition must be false
if not (x > y) then
    print(x .." is not greater than " .. y)
end

local age = 12
local name = age >= 18 and "John" or "Jane"
-- bear in mind that a variable can only be accessed if it is declared before the if statement
if age >= 18 then
    print("You are an adult")
    if name == "John" then
        print("Welcome back, " .. name)
    end
elseif age < 13 then
    -- if we use "local" here, the variable will only be accessible inside this block
    name = "Julius"
    print("You are a child, " .. name)
elseif age < 18 and age > 13 then
    print("You are a teenager")
    if name == "Jane" then
        print("Welcome back, " .. name)
    end
end


-- loops
-- for loop needs the start and end values, and the increment(optional) value
-- we can also use negative values, but we need to make sure that the start value is greater than the end value
for i = 1, 10, 2 do
    print(i)
end

for j = 10, 1, -2 do
    print(j)
end

-- while loop
-- while loop will run until the condition is false
-- we need to make sure that the condition will eventually be false, otherwise the loop will run forever
-- otherwise we can use the break statement to stop the loop
local count = 25
while count < 30 do
    print(count)
    count = count + 1
end

-- repeat loop
-- repeat loop will run until the condition is true and it will run at least once even if the condition is false
-- we need to make sure that the condition will eventually be true, otherwise the loop will run forever
-- otherwise we can use the break statement to stop the loop
-- we can also use the until keyword instead of while
local count2 = 25
repeat
    print(count2)
    count2 = count2 + 1
until count2 > 30

-- this will run at least once
local count3 = 45
repeat
    print(count3)
    count3 = count3 + 1
until count3 > 24