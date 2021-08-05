-- Check is installed
local install_path = DATA_PATH..'/site/pack/packer/start/vim-signify'
if FN.empty(FN.glob(install_path)) > 0 then
  return
end

-- Set signifyi signs
G.signify_sign_add               = '+'
G.signify_sign_delete            = '-'
G.signify_sign_delete_first_line = '‾'
G.signify_sign_change            = '~'
