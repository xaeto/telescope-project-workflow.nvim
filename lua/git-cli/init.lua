local set_cwd = function(method, params)
  params.cwd = "."
end

local init_repo = {
  text = "Initialize Repository",
  executable = "git",
  args = { "init" },
  pre = set_cwd,
  post = function() end,
}

return {
  name = "Git",
  methods = {
    init_repo,
  },
}
