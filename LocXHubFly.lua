local http_request = syn and syn.request or request;
local hwidPaste = loadstring(game:HttpGet("https://raw.githubusercontent.com/dloc0403/main/main/hwid.txt"))()

local body = http_request({Url = 'https://httpbin.org/get'; Method = 'GET'}).Body;
local hwid = decoded.headers['Syn-Fingerprint']

for i, v in pairs(hwidPaste) do
	if v == hwid then
		print("Whitelist")
	else
		print("Not Whitelist")
	end
end
