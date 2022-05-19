--Instructions:
--[[1. Join the game you want to copy
2. Run elysian.
3. Paste the script
4. Wait till it starts printing massively.
5. Wait till the printing finishes.
6. CTRL+A on the elysian output then CTRL+C
7. Go to studio, new script, paste, remove the elysian outputs on the top.
8. Remove the baseplate.
9. Run the game in studio.
--]]
What's 10xCopy? The 10x faster remade version of my old place copier.
To use this copier you will need 6GB+ RAM.
 
Settings = {
Copy = true, -- Using this option might cause lag in game but it doesn't remove the game.
Creator = '001', -- Created by 001 from V3rmillion.net.
EverythingAnchored = false, -- Anchors every part.
CopyLightingProperties = true, -- Copy ambient, skybox, timeofday, globalshadows, etc properties from Lighting.
}
 
 
AllowedClassnames = {'Part','WedgePart','SpawnLocation','UnionOperation','Seat','VehicleSeat','TrussPart'}
source = ""
newline = [[
 
]]
tablecheck = function(t,value) -- Function: tablecheck, Description: checks a table for a value, Variables: table (table), value (string).
    for i,v in pairs(t) do
        if v==value then
            return true
        end
    end
    return nil
end
printFunction = function(str) -- Function: printFunction, Description: Custom print function, Variables: print (string).
    source=source..";"..str
end
copy = function(children) -- no time to document this,
    local PartClass = children.ClassName
    if tablecheck(AllowedClassnames, PartClass) then
        local PartName = "P"..math.random(100,999)
        printFunction(PartName.."=Instance.new('"..PartClass.."', Workspace)") -- Instance.new
        upc=tostring('false')
        if children:IsA'UnionOperation' then
            upc=tostring(children.UsePartColor)
        end
        shape='"N"'
        if children:IsA'Part' or children:IsA'SpawnLocation' or children:IsA'Seat' then
            shape=tostring(children.Shape)
        end
        formfactor='"N"'
        if children:IsA'Part' or children:IsA'WedgePart' or children:IsA'SpawnLocation' or children:IsA'Seat' then
            formfactor=tostring(children.FormFactor)
        end
        local Anchored = tostring(children.Anchored)
        local Locked = tostring(children.Locked)
        local Name = children.Name
        local Size = children.Size
        local CanCollide = tostring(children.CanCollide)
        local Archivable = tostring(children.Archivable)
        local CFrame = children.CFrame
        local Transparency = tonumber(children.Transparency)
local Reflectance = tonumber(children.Reflectance)
        local Material = children.Material
        local BrickColor = children.BrickColor
 
        local fc = PartName..",'"..Name.."',"..tostring(Settings.EverythingAnchored)..","..shape..","..upc..","..CanCollide..","..Locked..","..Anchored..","..Archivable..","..formfactor..",{"..tostring(Size).."},{"..tostring(CFrame).."},'"..tostring(BrickColor).."',"..Transparency..","..tostring(Material)..","..Reflectance
        printFunction("c("..fc..")")
        printFunction("ss("..PartName..","..tostring(children.BackSurface)..","..tostring(children.BottomSurface)..","..tostring(children.FrontSurface)..","..tostring(children.LeftSurface)..","..tostring(children.RightSurface)..","..tostring(children.TopSurface)..")")
for i,v in pairs(children:GetChildren()) do
if v:IsA'Decal' then
printFunction("d("..v.Name..","..tonumber(v.Transparency)..",'"..tostring(v.Texture).."',"..tostring(v.Face)..",'"..tostring(v.Name).."')") -- Decal
elseif v:IsA'SpecialMesh' then
-- For mesh (d): p=part,t=meshid,te=meshtexture,face=size,n=name,ff=meshtype
printFunction("d("..PartName..",'"..tostring(v.MeshId).."','"..tostring(v.TextureId).."',{"..tostring(v.Scale).."},'"..tostring(v.Name).."',"..tostring(v.MeshType)..")") -- Mesh
end
end
    end
end
local decryptFunc = [[
   c=function(part,name,everythinganchored,shape,usepartcolor,cancollide,locked,anchored,archivable,formfactor,size,cframe,brickcolor,transparency,material,reflectance)
part.Name=name
function tabltostring(tabl)
    s=''
    for i,v in pairs(tabl) do
        s=s..v
    end
    return s
end
function n(nu)
    return tonumber(nu)
end
if part:IsA'Part' or part:IsA'SpawnLocation' or part:IsA'Seat' then
part.Shape=shape
end
if part:IsA'UnionOperation' then
part.UsePartColor=usepartcolor
end
part.CanCollide=cancollide
part.Locked=locked
if everythinganchored == true then
part.Anchored = true
else
part.Anchored = anchored
end
part.Archivable = archivable
if part:IsA'Part' or part:IsA'WedgePart' or part:IsA'SpawnLocation' or part:IsA'Seat' then
part.FormFactor=formfactor
end
part.Size = Vector3.new(n(size[1]),n(size[2]),n(size[3]))
part.CFrame = CFrame.new(n(cframe[1]),n(cframe[2]),n(cframe[3]),n(cframe[4]),n(cframe[5]),n(cframe[6]),n(cframe[7]),n(cframe[8]),n(cframe[9]),n(cframe[10]),n(cframe[11]),n(cframe[12]))
part.BrickColor = BrickColor.new(brickcolor)
part.Material = material
part.Transparency = transparency
part.Reflectance = reflectance
end
]]
local function magiclines( str )
    if strConfusedub(-1)~="\n" then str=str.."\n" end
        return str:gmatch("(.-)\n")
