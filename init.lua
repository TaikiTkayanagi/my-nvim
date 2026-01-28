-- 1. 全てのヤンク/削除操作を "+" レジスタ（クリップボード用）に紐付けます
vim.opt.clipboard = "unnamedplus"

-- 2. WSL環境かどうかを判定します
if vim.fn.has('wsl') == 1 then
	-- 3. クリップボードの動作をカスタマイズ（上書き）します
	vim.g.clipboard = {
		name = 'OSC 52',  -- 任意の設定名

		-- 4. コピー（ヤンク）時の挙動
		copy = {
			['+'] = require('vim.ui.clipboard.osc52').copy('+'),
			['*'] = require('vim.ui.clipboard.osc52').copy('*'),
		},

		-- 5. 貼り付け（ペースト）時の挙動
		paste = {
			['+'] = require('vim.ui.clipboard.osc52').paste('+'),
			['*'] = require('vim.ui.clipboard.osc52').paste('*'),
		},
	}
end

require("config.lazy")
