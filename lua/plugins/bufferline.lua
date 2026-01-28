return {
	'akinsho/bufferline.nvim',
	dependencies = 'nvim-tree/nvim-web-devicons',
	config = function()
		require("bufferline").setup({
			options = {
				-- VSCodeのようにファイル名にアイコンを表示
				offsets = {
					{
						filetype = "NvimTree",
						text = "File Explorer",
						text_align = "left",
						separator = true
					}
				},
				-- アクティブなタブの見た目などのカスタマイズ（任意）
				show_buffer_close_icons = true,
				show_close_icon = true,
			}
		})

		-- ファイルを切り替えるためのショートカット
		-- Tab で右のファイル、Shift + Tab で左のファイルへ
		vim.keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", { desc = "Next buffer" })
		vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", { desc = "Prev buffer" })
	end
}
