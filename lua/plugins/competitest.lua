local _, cph = pcall(require, 'competitest')
if not _ then return end

local test_dir = '.cpt'

cph.setup {
  compile_command = {
    cpp = { exec = "g++", args = { "-Wall", "$(FNAME)", "-o", "./"..test_dir.."/$(FNOEXT)" } }
  },
  run_command = {
    cpp = { exec = "./"..test_dir.."/$(FNOEXT)" },
  },
  testcases_directory = "./"..test_dir,
  testcases_use_single_file = true,
  testcases_single_file_format = "$(FNOEXT).test",
}

KEYMAP('n', '<leader>ta', ':CompetiTest add_testcase<CR>', OPTION1)
KEYMAP('n', '<leader>tr', ':CompetiTest run<CR>', OPTION1)
KEYMAP('n', '<leader>to', ':CompetiTest show_ui<CR>', OPTION1)
KEYMAP('n', '<leader>te', ':CompetiTest edit_testcase ', OPTION1)
KEYMAP('n', '<leader>td', ':CompetiTest delete_testcase ', OPTION1)
