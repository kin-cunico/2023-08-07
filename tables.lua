-- tables are used to store data in a structured way

local tbl = {"apple", "pear", "orange", "grape"}

-- to print the table values, we can use a for loop
for i = 1, #tbl do -- rememeber that #tbl is the length of the table
  print(tbl[i])
end

-- bear in mind that if we use print(tbl), it will print the memory address of the table
print(tbl)

-- we can access the elements of a table using the index
print(tbl[1])

-- we can also use the index to change the value of an element
tbl[1] = "mango"
print(tbl[1])

-- we can also use the index to add a new element to the table
tbl[5] = "banana"
print(tbl[5])

-- we can also use the index to remove an element from the table
tbl[5] = nil
print(tbl[5])

-- tables can also be used to store data in a key-value pair
-- key-value works by assigning a name to the key, and then assigning a value to the key
local tbl2 = {name = "John", age = 25, isMale = true}
print(tbl2.name)

-- we can also use the key-value pair to add a new element to the table
tbl2.height = 1.75
print(tbl2.height)
print(tbl2.age)

-- to loop through a table with key-value pairs, we can use a for loop with pairs()
-- to access we need to use the key and the value
for index, value in pairs(tbl2) do
  print(index, value)
end

-- tables can store any type of data, including other tables.
-- tables can also be used to store functions, and multiple functions can be stored in a single table.
-- tables can store multiple data types in a single table.
local tbl3 = {"apple", 33, true, {"banana", "orange", "grape"}, function() print("Hello World!") end}




-- multi-dimensional tables are tables that contain other tables within them as elements
-- this is an example of a dictionary or an object in other languages
-- we add the key to the table, and then assign a value to the key
local tbl4 = { fruits1 = {"apple", "pear", "orange"}, fruits2 = {"banana", "grape", "mango"}, 
fruits3 = {"pineapple", "watermelon", "kiwi"}}

-- using for loops to print out the elements of a multi-dimensional table with known keys
for i = 1, #tbl4.fruits1 do
  print(tbl4.fruits1[i])
end

-- using for loops to print out the elements of a multi-dimensional table without knowing the keys
local tbl5 = { {7,8,9}, {4,5,6}, {1,2,3}}

for i = 1, #tbl5 do
  for j = 1, #tbl5[i] do
    print(tbl5[i][j])
  end
end

-- conventionally, only have 3 max dimensions in a table [x]][y][z]
local tbl6 = { -- first dimension (x)
    { -- second dimension (y)
        {1,2,3}, -- third dimension (z)
        {4,5,6},
        {7,8,9}
    },
    {
        {10,11,12},
        {13,14,15},
        {16,17,18}
    },
    {
        {19,20,21},
        {22,23,24},
        {25,26,27}
    }
}

-- table methods are functions that can be used to manipulate tables
-- table.concat(tbl, separator, start, end) is used to concatenate the elements of a table into a string
local tbl7 = {"apple", "pear", "orange", "grape"}
print(table.concat(tbl7, ", ", 1, 3))

-- table.sort(tbl, comp) is used to sort the elements of a table
local tbl8 = {5, 3, 7, 1, 9, 2, 4, 6, 8}
table.sort(tbl8)
print(table.concat(tbl8, ", "))

-- table.maxn(tbl) is used to find the largest numerical index in a table
local tbl9 = {5, 3, 7, 1, 9, 2, 4, 6, 8}
print(table.maxn(tbl9))

-- table.insert(tbl, index, value) is used to insert a value into a table
table.insert(tbl3, 2, 27)
print(tbl3[2])

-- table.remove(tbl, index) is used to remove a value from a table
table.remove(tbl3, 2)
