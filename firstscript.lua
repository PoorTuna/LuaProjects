
--lua firstscript.lua

--[[
Variables:
]]
A = 1
B = 2

Number1 = 10
Number2 = 2.5
Bool1 = true -- Can also be any value in case of casting
Bool2 = false -- the only thing that is false is nil [null]
String1 = "Hello World"
String2 = 'Hello World'
--Functions
--UserData
--Threads
--Arrays

--Math : 
--math.sin(3)
--math.cosin(3)
--math.ceil(4) -- rounds up a Number 2.3 -> 3
--math.floor(3) -- rounds down a Number 2.3 -> 2
--math.random(1) -- generates a random number ( can accept 2 arguments )
--math.pow(1,1) -- power of a Number ( gets 2 arguments )


-- Conditions : Cannot have 2 ifs in 1 block

if A == B then
	print("A=B")

elseif A >= B then
	print("A >= B")

else
	print("None of the above upheld the requirements.")

end


print("\n")
print("\n")
print("\n")
print("\n")
print("\n")
print("\n")
print("\n")
print("\n")
print("\n")
print("\n")
print("\n")

--Tables : [Arrays]

Table1 = {1,2,3,4,"xd"} -- Dynamic like in python
Table1["String"] = "lmao"
Table1["String2"] = "lmao2"
Table1["Strinh"] = "lmao1"
print(Table1[5])

Table1[1] = 10

print(Table1[1])

Table2 = {} -- Does not work like in java when you define it [][]
Table2[1] = {}

Table2[1][1] = "xd"

print (Table2[1][1])

--Loops :[  for ]  and [ for k , v and pairs ] and [ while ]

-- For loop (like range in python)
for i = 1, 100 do

	print("index: " .. i)

end

print ("......")

-- While Loop
counter = 0
while counter < 100 do
	
	counter = counter + 1
	print("counter : " .. counter)
end

--for k , v and pairs ]

-- Strings order is random

for key , value in pairs(Table1) do
	print (key, ":" , value)

end

--Functions : 

function test(paramater1,paramater2)

	

return paramater1 + paramater2
end


test(20,40)


-- Local:

if 1==1 then
	local test = 100
	
	if 2==2 then
		print(test)
	
	end
end

print(test)
