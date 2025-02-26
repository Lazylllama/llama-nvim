-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("nvim-treesitter.install").prefer_git = false
require("nvim-treesitter.install").compilers = { "clang", "gcc" }

require("neo-tree").setup({
  filesystem = {
    filtered_items = {
      visible = true, -- This is what you want: If you set this to `true`, all "hide" just mean "dimmed out"
      hide_gitignored = false,
      hide_dotfiles = false,
      hide_by_name = {
        ".github",
        "package-lock.json",
        ".changeset",
        ".prettierrc.json",
        "bun.lockb",
        "bun.lock"
      }
    },
  },
})
