print("No way I can get this done...")

local function read_input(file)
    local f = assert(io.open(file, "r"))
    local t = {}
    for line in f:lines() do
        table.insert(t, line)
    end
    f:close()
    return t
end

local input = read_input("./input.txt")
print ("Input: " .. #input)
