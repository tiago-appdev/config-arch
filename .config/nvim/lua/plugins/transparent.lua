return {
  "xiyaowong/nvim-transparent",
  lazy = false, -- Cargar al inicio para poder usarlo inmediatamente
  config = function()
    require("transparent").setup({
      enable = true, -- Habilitar transparencia por defecto
      extra_groups = { -- Agrupar para hacer transparentes
        "Normal",
        "NormalNC",
        "Comment",
        "LineNr",
        "Folded",
        "NonText",
        "SpecialKey",
        "VertSplit",
        "SignColumn",
        "StatusLine",
        "StatusLineNC",
        "EndOfBuffer",
      },
      exclude = {}, -- Grupos a excluir
    })

    -- Atajos para cambiar la transparencia
    vim.api.nvim_set_keymap("n", "<leader>te", ":TransparentEnable<CR>", { noremap = true })
    vim.api.nvim_set_keymap("n", "<leader>td", ":TransparentDisable<CR>", { noremap = true })
    vim.api.nvim_set_keymap("n", "<leader>tt", ":TransparentToggle<CR>", { noremap = true })
  end,
}
