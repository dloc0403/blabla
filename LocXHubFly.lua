local http_request = syn and syn.request or request;
local hwidPaste = loadstring(game:HttpGet(""))()

local body = http_request({Url = 'https://httpbin.org/get'; Method = 'GET'}).Body;
local hwid = decoded.headers['Syn-Fingerprint']

for i, v in pairs(hwidPaste) do
	if v == hwid then
		print("Whitelist")
	else
		print("Not Whitelist")
	end
end
