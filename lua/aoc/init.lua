local function run(file)
  local file
  if file == nil then
    file = vim.fn.expand('%:p')
  end
  print(file)
  vim.cmd(':vsplit | terminal')
  local command = ':call jobsend(b:terminal_job_id, "lua ' .. file .. '\\n")'
  vim.cmd(command)
end

return {
  run = run
}
