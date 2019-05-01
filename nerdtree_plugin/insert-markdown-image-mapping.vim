" 2018 René Michalke

call NERDTreeAddKeyMap({
    \ 'key': 'ii',
    \ 'callback': 'NERDTreeInsertMarkdownImage',
    \ 'quickhelpText': 'Insert markdown tag of image' })

function! NERDTreeInsertMarkdownImage()
    let n=g:NERDTreeFileNode.GetSelected()
    if n!={}
			" get full path and name
			let full_path = n.path.str()
			" only basename
			let basename = system("basename \"".full_path."\"")
			" remove newline
			let basename = substitute(basename, '\n', '', 'g')
			" put it in a register
      let @i = '![](img/'.basename.' "")'
			" put content of register into document
      normal p"ip2o
    endif
endfunction
