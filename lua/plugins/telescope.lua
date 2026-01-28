return {
	"nvim-telescope/telescope.nvim",
	dependencies = { 
		"nvim-lua/plenary.nvim", -- 必須の依存ライブラリ
		{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
	},
	config = function()
		local builtin = require("telescope.builtin")

		-- キーマッピングの設定
		-- <Space> + ff で「ファイル名検索」
		vim.keymap.set("n", "<Leader>ff", builtin.find_files, { desc = "Find Files" })

		-- <Space> + f で「ファイル内文字検索 (Grep)」
		vim.keymap.set("n", "<Leader>f", builtin.live_grep, { desc = "Live Grep" })

		-- <Space> + fb で「開いているバッファ検索」
		vim.keymap.set("n", "<Leader>fb", builtin.buffers, { desc = "Find Buffers" })

		-- <Space> + fh で「ヘルプ検索」
		vim.keymap.set("n", "<Leader>fh", builtin.help_tags, { desc = "Find Help" })
	end,
}
