G.neoformat_try_node_exe = true

CMD [[
  augroup fmt
    autocmd!
    autocmd BufWritePre * undojoin | Neoformat
  augroup END
]]
