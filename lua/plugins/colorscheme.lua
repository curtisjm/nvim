local transparentTokyoNightMoon = {
	"folke/tokyonight.nvim",
	priority = 1000,
	opts = {
		transparent = true,
		styles = {
			sidebars = "transparent",
			floats = "transparent",
		},
	},
}

local tokyoNightNight = {
	"folke/tokyonight.nvim",
	opts = {
		style = "night",
	},
}

local transparentTokyoNightNight = {
	"folke/tokyonight.nvim",
	opts = {
		transparent = true,
		style = "night",
		styles = {
			sidebars = "transparent",
			floats = "transparent",
		},
	},
}

local nordic = {
	"AlexvZyl/nordic.nvim",
}

local rosePine = {
	"rose-pine/neovim",
	name = "rose-pine",
}

return {
	{
		"catppuccin/nvim",
		priority = 1000,
		name = "catppuccin",
		opts = {
			transparent = true,
			styles = {
				sidebars = "transparent",
				floats = "transparent",
			},
			transparent_background = true,
			-- on_colors = function(colors)
			-- 	colors.bg_statusline = "NONE"
			-- end,
			integrations = {
				aerial = true,
				alpha = true,
				cmp = true,
				dashboard = true,
				flash = true,
				fzf = true,
				grug_far = true,
				gitsigns = true,
				headlines = true,
				illuminate = true,
				indent_blankline = { enabled = true },
				leap = true,
				lsp_trouble = true,
				mason = true,
				markdown = true,
				mini = true,
				native_lsp = {
					enabled = true,
					underlines = {
						errors = { "undercurl" },
						hints = { "undercurl" },
						warnings = { "undercurl" },
						information = { "undercurl" },
					},
				},
				navic = { enabled = true, custom_bg = "lualine" },
				neotest = true,
				neotree = true,
				noice = true,
				notify = true,
				semantic_tokens = true,
				snacks = true,
				telescope = true,
				treesitter = true,
				treesitter_context = true,
				which_key = true,
			},
		},
	},
	specs = {
		{
			"akinsho/bufferline.nvim",
			optional = true,
			opts = function(_, opts)
				if (vim.g.colors_name or ""):find("catppuccin") then
					opts.highlights = require("catppuccin.groups.integrations.bufferline").get()
				end
			end,
		},
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "catppuccin",
		},
	},
}

--     {
-- 	{
-- 		"LazyVim/LazyVim",
-- 		opts = {
-- 			colorscheme = "catppuccin",
-- 		},
-- 	},
-- 	{
-- 		"catppuccin/nvim",
-- 		lazy = true,
-- 		name = "catppuccin",
-- 		opts = {
-- 			integrations = {
-- 				aerial = true,
-- 				alpha = true,
-- 				cmp = true,
-- 				dashboard = true,
-- 				flash = true,
-- 				fzf = true,
-- 				grug_far = true,
-- 				gitsigns = true,
-- 				headlines = true,
-- 				illuminate = true,
-- 				indent_blankline = { enabled = true },
-- 				leap = true,
-- 				lsp_trouble = true,
-- 				mason = true,
-- 				markdown = true,
-- 				mini = true,
-- 				native_lsp = {
-- 					enabled = true,
-- 					underlines = {
-- 						errors = { "undercurl" },
-- 						hints = { "undercurl" },
-- 						warnings = { "undercurl" },
-- 						information = { "undercurl" },
-- 					},
-- 				},
-- 				navic = { enabled = true, custom_bg = "lualine" },
-- 				neotest = true,
-- 				neotree = true,
-- 				noice = true,
-- 				notify = true,
-- 				semantic_tokens = true,
-- 				snacks = true,
-- 				telescope = true,
-- 				treesitter = true,
-- 				treesitter_context = true,
-- 				which_key = true,
-- 			},
-- 		},
-- 		specs = {
-- 			{
-- 				"akinsho/bufferline.nvim",
-- 				optional = true,
-- 				opts = function(_, opts)
-- 					if (vim.g.colors_name or ""):find("catppuccin") then
-- 						opts.highlights = require("catppuccin.groups.integrations.bufferline").get()
-- 					end
-- 				end,
-- 			},
-- 		},
-- 	},
-- }

-- return {}
