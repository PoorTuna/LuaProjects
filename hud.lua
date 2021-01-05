surface.CreateFont( "DfFont", {
	font = "Arial", --  Use the font-name which is shown to you by your operating system Font Viewer, not the file name
	extended = false,
	size = 30,
	weight = 500,
	blursize = 0,
	scanlines = 0,
	antialias = true,
	underline = false,
	italic = false,
	strikeout = false,
	symbol = false,
	rotary = false,
	shadow = false,
	additive = false,
	outline = false,
})

-- Draw Players Avatar
	local ply = LocalPlayer()
	local Avatar = vgui.Create( "AvatarImage", Panel )
	Avatar:SetSize( 84, 84 )
	Avatar:SetPos( surface.ScreenWidth() / 2.75 + 20, 20 )
	Avatar:SetPlayer( ply, 64 )

function hud_draw()

	surface.SetFont("Trebuchet24")
	local ply = LocalPlayer()
	local ply_health = ply:Health()
	local ply_armor = ply:Armor()
	local ply_ammo1 = 0
	local ply_ammo2 = 0
	local current_date = string.sub(os.date(),1,10) .. " | " .. string.sub(os.date(),21,-1)
	local current_time = string.sub(os.date(),11,20)


	-- Top middle Box
	draw.RoundedBox(10, surface.ScreenWidth() / 2.75 , 10, 600, 100, Color(240, 240, 240, 40))
	--10
	-- Name
	surface.SetDrawColor(Color(105, 105, 105)) -- The outer shell of the bar
	surface.DrawRect(surface.ScreenWidth() / 2.75 + 107, 17, 456, 36)

	surface.SetDrawColor(Color(76, 187, 23))
	surface.DrawRect(surface.ScreenWidth() / 2.75 + 110, 20, 450, 30)
	
	surface.SetTextColor(Color(255, 255, 255))
	surface.SetTextPos(surface.ScreenWidth() / 2.75 + 115, 20)
	surface.DrawText("Steam_Name : ".. ply:Name())


	-- Steam ID :
	surface.SetDrawColor(Color(105, 105, 105)) -- The outer shell of the bar
	surface.DrawRect(surface.ScreenWidth() / 2.75 + 107, 62, 456, 36)

	surface.SetDrawColor(Color(79, 121, 66))
	surface.DrawRect(surface.ScreenWidth() / 2.75 + 110, 65, 450, 30)
	
	surface.SetTextColor(Color(255, 255, 255))
	surface.SetTextPos(surface.ScreenWidth() / 2.75 + 115, 67)
	surface.DrawText("SteamID : " .. ply:SteamID())

	if ply:Alive() then
		ply_ammo1 = (ply:GetActiveWeapon():Clip1() / ply:GetActiveWeapon():GetMaxClip1()) * 100
		ply_ammo2 = (ply:GetActiveWeapon():Clip2() / ply:GetActiveWeapon():GetMaxClip2()) * 100

		if ply_ammo1 > 100 then
			ply_ammo1 = 100
		end

		if ply_ammo2 > 100 then
		end
	end
	-- Left box
	draw.RoundedBox(10, 40, surface.ScreenHeight() - 110, 330, 100, Color(240, 240, 240, 70))
	


	--Health :
	surface.SetDrawColor(Color(105, 105, 105)) -- The outer shell of the bar
	surface.DrawRect(47, surface.ScreenHeight() - 53, 306, 36)

	surface.SetDrawColor(Color(255, 120, 120))
	surface.DrawRect(50, surface.ScreenHeight() - 50, ply_health * 3, 30)
	
	surface.SetTextColor(Color(255, 255, 255))
	surface.SetTextPos(55, surface.ScreenHeight() - 50)
	surface.DrawText("HP")


	-- Armor :
	surface.SetDrawColor(Color(105, 105, 105)) -- The outer shell of the bar
	surface.DrawRect(47, surface.ScreenHeight() - 103, 306, 36)

	surface.SetDrawColor(Color(100, 200, 250))
	surface.DrawRect(50, surface.ScreenHeight() - 100, ply_armor * 3, 30)
	
	surface.SetTextColor(Color(255, 255, 255))
	surface.SetTextPos(55, surface.ScreenHeight() - 100)
	surface.DrawText("Armor")



		--Right box
	draw.RoundedBox(10, surface.ScreenWidth() - 400, surface.ScreenHeight() - 110, 330, 100, Color(240, 240, 240, 70))


	--Date
	surface.SetDrawColor(Color(105, 105, 105)) -- The outer shell of the bar
	surface.DrawRect(surface.ScreenWidth() - 393, surface.ScreenHeight() - 103, 306, 36)

	surface.SetDrawColor(Color(239, 130, 13))
	surface.DrawRect(surface.ScreenWidth() - 390, surface.ScreenHeight() - 100, 300, 30)
	

	surface.SetTextColor(Color(255, 255, 255,200))
	surface.SetTextPos(surface.ScreenWidth() - 384, surface.ScreenHeight() - 100)
	surface.DrawText("Date: " .. os.date())

		-- Ammo :
	if ply:GetActiveWeapon():Clip1() ~= -1 and ply:GetActiveWeapon():GetClass() ~= "weapon_bugbait" and ply:GetActiveWeapon():Clip1() ~= nil  then
		
		--Ammo :
		surface.SetDrawColor(Color(105, 105, 105)) -- The outer shell of the bar
		surface.DrawRect(surface.ScreenWidth() - 393, surface.ScreenHeight() - 53, 306, 36)

		surface.SetDrawColor(Color(255, 191, 0))
		surface.DrawRect(surface.ScreenWidth() - 390, surface.ScreenHeight() - 50, ply_ammo1 * 3, 30)
		

		surface.SetTextColor(Color(255, 255, 255,200))
		surface.SetTextPos(surface.ScreenWidth() - 384, surface.ScreenHeight() - 50)
		surface.DrawText("Ammo")


	end
end




hook.Add("HUDPaint", "status_bar", hud_draw)

hook.Add( "HUDShouldDraw", "hide_Dhud", function( name )
     if ( name == "CHudHealth" or name == "CHudBattery" or name == "CHudAmmo" or name == "CHudSecondaryAmmo" ) then
         return false
     end
     -- Never return anything default here, it will break other addons using this hook.
end )
