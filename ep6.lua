
math.randomseed(os.time())
local entities_list = ents.GetAll()
local player_list = player.GetAll()

for k,v in pairs(entities_list) do
	local random_value1 = math.random(255)
	local random_value2 = math.random(255)
	local random_value3 = math.random(255)
	
	local color = Color(random_value1, random_value2, random_value3)
	
	v:SetColor(color)


--[[
	for ke,va in pairs(player_list) do
		if not va:Alive() then
			va:SetColor(Color(255, 255, 255))
			print("L L L L L L LL L L L L L L DFHKJD LHFSDLHGF SDLHKJF SDLJKHFSDLJKH FLSJKHDF SHLKDJF KLJSDHF LSDJKHFK SHDFLKH ")
		else
			print("nigger")
		end
		
	end
	]]

end


function cant_killyourself(ply)

	local player_list = player.GetAll()
	for k,v in pairs(player_list) do
		if string.lower(v:Name()) == "poortuna" then
			return true
		end
	end
	return false
end
hook.Add("CanPlayerSuicide", "suicider", cant_killyourself)
