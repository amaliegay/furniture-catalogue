local common = require("JosephMcKean.furnitureCatalogue.common")
local log = common.createLogger("main")

local function onInit()
	event.register("loaded", function()
		tes3.player.data.furnitureCatalogue = tes3.player.data.furnitureCatalogue or {}
	end)
	require("JosephMcKean.furnitureCatalogue.catalogue")
	require("JosephMcKean.furnitureCatalogue.delivery")
	require("JosephMcKean.furnitureCatalogue.tooltip")
	require("JosephMcKean.furnitureCatalogue.interop")
end
event.register("initialized", onInit, { priority = 551 })

require("JosephMcKean.furnitureCatalogue.mcm")