""""""""""""""""""""""""""
""" Language server commands
""""""""""""""""""""""""""
"function SetLSPShortcuts()
"  nnoremap <silent>gd :LspDefinition<CR>
"  nnoremap <F2> :LspRename<CR>
"  nnoremap <silent>gf :LspDocumentFormat<CR>
"  nnoremap <silent>gr :LspReferences<CR>
"endfunction()

"if executable('clangd')
"    augroup lsp_clangd
"        autocmd!
"        autocmd User lsp_setup call lsp#register_server({
"                    \ 'name': 'clangd',
"                    \ 'cmd': {server_info->['clangd']},
"                    \ 'root_uri': {server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'compile_commands.json'))},
"                    \ 'whitelist': ['c', 'cpp', 'cc', 'objc', 'objcpp'],
"                    \ })
"        autocmd FileType c setlocal omnifunc=lsp#complete
"        autocmd FileType cpp setlocal omnifunc=lsp#complete
"        autocmd FileType objc setlocal omnifunc=lsp#complete
"        autocmd FileType objcpp setlocal omnifunc=lsp#complete
"        autocmd FileType c,cpp,objc,objcpp,cc, call SetLSPShortcuts()
"    augroup end
"endif

"if executable('cquery')
"  augroup LSP
"    autocmd!
"    autocmd FileType cc setlocal omnifunc=lsp#complete
"    au User lsp_setup call lsp#register_server({
"            \ 'name': 'cquery',
"            \ 'cmd': {server_info->['cquery']},
"            \ 'root_uri': {server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'compile_commands.json'))},
"            \ 'initialization_options': { 'cacheDirectory': '/tmp/cquery/cache' },
"            \ 'whitelist': ['hh', 'inl', 'c', 'cpp', 'objc', 'objcpp', 'cc'],
"            \ })
"    autocmd FileType c,cc,cpp,cxx,h,hh,hpp,inl nnoremap <leader>fv :LspCqueryDerived<CR>
"    autocmd FileType c,cc,cpp,cxx,h,hh,hpp,inl nnoremap <leader>fc :LspCqueryCallers<CR>
"    autocmd FileType c,cc,cpp,cxx,h,hh,hpp,inl nnoremap <leader>fb :LspCqueryBase<CR>
"    autocmd FileType c,cc,cpp,cxx,h,hh,hpp,inl nnoremap <leader>fi :LspCqueryVars<CR>
"    autocmd FileType c,cpp,cc nmap gd <plug>(lsp-definition)
"    autocmd FileType c,cpp,cc setlocal omnifunc=lsp#complete
"    "autocmd FileType c,cpp,objc,objcpp,cc, call SetLSPShortcuts()
"   augroup END
"endif


"let g:LanguageClient_autoStart = 1
"let g:LanguageClient_serverCommands = {
"            \ 'cpp': ['/Users/steve/Source/cquery/build/release/bin/cquery',
"            \ '--log-file=/tmp/cq.log',
"            \ '--init={"cacheDirectory":"/Users/steve/.cache/cquery/"}'],
"            \ 'typescript': ['/usr/local/bin/javascript-typescript-stdio'],
"            \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
"            \ 'java': ['/usr/local/bin/jdtls']
"            \ }
"

"imap <C-k> <Plug>(neosnippet_expand_or_jump)
"smap <C-k> <Plug>(neosnippet_expand_or_jump)
"xmap <C-k> <Plug>(neosnippet_expand_target)