end
function findLoop(childre)
Instance.new('Model',game.Lighting).Name='Copy'
findLoop2 = function(children) -- Function: findLoop, Description: Just a find loop, Variables: children (Part).
    for i,v in pairs(children:GetChildren()) do
        if tablecheck(AllowedClassnames, v.ClassName) then
            if Settings.Copy == true then
                v:Clone().Parent = game.Lighting.Copy
            else
                v.Parent = game.Lighting.Copy
            end
        end
if v:FindFirstChild'HumanoidRootPart' ~= true then -- Anti player copy.
        findLoop2(v)
end
    end
end
findLoop2(childre)
wait(2)
for line in magiclines(decryptFunc) do
    printFunction(line)
wait()
end
wait(4)
printFunction("d=function(p,t,te,face,n,ff)if type(ff)=='string' then me=Instance.new('SpecialMesh',p);me.MeshType=ff;me.MeshId=t;me.TextureId=te;me.Name=n;me.Scale=Vector3.new(face[1],face[2],face[3]); else xx=Instance.new('Decal',p);xx.Texture=te;xx.Transparency=t;xx.Face=face;xx.Name=n;end;end") -- Decal (d) function.
printFunction("ss=function(p,bs,bz,fs,ls,rs,ts)p.BackSurface=bs;p.BottomSurface=bz;p.FrontSurface=fs;p.LeftSurface=ls;p.RightSurface=rs;p.TopSurface=ts;end") -- SetSurface (ss) function.
if Settings.CopyLightingProperties == true then
printFunction("game.Lighting.Ambient = Color3.new("..tostring(game.Lighting.Ambient)..")")
printFunction("game.Lighting.TimeOfDay = '"..tostring(game.Lighting.TimeOfDay).."'")
printFunction("game.Lighting.Brightness = "..tostring(game.Lighting.Brightness))
printFunction("game.Lighting.ColorShift_Bottom = Color3.new("..tostring(game.Lighting.ColorShift_Bottom)..")")
printFunction("game.Lighting.ColorShift_Top = Color3.new("..tostring(game.Lighting.ColorShift_Top)..")")
printFunction("game.Lighting.GlobalShadows = "..tostring(game.Lighting.GlobalShadows))
printFunction("game.Lighting.OutdoorAmbient = Color3.new("..tostring(game.Lighting.OutdoorAmbient)..")")
printFunction("game.Lighting.ShadowColor = Color3.new("..tostring(game.Lighting.ShadowColor)..")")
printFunction("game.Lighting.FogColor = Color3.new("..tostring(game.Lighting.FogColor)..")")
printFunction("game.Lighting.FogEnd = "..tostring(game.Lighting.FogEnd))
printFunction("game.Lighting.FogStart = "..tostring(game.Lighting.FogStart))
printFunction("game.Lighting.GeographicLatitude = "..tostring(game.Lighting.GeographicLatitude))
for i,v in pairs(game.Lighting:GetChildren()) do
if v:IsA'Sky' then
printFunction("a=Instance.new('Sky',game.Lighting)")
printFunction("a.CelestialBodiesShown="..tostring(v.CelestialBodiesShown))
printFunction("a.SkyboxBk='"..tostring(v.SkyboxBk).."'")
printFunction("a.SkyboxDn='"..tostring(v.SkyboxDn).."'")
printFunction("a.SkyboxFt='"..tostring(v.SkyboxFt).."'")
printFunction("a.SkyboxLf='"..tostring(v.SkyboxLf).."'")
printFunction("a.SkyboxRt='"..tostring(v.SkyboxRt).."'")
printFunction("a.SkyboxUp='"..tostring(v.SkyboxUp).."'")
printFunction("a.StarCount="..tostring(v.StarCount))
printFunction("a.Name='"..tostring(v.Name).."'")
end
end
wait(2)
end
for i,v in pairs(game.Lighting.Copy:GetChildren()) do
    copy(v)
end
Clipboard.set(source)
end
 
findLoop(game.Workspace) -- Start the script.
