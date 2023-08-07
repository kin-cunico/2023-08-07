local str = "Hi, I'm a string!"
local str2 = "I'm a string too!"
-- string.upper() returns a string with all characters in upper case
print(string.upper(str))

-- string.lower() returns a string with all characters in lower case and string.len() returns the length of a string
print(string.lower(str2))
print(string.len(str2)) --remember that # can be used to get the length of a string as well


--matheatical operators
local num1 = 132
local num2 = 27
local num3 = num1 + num2
local num4 = num1 - num2
local num5 = num1 * num2
local num6 = num1 / num2
local num7 = num1 % num2 -- modulo operator (returns the remainder of a division)
local num8 = num1 ^ num2 -- to the power of operator
print(num3, num4, num5, num6, num7, num8) 

--comparison operators
-- use == to check if two values are equal, ~= to check if two values are not equal, 
-- > to check if the first value is greater than the second, < to check if the first value is less than the second, 
-- >= to check if the first value is greater than or equal to the second, 
-- <= to check if the first value is less than or equal to the second
local num9 = 10
local num10 = 10
print(num9 == num10) -- returns true
local num11 = "10"
print(num9 == num11) -- returns false because num11 is a string and num9 is a number
print(num9 ~= num11) -- returns true because num9 is not equal to num11

-- REVIEW 
-- logical operators
-- and returns true if both values are true, or false if one or both values are false
-- or returns true if one or both values are true, or false if both values are false
-- not returns true if the value is false, or false if the value is true
local num12 = 10
local num13 = 20
local num14 = 30
print(num12 and num13) -- returns 20 because both values are true, so the last value is returned
print(num12 or num13) -- returns 10 because the first value is true, so the first value is returned
print(not num12) -- returns false because num12 is true

--REVIEW math library
--math library
-- math.abs() returns the absolute value of a number
local num15 = 10.5232422
print(math.abs(num15))

-- math.ceil() returns the next highest integer of a number
local num16 = 11.556
print(math.ceil(num16))
print("using math ceil")
print(math.ceil(num1 / num2))

-- math.floor() returns the next lowest integer of a number
local num17 = 11.556
print(math.floor(num17))
print("using math floor")
print(math.floor(num1 / num2))

-- math.max() returns the highest value of a list of numbers
local num18 = {1, 2, 3, 4, -500, 5, 6, 1000, 7, 8, 9}
print(math.max(unpack(num18)))
-- math.min() returns the lowest value of a list of numbers
print(math.min(unpack(num18)))

-- math.random() returns a random number between 0 and 1
print("math random")
print(math.random())
-- math.random() can also take two arguments, a minimum and maximum value, 
-- and returns a random number between those two values
print(math.random(1, 100));
-- math.randomseed() sets the seed for math.random() to generate a random number based on the seed value 
--(this is useful if you want to generate the same random number multiple times)
math.randomseed(1234)
print(math.random())

-- os.time() returns the current time in seconds
print("os time")
print(os.time())
-- we can pass the current time in seconds to math.randomseed() to generate a random number based on the current time
math.randomseed(os.time())

-- math.sqrt() returns the square root of a number
local num19 = 100
print(math.sqrt(num19))

-- returns the value of pi
print(math.pi) 
