local file = io.open("Script.lua", "r")
local script = file:read("*all")
file:close()

-- Replace variables, functions and methods with random names
math.randomseed(os.time())
script = script:gsub("(%w+)%s*=", function(variable)
    return string.char(math.random(97, 122)) .. string.char(math.random(97, 122)) .. string.char(math.random(97, 122)) .. string.char(math.random(97, 122)) .. string.char(math.random(97, 122)) .. " ="
end)

-- Modify functions, variables, and method calls
script = script:gsub("(%w+)%s*%(", function(functionName)
    return string.char(math.random(97, 122)) .. string.char(math.random(97, 122)) .. string.char(math.random(97, 122)) .. string.char(math.random(97, 122)) .. string.char(math.random(97, 122)) .. "("
end)

local file = io.open("obfuscated.lua", "w")
file:write(script)
file:close()

print("Obfuscation is complete and the file is saved as 'obfuscated.lua'.")
