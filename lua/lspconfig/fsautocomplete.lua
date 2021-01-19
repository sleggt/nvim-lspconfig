local configs = require 'lspconfig/configs'
local util = require 'lspconfig/util'
local server_name = "fsautocomplete"

configs[server_name] = {
  default_config = {
    filetypes = {"fsharp"};
    root_dir = util.root_pattern("*.fsproj", "*.sln");
    init_options = {
      AutomaticWorkspaceInit = true
    };
  };
  -- on_new_config = function(new_config) end;
  -- on_attach = function(client, bufnr) end;
  docs = {
    description = [[
FsAutocomplete

]];
    default_config = {
      root_dir = [[root_pattern(".fsproj", ".sln")]];
    };
  };
}

-- vim:et ts=2 sw=2
