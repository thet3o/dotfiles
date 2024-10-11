return {
    "nvim-tree/nvim-web-devicons",
    config = function() 
	local webdevicons = require("nvim-web-devicons")
	webdevicons.setup({
	    color_icons = true,
	})
    end,
}
