local Path = require('plenary.path')
local utils = require('telescope._extensions.template_actions.utils')

local on_create = function(method, params)
  params.cwd = params.projectName
  utils.create_dir(params.projectName)
  utils.set_method_args(method, params)
end

local on_created = function(method, params)
  print('created')
end

local create_new_project = {
  executable = "/usr/bin/dotnet",
  text = "New C# Project",
  params = { "projectDir", "projectName", "projectType" },
  args = { "new", "projectType" },
  pre = on_create,
  post = on_created,
}

return {
  name = "C# .NET 6",
  methods = {
    create_new_project
  }
}
