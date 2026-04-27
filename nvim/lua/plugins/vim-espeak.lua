return {
    {
        "wolandark/vim-espeak",
        lazy = false,
        init = function()
            vim.g.espeak_config = {
                espeak = 'espeak -v en'
            }
        end,
    },
    vim.keymap.set("n", "tw", ":call SpeakWord()<CR>", { silent = true, desc = "Speak word" }),
    vim.keymap.set("n", "tc", ":call SpeakCurrentLine()<CR>", { silent = true, desc = "Speak line" }),
    vim.keymap.set("n", "tp", ":call SpeakCurrentParagraph()<CR>", { silent = true, desc = "Speak paragraph" }),
    vim.keymap.set("n", "tf", ":call SpeakCurrentFile()<CR>", { silent = true, desc = "Speak whole current file" }),
    vim.keymap.set("v", "tv", ":call SpeakVisualSelection()<CR>", { silent = true, desc = "Speak visual selection" }),
}
