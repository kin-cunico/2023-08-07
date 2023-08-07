-- modules are basic building blocks
-- packages are collections of modules

-- creating a module and adding a method to it
Mod = {
    multi = function(a, b)
        return a * b
    end
}

-- a second way of creating a method in a module
function Mod.sum(a, b)
    return a + b
end

-- we can populate our module with different methods
function Mod.greet(name)
    print("Hello, " .. name)
end

function Mod.goodbye(name)
    print("Goodbye, " .. name)
end

function Mod.age(dob)
    year = os.date("%Y") -- we can get the current year using os.date
    print("You are " .. (year - dob) .. " years old")
end

return Mod -- with this we can use the module in other files - go to usingMods.lua