-- Neo-tree configuration to show hidden files by default
-- This configuration will be applied when Neovim starts in this project directory

-- Function to configure Neo-tree with custom settings
function _G.configure_neo_tree()
  if vim.fn.exists(":Neotree") == 2 then
    -- Configure Neo-tree to show hidden files by default
    vim.cmd([[
      let g:neo_tree_filesystem_settings = {
        \ 'filtered_items': {
        \   'hide_dotfiles': v:false,
        \   'hide_gitignored': v:true,
        \   'hide_hidden': v:true
        \ }
      \ }
    ]])
  end
end

-- Call the configuration function
configure_neo_tree()