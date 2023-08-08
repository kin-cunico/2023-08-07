-- object oriented programming in Lua

local function Pet(name)
    local dob = 2015 -- anything outside the return statement will not be returned when the function is called
    return {
        name = name or "Taz", -- key-value pair must be inside the return statement.
        age = (os.date("%Y") - dob .. " years old")
    }
end

-- we can create or generate tables by calling functions
local cat = Pet()
local dog = Pet()

-- we can add properties to the tables
dog.name = "Nala"
dog.weight = "4kg"

-- we can also add functions to the tables
function cat:meow()
    print("meow")
end

function dog:bark()
    print("woof")
end

-- we can call the functions
print(cat.name, ":", cat:meow())
print(dog.name, ":", dog:bark())
print(dog.weight)
print(cat.age)

-- if we call dob, it will return nil because it is not returned when the function is called
print("date of birth: ", dog.dob)

-- we can also create a function with self as a parameter
function cat:eat(food)
    print(self.name, "is eating", food)
end

print(cat:eat("fish"))

-- the use of colon means that the function is passing itself to the function as a parameter
-- another way of creating these functions is

local function Cart()
    return {
        name = "my cart",
        AddToCart = function (item, self)
            print("adding", item, "to ", self.name)
        end,
        RemoveFromCart = function (item, self)
            print("removing", item, "from ", self.name)
        end,
        Checkout = function(self)
            print("checking out", self.name)
        end
    }
end

local myCart = Cart()

myCart.AddToCart("milk", myCart)
myCart.AddToCart("eggs", myCart)
myCart.RemoveFromCart("milk", myCart)

-- to avoid passing self as a parameter, we can use colon instead of dot
myCart:Checkout()

-- inheritance in Lua
local function Dog(name, dob, loyalty)
    return {
        name = name or "Bebe",
        breed = "German Shepherd",
        dob = dob or 2015,
        loyalty = 50,

        bark = function(self)
            print("woof")
        end,

        eat = function(food, self)
            print(self.name, "is eating", food)
            loyalty = loyalty + 1
            return loyalty
        end,

        fetch = function(self)
            print(self.name, "is fetching")
            loyalty = loyalty + 1
            return loyalty
        end,

        sit = function(self)
            print(self.name, "is sitting")
            loyalty = loyalty + 1
            return loyalty
        end,

        yell = function(self)
            print(self.name, "is being yelled at")
            loyalty = loyalty - 10
            return loyalty
        end,
}
end

local furry = Dog("Lilo", 2014, 50)
print(furry.name, furry.breed, furry.loyalty)

-- now say we want a puppy that also needs to inherit the properties of the Dog class
local function Puppy(name, dob, loyalty) -- we can create a function for the puppy
    local puppy = Dog(name, dob, loyalty) -- we can save to a variable the properties of the Dog class
    puppy.milk = 20 -- we can add properties to the new puppy
    puppy.sleep = function(self)
        print(self.name, "is sleeping")
    end
    -- we can also change inherited properties
    puppy.breed = "Poodle"
    return puppy -- we can return the new puppy to be accessed outside the function
end
-- now we can create a new puppy with the properties of the Dog class and the Puppy class
local pup = Puppy("Lulu", 2016, 50)
print(pup.name, pup.breed, pup.loyalty, pup.milk, pup.sleep(pup))
print(pup.eat("milk", pup)) -- we can also call the functions of the Dog class
print(pup.yell(pup))