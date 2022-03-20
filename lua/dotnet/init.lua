local utils = require "telescope._extensions.template_actions.utils"

local on_create_project = function(method, params)
  params.cwd = params.projectName
  utils.create_dir(params.projectName)
  utils.set_method_args(method, params)
end

local on_project_created = function(method, params)
  print "created"
end

local on_create_solution = function(method, params)
  params.cwd = params.projectDir
  utils.create_dir(params.projectDir)
end

local on_solution_created = function(method, params)
  print "solution has been created"
end

local create_new_project = {
  executable = "/usr/bin/dotnet",
  text = "New C# Console Project",
  params = { "projectDir", "projectName" },
  args = { "new", "console" },
  pre = on_create_project,
  post = on_project_created,
}

local create_new_solution = {
  executable = "/usr/bin/dotnet",
  text = "New C# Solution",
  params = { "projectDir" },
  args = { "new", "sln" },
  pre = on_create_solution,
  post = on_solution_created,
}

return {
  name = "C# .NET 6",
  methods = {
    create_new_project,
    create_new_solution,
  },
}
