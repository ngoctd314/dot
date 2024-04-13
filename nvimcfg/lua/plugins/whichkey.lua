return {
	"folke/which-key.nvim",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 0
	end,
	config = function()
		local wk = require("which-key")
		wk.register({
			e = { "<cmd>NvimTreeToggle<cr>", "Toggle Explorer" },
			f = {
				name = "Find", -- optional group name
				f = { "<cmd>Telescope find_files<cr>", "Find File" },
				g = { "<cmd>Telescope live_grep<cr>", "Live Grep" },
				b = { "<cmd>Telescope buffers<cr>", "Buffers" },
				o = { "<cmd>Telescope oldfiles<cr>", "Old Files" },
				z = { "<cmd>Telescope current_buffer_fuzzy_find<cr>", "Current File Fuzz" },
			},
		}, { prefix = "<leader>" })
	end,
}
