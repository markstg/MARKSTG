--[[
BY MARKS 
DEV @P_PPPP
CH > @MARKS_TEAM
CH > @LE_C4_KR
--]]
--------------------------------------

sudo_MARKSTG = dofile("sudo.lua")
https = require("ssl.https")
JSON = dofile("./libs/JSON.lua")
local MARKSTG_dev = io.open("MARKSTG_online.lua")
if MARKSTG_dev then
MARKSTG_on = {string.match(MARKSTG_dev:read('*all'), "^(.*)/(%d+)")}
local MARKSTG_file = io.open("sudo.lua", 'w')
MARKSTG_file:write("token = '" ..MARKSTG_on[1].."'\n\nsudo_add = "..MARKSTG_on[2].."" )
MARKSTG_file:close()
https.request("https://api.telegram.org/bot"..MARKSTG_on[1].."/sendMessage?chat_id="..MARKSTG_on[2].."&text=Bot_MARKSTG_is_start_new")
os.execute('cd .. && rm -rf .telegram-cli')
os.execute('rm -rf MARKSTG_online.lua')  
os.execute('./tg -s ./MARKSTG.lua $@ --bot='..MARKSTG_on[1])
end
function chack(tokenCk)
local getme = "https://api.telegram.org/bot" ..tokenCk.. '/getme'
local req = https.request(getme)
local data = JSON:decode(req)
if data.ok == true then
print("\27[31m✓ تم\27[m \27[1;34m»»ارسل ايدي المطور الاساسي««\27[m")
local sudo_send  = io.read()
print("\27[31m✓ تم\27[m")
local MARKSTG_file = io.open("sudo.lua", 'w')
MARKSTG_file:write("token = '" ..tokenCk.."'\n\nsudo_add = "..sudo_send.."" )
MARKSTG_file:close()
os.execute('cd .. && rm -fr .telegram-cli')
os.execute('cd && rm -fr .telegram-cli')
os.execute('./tg -s ./MARKSTG.lua $@ --bot='..tokenCk)
else
print("\27[31m»»التوكن غير صحيح , اعد ارسال التوكن««\27[m")
local token_send = io.read()
chack(token_send)
end
end
os.execute('cd .. && rm -rf .telegram-cli')
if token and token == "TOKEN" then 
print("\27[1;34m»»ارسل توكن البوت««\27[m")
local token_send = io.read()
chack(token_send)
else 
os.execute('cd .. && rm -fr .telegram-cli')
os.execute('cd && rm -fr .telegram-cli')
sudo_MARKSTG = dofile("sudo.lua")
local getme = "https://api.telegram.org/bot" ..token.. '/getme'
local req = https.request(getme)
local data = JSON:decode(req)
if data.ok == true then
os.execute('./tg -s ./MARKSTG.lua $@ --bot='..token)
else
print("\27[31mالتوكن غير صيح , اعد ارسال التوكن««\27[m")
local token_send = io.read()
chack(token_send)
end
end
--[[
BY MARKS 
DEV @P_PPPP
CH > @MARKS_TEAM
CH > @LE_C4_KR
--]]
--------------------------------------