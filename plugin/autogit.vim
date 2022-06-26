augroup autogit
    au!
    au BufRead * if search("+GIT"."PULL", "nw") > 0 | call GitPull() | endif
    au BufWritePost * if search("+GIT"."PUSH", "nw") > 0 | call GitPush() | endif
augroup END


function GitPull()
    let dir = expand('%:p:h')
    let cmd = 'git -C '.dir.' pull'
    let status = system(l:cmd)
    let t = stridx(status, "Already up to date.")
    if t == -1
        let tt = stridx(status, "There is no tracking information for the current branch.")
        if tt == -1
            exe "e"
        endif
    endif
endfunction

function GitPush()
    let dir = expand('%:p:h')
    let file = expand('%:p')

    let cmd = 'git -C '.dir.' add '.file
    let status = system(l:cmd)

    let cmd = 'git -C '.dir.' commit -m "AutoGit Push"'
    let status = system(l:cmd)

    let cmd = 'git -C '.dir.' push'
    let status = system(l:cmd)

    let t = stridx(status, "Already up to date.")
    if t == -1
        let tt = stridx(status, "There is no tracking information for the current branch.")
        if tt == -1
        endif
    endif
endfunction
