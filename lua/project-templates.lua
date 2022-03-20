local plenary = require "plenary"
local utils = require "telescope._extensions.template_actions.utils"

local dirs = {
  ["dotnet6"] = "dotnet",
}

local setup = function()
  for _, preset in pairs(dirs) do
    local template = require(preset)
    utils.insert_template(template)
  end
end

return {
  setup = setup,
}
