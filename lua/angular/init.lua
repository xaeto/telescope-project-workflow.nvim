local utils = require "telescope._extensions.template_actions.utils"

local create_component = {
  executable = "ng",
  text = "New Angular Component",
  params = { "componentName" },
  args = { "generate", "component", "componentName" },
  pre = on_create_project,
  post = on_project_created,
}

local on_create_component = function(method, params) end

local on_component_created = function(method, params) end

return {
  name = "Angular",
  methods = {
    create_component,
  },
}
