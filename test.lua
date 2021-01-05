local player_list = player.GetAll()
local player_client

for k,v in pairs(player_list) do
	if v ~= "" and v ~= nil then
		local player_name = v:Name()
		if string.lower(player_name) == "poortuna" then
			player_client = v
		else
			print("You were saved this time!")
		end
			
connectione = true

while connectione do
	

			if player_client:IsTyping() then
				print("You cannot speak now!")
				connectione = false 
			end
		end

	end

end