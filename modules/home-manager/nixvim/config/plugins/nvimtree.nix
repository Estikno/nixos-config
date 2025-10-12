{
  keymaps = [
    {
      mode = "n";
      action = "<cmd>NvimTreeFindFileToggle<CR>";
      key = "<C-n>";
      options = {
        silent = true;
      };
    }
    {
      mode = "n";
      action = "<cmd>NvimTreeFindFileToggle<CR>";
      key = "<leader>e";
      options = {
        silent = true;
      };
    }
  ];
  plugins.nvim-tree = {
    enable = true;
    settings = {
      # autoClose = false;
      # openOnSetup = true;

      sync_root_with_cwd = true;
      respect_buf_cwd = true;
      update_focused_file = {
        enable = true;
        update_root = true;
      };
      git.enable = true;
      actions = {
        open_file.quit_on_open = true;
      };
      view = {
        side = "left";
        signcolumn = "no";
        preserve_window_proportions = true;
        float = {
          open_win_config = {
            col = 1;
            row = 1;
            relative = "editor";
            border = "rounded";
            #style = "minimal";
          };
        };
      };
      on_attach.__raw = ''
        function(bufnr)
          local api = require("nvim-tree.api")

          local function opts(desc)
            return {
              desc = "nvim-tree: " .. desc,
              buffer = bufnr,
              noremap = true,
              silent = true,
              nowait = true
            }
          end

          -- load default mappings
          api.config.mappings.default_on_attach(bufnr)

          -- custom ones
          vim.keymap.set("n", "l", api.node.open.edit, opts("Open"))
          vim.keymap.set("n", "h", api.node.navigate.parent_close, opts("Close Directory"))
        end
      '';
    };

  };
}
