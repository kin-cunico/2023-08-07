-- functions

local function sayHello(name) -- we can pass an argument to the function
    local name = name or "World" -- if no argument is passed, we use a default value "World"
    print("Hello, " .. name .. "!")
end
sayHello("John") -- we can call the function with an argument


local function summ(a, b)
    local res = a + b -- local variable, visible only inside the function
    print("local scope: " .. res) -- print the local variable
    return res -- return the result of the function to the caller, and make it available to the caller
    -- after return statement, the function is terminated
end

local x = 15
local y = 20
 z = summ(x, y) -- caller of the function can assign the result to a variable
print("Global scope: " .. z) -- global scope

-- return statement
-- we can have multiple return statements in a function with if statements or loops
local function multi(a, b)
    local res = a * b
    if res > 7 then
        -- this will only execute if res > 7
        return res
    end
    if res < 5 then
        -- this will only execute if res < 5
        return -res
    end
end

local k = multi(2, 2)
print(k)
local h = multi(2, 15)
print(h)

