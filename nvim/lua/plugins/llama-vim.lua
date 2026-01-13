return {
  {
    "ggml-org/llama.vim",
    init = function()
      -- Global configuration for llama.vim
      vim.g.llama_config = {
        -- Point to your llama.cpp server
        endpoint = "http://serveur-llm.enib.fr:8012/infill",

        -- Optional: tweak behavior to taste
        auto_fim = true,      -- enable Fill-In-the-Middle completions
        show_info = false,     -- inline status/info messages
        max_completions = 1,  -- single suggestion per request
        -- Keyboard shortcuts
        -- keymap_trigger:     keymap to trigger the completion, default: <C-F>
        -- keymap_accept_full: keymap to accept full suggestion, default: <Tab>
        -- keymap_accept_line: keymap to accept line suggestion, default: <S-Tab>
        -- keymap_accept_word: keymap to accept word suggestion, default: <C-B> 
        keymap_trigger = "<C-F>",
        keymap_accept_full = "<Space-Tab>",
        keymap_accept_line = "<S-Tab>",
        keymap_accept_word = "<C-B>",
        -- print files
      }
    end,
  },
}

--return {
--    "ggml-org/llama.vim",
--    lazy = false,
--    config = function()
--        vim.cmd("runtime plugin/llama.vim")
--        vim.g.llama_config.endpoint = "http://serveur-llm.enib.fr:8012/infill"
--
--    end,
--}
