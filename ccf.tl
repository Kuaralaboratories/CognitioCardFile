local function read_ccf_file(filename: string)
    -- Open .cff file
    local file = io.open(filename, "r")
    if not file then
        print("File can't read!")
        return
    end
    
    -- Read and write the file
    local content = file:read("*all")
    print("File content:")
    print(content)
    
    -- Close the file
    file:close()
end

-- Main function
local function main()
    -- Read filename
    print("Give the name of file you want to open:")
    local filename = io.read()

    -- check .ccf filepath
    if not filename:match("%.ccf$") then
        print("Error! Wrong file path.")
        return
    end

    -- open .ccf file
    read_ccf_file(filename)
end

-- Run the main function
main()