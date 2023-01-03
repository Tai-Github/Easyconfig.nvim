if not G.neovide then return end

-- Config
G.neovide_scale_factor = 1.2
-- G.neovide_scroll_animation_length = 0.5
-- G.neovide_fullscreen = true
G.neovide_remember_window_size = true
G.neovide_cursor_vfx_mode = "ripple"

-- Scale on runtime
CMD[[
  function! ChangeScaleFactor(delta)
    let g:neovide_scale_factor = g:neovide_scale_factor * a:delta
  endfunction

  nnoremap <expr><M-=> ChangeScaleFactor(1.25)
  nnoremap <expr><M--> ChangeScaleFactor(1/1.25)
]]
