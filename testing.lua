-- two dashes initiate a single line comment

--[[
two square brackets initiate a multi-line comment
]]

print("I am here!")

-- variables and data types
-- nil 
number = nil -- nil is a special data type that represents nothing

-- number
number = 5

-- string
string = "Hello World!"

-- multiple line strings are declared with double square brackets, and can span multiple lines. Indentation is kept
multiline = [[
    This is a multiline string
    It can span multiple lines
]]

-- boolean
boolean = true

-- table (array)
table = {}

-- variables are global by default, and can be accessed from anywhere in the program
-- use _G. as convention to declare global variables
_G.GlobalVariable = 5

-- local variables are declared with the local keyword, and are only accessible within the scope they are declared in
local x = 10

-- multiple variables can be declared on the same line, separated by commas, and can be of different types. 
-- They follow the same scope rules as normal variables. 
-- Bear in mind their values are attached to their equivelant position in the list, not their name
-- variables can be reassigned to different types or values
local one, two, three, four = "one", 2, true, {}

-- tostring() converts a variable to a string
local num = 25
local str = tostring(num) 

-- tonumber() converts a variable to a number
local stringN = "25"
local numberS = tonumber(stringN)

-- type() returns the type of a variable
print(type(numberS))
print(type(stringN))

--concatenation uses two dots rather than a plus sign
print("I jumped " .. one .." then " .. two .. " times!")

-- use \n to create a new line, \t to create a tab, and \\ to create a backslash. \v creates a vertical tab (not supported in all terminals)
print("I jumped " .. one .. " time!" .. "\n" .. "Then I jumped " .. two .. 
" times! \n" .. "And" .. "\v then I jumped " .. stringN .. "\\" .. numberS .. " times!")

-- use \ \ to add a quote to a string
print("I said \"Hello Mom!\"")

-- use hash to get the length of a string
print("The length of the string is " .. #one)





print(x + number)
print(string)
print(multiline)

