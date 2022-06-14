augroup autopull
    au!
    au BufRead * if search("test", "nw") > 0 | call GitPull() | endif
augroup END


function GitPull()
    let dir = expand('%:p:h')
    let cmd = '!git -C '.dir.' pull'
    let status = system(cmd)
    let t = stridx(status, "Already up to date.")
    if t == -1
        let tt = stridx(status, "There is no tracking information for the current branch.")
        if tt == -1
            exe e
        endif
    endif
endfunction

function GitPush()
    let dir = expand('%:p:h')
    let cmd = '!git -C '.dir.' pull'
    echom cmd
    let status = system(cmd)
    let t = stridx(status, "Already up to date.")
    if t == -1
        let tt = stridx(status, "There is no tracking information for the current branch.")
        if tt == -1
        endif
    endif
endfunction

function SetVar()
    let b:test = 1
    echom "hi"
endfunction 
