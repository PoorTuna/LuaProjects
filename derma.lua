	
local ply = LocalPlayer()
local ammo_frame = vgui.Create("DFrame")

ammo_frame:SetSize(surface.ScreenWidth() / 2 , surface.ScreenHeight() / 2)
ammo_frame:SetPos(surface.ScreenWidth() / 4, surface.ScreenHeight() / 4)
ammo_frame:SetVisible( true )
ammo_frame:SetDraggable( false )
ammo_frame:MakePopup()
ammo_frame:SetTitle( "Ammo" .. " | " ..os.date() )
ammo_frame.lblTitle.UpdateColours = function( label ) 
	label:SetTextStyleColor( Color( 255, 165, 0 ) ) 
end

ammo_frame.Paint = function()
	draw.RoundedBox( 10, 0, 0, ammo_frame:GetWide(), ammo_frame:GetTall(), Color( 60, 60, 60, 200 ) )
end

local rifle_ammo = vgui.Create("DButton", ammo_frame)
rifle_ammo:SetPos(surface.ScreenWidth() / 50  , surface.ScreenHeight() / 20)
rifle_ammo:SetSize(100 , 50)
rifle_ammo:SetText("Rifle Ammo")
rifle_ammo.DoClick = function()				
		
	surface.PlaySound( "alarms/klaxon1.wav" )
	
	end
