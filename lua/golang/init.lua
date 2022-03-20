local utils = require "telescope._extensions.template_actions.utils"

local on_create_project = function(method, params)
  utils.create_dir(params.projectDir)
  params.cwd = params.projectDir
  utils.set_method_args(method, params)
end

local on_project_created = function(method, params) end

local create_project = {
  executable = "go",
  text = "Create Project",
  params = { "projectDir", "moduleName" },
  args = { "mod", "init", "moduleName" },
  pre = on_create_project,
  post = on_project_created,
}

return {
  name = "Golang",
  methods = {
    create_project,
  },
}
