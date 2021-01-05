

local index = 0

--[[local ply = LocalPlayer()
local ply_name = ply:Name()
]]
local ply_list = player.GetAll()
local desired_player

for k,v in pairs(ply_list) do
	if string.lower(v:Name()) == "poortuna" then
		if v:Deaths() > v:Frags() then
			print("noob lol")
		end
	end
	
end

