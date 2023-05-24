local _, cph = pcall(require, 'competitest')
if not _ then return end

cph.setup {
  compile_command = {
    cpp = { exec = "g++", args = { "-Wall", "$(FNAME)", "-o", "./competitest/$(FNOEXT)" } }
  },
  run_command = {
    cpp = { exec = "./competitest/$(FNOEXT)" },
  },
  testcases_directory = "./competitest",
  testcases_use_single_file = true,
  testcases_single_file_format = "$(FNOEXT).test",
}
