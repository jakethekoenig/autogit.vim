au BufRead * if search("test", "nw") > 0 | call SetVar() | endif

function SetVar()
    let b:test = 1
    echom "hi"
endfunction 
