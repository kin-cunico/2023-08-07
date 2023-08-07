-- REVIEW - main ways of dealing with files 
-- the second parameter is the method we will use in the file
-- "r" - read (default) - opens a file for reading
-- "w" - write - opens a file for writing
-- "a" - append - opens a file for appending
-- "r+" - update - opens a file for updating, both reading and writing
-- "w+" - update - opens a file for updating, both reading and writing
-- "a+" - update - opens a file for updating, both reading and writing
-- IDEA - these are less used 
-- "b" - binary - opens a file in binary mode
-- "t" - text - opens a file in text mode (default)
-- "x" - exclusive - opens a file exclusively (creates a new file)
-- "l" - line buffered - opens a file with line buffering
-- "n" - no buffered - opens a file with no buffering
-- "rb" - read binary - read mode but in binary mode
-- "wb" - write binary - write mode but in binary mode
-- "ab" - append binary - append mode but in binary mode
-- "r+b" - update binary - update mode but in binary mode

-- REVIEW - Note that this is the conventional way of creating files
local file = io.open("second_way_of_creating_files.txt", "w") 

if file ~= nil then -- remember ~= is "not equal", similar to JS !=
    file:write("Hello, file!\n")
    file:close()
else
    print("File could not be opened")
end

--REVIEW appending to a file

local file = io.open("second_way_of_creating_files.txt", "a") -- "a" for append

if file ~= nil then
    file:write("Hello, file again, for the third time!\n")
    file:close() -- remember to close the file
else
    print("File could not be opened")
end