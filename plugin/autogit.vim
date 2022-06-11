au BufReadPost * if search("test", "nw") > 0 | call SetVar() | endif

function SetVar()
    b:test = 1
    echom "hi"
endfunction 
