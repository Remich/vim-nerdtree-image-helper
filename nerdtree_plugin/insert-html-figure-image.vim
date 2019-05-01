call NERDTreeAddKeyMap({
        \ 'key': '<leader>ifcn',
        \ 'callback': 'NERDTreeInsertFigureCaptionNormal',
        \ 'quickhelpText': '' })

call NERDTreeAddKeyMap({
        \ 'key': '<leader>ifcl',
        \ 'callback': 'NERDTreeInsertFigureCaptionLeft',
        \ 'quickhelpText': '' })

call NERDTreeAddKeyMap({
        \ 'key': '<leader>ifcr',
        \ 'callback': 'NERDTreeInsertFigureCaptionRight',
        \ 'quickhelpText': '' })

call NERDTreeAddKeyMap({
        \ 'key': '<leader>ifn',
        \ 'callback': 'NERDTreeInsertFigureNormal',
        \ 'quickhelpText': '' })

call NERDTreeAddKeyMap({
        \ 'key': '<leader>ifl',
        \ 'callback': 'NERDTreeInsertFigureLeft',
        \ 'quickhelpText': '' })

call NERDTreeAddKeyMap({
        \ 'key': '<leader>ifr',
        \ 'callback': 'NERDTreeInsertFigureRight',
        \ 'quickhelpText': '' })

" ifn = insert figure normal
" ifl = insert figure left
" ifr = insert figure right
" ifcn = insert figure caption normal
" ifcl = insert figure caption left
" ifcr = insert figure caption right

function! NERDTreeGetCurrentNode()
	let n = g:NERDTreeFileNode.GetSelected()
	if n != {}
		" get full path and name
		let full_path = n.path.str()
		" " only basename
		let basename = system("basename \"".full_path."\"")
		" " remove newline
		let basename = substitute(basename, '\n', '', 'g')
		" preprend img
		let basename = 'img/'.basename

		return basename
	endif
endfunction

function! NERDTreeInsertFigureCaptionNormal()
	let basename = NERDTreeGetCurrentNode()
	" switch to previous window	
	wincmd p
	" insert snippet trigger
	execute "normal! ifigc "
	" expand snippet
	call UltiSnips#ExpandSnippet()
	" insert image path
	execute "normal! i".basename
endfunction

function! NERDTreeInsertFigureCaptionLeft()
	let basename = NERDTreeGetCurrentNode()
	" switch to previous window	
	wincmd p
	" insert snippet trigger
	execute "normal! ifigcl "
	" expand snippet
	call UltiSnips#ExpandSnippet()
	" insert image path
	execute "normal! i".basename
endfunction

function! NERDTreeInsertFigureCaptionRight()
	let basename = NERDTreeGetCurrentNode()
	" switch to previous window	
	wincmd p
	" insert snippet trigger
	execute "normal! ifigcr "
	" expand snippet
	call UltiSnips#ExpandSnippet()
	" insert image path
	execute "normal! i".basename
endfunction

function! NERDTreeInsertFigureNormal()
	let basename = NERDTreeGetCurrentNode()
	" switch to previous window	
	wincmd p
	" insert snippet trigger
	execute "normal! ifign "
	" expand snippet
	call UltiSnips#ExpandSnippet()
	" insert image path
	execute "normal! i".basename
	" jump forward
	call UltiSnips#JumpForwards()
	" back to normal mode
	stopinsert
endfunction

function! NERDTreeInsertFigureLeft()
	let basename = NERDTreeGetCurrentNode()
	" switch to previous window	
	wincmd p
	" insert snippet trigger
	execute "normal! ifigl "
	" expand snippet
	call UltiSnips#ExpandSnippet()
	" insert image path
	execute "normal! i".basename
	" back to normal mode
	stopinsert
endfunction

function! NERDTreeInsertFigureRight()
	let basename = NERDTreeGetCurrentNode()
	" switch to previous window	
	wincmd p
	" insert snippet trigger
	execute "normal! ifigr "
	" expand snippet
	call UltiSnips#ExpandSnippet()
	" insert image path
	execute "normal! i".basename
	" back to normal mode
	stopinsert
endfunction
