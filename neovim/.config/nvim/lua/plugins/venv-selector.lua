return {
  'linux-cultist/venv-selector.nvim',
  dependencies = { 
	  'neovim/nvim-lspconfig', 
	  'nvim-telescope/telescope.nvim', 
	  'mfussenegger/nvim-dap-python',
  },
  opts = {
    -- Your options go here
    -- name = "venv",
    auto_refresh = true,
    search_venv_managers = true,
    search_workspace = true,
    search = true,
    dap_enabled = true,
    name = {"venv", ".venv"},
    notify_user_on_activate = true,
    stay_in_this_version = false,
    anaconda_base_path = os.getenv("HOME") .. "/Development/tools/miniforge3",
    anaconda_envs_path = os.getenv("HOME") .. "/Development/tools/miniforge3/envs"
  },
  event = 'VeryLazy', -- Optional: needed only if you want to type `:VenvSelect` without a keymapping
  keys = {
    -- Keymap to open VenvSelector to pick a venv.
    { '<leader>vs', '<cmd>VenvSelect<cr>' },
    -- Keymap to retrieve the venv from a cache (the one previously used for the same project directory).
    { '<leader>vc', '<cmd>VenvSelectCached<cr>' },
  },
}
