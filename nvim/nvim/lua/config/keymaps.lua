vim.keymap.set("n", "<leader>|", ":vsplit<CR>", { desc = "|" })

vim.keymap.set("n", "<C-z>", "u", {
    desc = "back"
})
vim.keymap.set("n", "<C-S-z>", "<C-r>", {
    desc = "back!"
})

local function smart_end()
  local col = vim.fn.col(".")       
  local line = vim.fn.getline(".")  
  if col < #line then

    vim.cmd("normal! $")
  else

    vim.cmd("normal! j$")
  end
end

vim.keymap.set("n", "<S-e>", smart_end, { desc = "Smart end of line or next line" })

vim.keymap.set("n", "<C-s>", ":w<CR>", { desc = "Save file" })
