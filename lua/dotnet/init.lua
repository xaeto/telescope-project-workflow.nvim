local on_create = function(params)
  print(params)
end

local on_created = function(params)
  print(params)
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
