return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons", -- ファイルアイコンを表示するために必要
	},
	config = function()
		-- nvim-treeのセットアップ（必須）
		require("nvim-tree").setup({
			-- ここに細かい設定を書けますが、まずはデフォルトで空にしておきます
			sort = {
				sorter = "case_sensitive",
			},
			view = {
				width = 30,
			},
			renderer = {
				group_empty = true,
			},
			filters = {
				dotfiles = true,
			},
		})

		-- キーマッピングの設定
		-- <Leader> + e でツリーを開閉（トグル）する
		local api = require("nvim-tree.api")
		vim.keymap.set("n", "<Leader>e", api.tree.toggle, { desc = "Toggle NvimTree" })
	end,
}
