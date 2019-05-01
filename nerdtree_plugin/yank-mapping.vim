" source: https://stackoverflow.com/questions/16368771/copy-path-file-with-nerdtree-vim-plugin

call NERDTreeAddKeyMap({
        \ 'key': 'yy',
        \ 'callback': 'NERDTreeYankCurrentNode',
        \ 'quickhelpText': 'put full path of current node into the default register' })


call NERDTreeAddKeyMap({
        \ 'key': '<leader>yb',
        \ 'callback': 'NERDTreeYankCurrentNodeBasename',
        \ 'quickhelpText': 'put img+basename of current node into the default register' })

function! NERDTreeYankCurrentNode()
    let n = g:NERDTreeFileNode.GetSelected()
    if n != {}
        call setreg('+', n.path.str())
    endif
endfunction

function! NERDTreeYankCurrentNodeBasename()
    let n = g:NERDTreeFileNode.GetSelected()
    if n != {}

			" get full path and name
			" let full_path = n.path.str()
			" " only basename
			" let basename = system("basename \"".full_path."\"")
			" " remove newline
			" let basename = substitute(basename, '\n', '', 'g')
			" " put it in default register
      " let @+ = 'img/'.basename

			" echo 'yanked img/'.basename.' into default register +'

			wincmd p
			execute "normal! i fig "
			call UltiSnips#ExpandSnippet()
    endif
endfunction
