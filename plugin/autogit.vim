augroup autopull
    au!
    au BufRead * if search("test", "nw") > 0 | call GitPull() | endif
augroup END


function GitPull()
    let dir = expand('%:p:h')
    let cmd = '!git -C '.dir.' status'
    echom cmd
    exe cmd
endfunction

function SetVar()
    let b:test = 1
    echom "hi"
endfunction 
