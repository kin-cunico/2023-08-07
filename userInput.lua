-- input from user

print("What is your age?")

-- io.read() will read the input from the user
local age = io.read()
print("Your age is " .. age)

-- use io.write() to write to the console without a new line
io.write("What is your name? ")
local name = io.read()
print("Welcome, " .. name)