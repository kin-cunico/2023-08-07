-- io.input() will read from the file
io.input("working_with_files.txt")
local fileData = io.read("*all") -- read the entire file using the "*all" parameter

print(fileData) -- print the contents of the file
-- io.close() -- close the file
io.close()