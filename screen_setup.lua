
local awful = require("awful")

local tags = {
	{
			name = "vm",
	--	    icon               = "/path/to/icon1.png",
		    layout             = awful.layout.suit.max,
		    gap_single_client  = true,
		    selected           = true,
	},
	{
			name = "rambox",
	--	    icon               = "/path/to/icon1.png",
		    layout             = awful.layout.suit.max,
		    gap_single_client  = true,
	},
	{
			name = "notes",
	--	    icon               = "/path/to/icon1.png",
		    layout             = awful.layout.suit.max,
		    gap_single_client  = true,
	},
	{
			name = "www",
	--	    icon               = "/path/to/icon1.png",
		    layout             = awful.layout.suit.max,
		    gap_single_client  = true,
	},
	{
			name = "email",
	--	    icon               = "/path/to/icon1.png",
		    layout             = awful.layout.suit.magnifier,
		    gap_single_client  = true,
	},
	{
			name = "terms",
	--	    icon               = "/path/to/icon1.png",
		    layout             = awful.layout.suit.corner.nw,
		    gap_single_client  = true,
	},
	{
			name = "music",
	--	    icon               = "/path/to/icon1.png",
		    layout             = awful.layout.suit.max,
		    gap_single_client  = true,
	},
	{
			name = "calls",
	--	    icon               = "/path/to/icon1.png",
		    layout             = awful.layout.suit.corner.nw,
		    gap_single_client  = true,
	},
}


-- add a scratchpad tags for each screen
for i=1,screen.count() do

	t_name = "scratchpad"
	if screen.count() > 1 then
		t_name = t_name .. i
	end

	t = {
			name = t_name,
	--	    icon               = "/path/to/icon1.png",
		    layout             = awful.layout.suit.corner.nw,
		    gap_single_client  = true,
		    gap                = 5,
	}

	if i==1 then
		table.insert(tags, 7, t)
	else
		table.insert(tags, t)
	end
end

local tags_by_name = {}
for _,t in ipairs(tags) do
	tags_by_name[t.name] = t
	print("tag " .. _ .. ":" .. t.name)
end


local tags_for_screen = {}
if screen.count() == 2 then
	tags_by_name.music.selected = true
	tags_for_screen[1] = { tags_by_name.vm, tags_by_name.rambox, tags_by_name.notes, tags_by_name.www, tags_by_name.email, tags_by_name.terms, tags_by_name.scratchpad1 }
	tags_for_screen[2] = { 	tags_by_name.music, tags_by_name.calls, tags_by_name.scratchpad2 }
else
	tags_for_screen[1] = tags
end

return {
	tags = tags,
	tags_by_name = tags_by_name,
	tags_for_screen = tags_for_screen	
}
