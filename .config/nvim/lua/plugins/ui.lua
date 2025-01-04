return {
-- animations
{
  "echasnovski/mini.animate",
  event = "VeryLazy",
  opts = function(_, opts)
    opts.scroll = {
      enable = false,
    }
  end,
},
-- Icon provider
	{
		'echasnovski/mini.icons',
		lazy = true,
		opts = {
			file = {
				['.keep'] = { glyph = '󰊢', hl = 'MiniIconsGrey' },
				['devcontainer.json'] = { glyph = '', hl = 'MiniIconsAzure' },
			},
			filetype = {
				dotenv = { glyph = '', hl = 'MiniIconsYellow' },
			},
		},
		init = function()
			---@diagnostic disable-next-line: duplicate-set-field
			package.preload['nvim-web-devicons'] = function()
				require('mini.icons').mock_nvim_web_devicons()
				return package.loaded['nvim-web-devicons']
			end
		end,
	},
	{
		"folke/snacks.nvim",
		opts = {
			dashboard = {
				preset = {
					header = [[
	███████╗███████╗███╗   ██╗ ██████╗ ███████╗⚡
	╚══███╔╝██╔════╝████╗  ██║██╔═══██╗██╔════╝⚡
	  ███╔╝ █████╗  ██╔██╗ ██║██║   ██║███████╗⚡
	 ███╔╝  ██╔══╝  ██║╚██╗██║██║   ██║╚════██║⚡
	███████╗███████╗██║ ╚████║╚██████╔╝███████║⚡
	╚══════╝╚══════╝╚═╝  ╚═══╝ ╚═════╝ ╚══════╝ 
   ]],
				},
			},
		},
	},
}
