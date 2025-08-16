vim.keymap.set("n", "<leader>|", ":vsplit<CR>", { desc = "|" })

vim.keymap.set("n", "<C-z>", "u", {
    desc = "back"
})
vim.keymap.set("n", "<C-S-z>", "<C-r>", {
    desc = "back!"
})


vim.keymap.set("n", "<C-s>", ":w<CR>", { desc = "Save file" })
