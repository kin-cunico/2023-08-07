-- we can create files with the io library

-- if the file already exists, it will be overwritten
-- if the file does not exist, it will be created
-- the file will be created in the same directory as the lua file
-- io.output("filename.txt, "w")
-- io.output("filename.txt, "a") -- append to the file instead of overwriting it
-- io.output() accepts a path as well as a filename (e.g. "path/to/filename.txt")
-- io.output() also accepts as arguments a file descriptor (e.g. io.stdin, io.stdout, io.stderr)
io.output("working_with_files.txt", "w")

-- io.write() will write to the file
io.write("Hello, World!\n") -- write to the file

-- combining io.write() with io.output() we can write to a file
io.output("working_with_files.txt", io.write("\Hello new file!\n"))

io.close()



