function! PreviousRevision(filename)

    let fullpathname = expand(a:filename.":p")

    let revnumbers = split(system("hg log --template \"{rev}\n\" ".fullpathname))

    "let currentfile = call("file")
    "redir => currentfile
    "    silent file 
    "redir END

    let currentfile=expand("%")

    let returnnext=0
    for revno in revnumbers
        if returnnext ==# 1
            " last time was a match; return this revision
            return revno
        endif
        if (match(currentfile, revno) > 0)
            " we want the NEXT revision
            let returnnext=1
            "let blah= "I matched ".revno." in ".currentfile
            "return blah
        endif
    endfor
    "echo "This is a test ".currentfile." and it looks like it failed."

    return revnumbers[0]
endfunction
"hg log --template "{rev}\n" pyspeckit/spectrum/models/formaldehyde.py
"hg cat -r rev filename
"rename buffer: :file


function! OpenRevisionNumber(filename, revno)

    split
    enew
    read hg cat -r rev filename

endfunction

"winnr() gets current window number
"http://stackoverflow.com/questions/6435792/check-if-vim-split-window-is-most-bottom-most-right
"
" SERIOUSLY?! http://vim.wikia.com/wiki/Deleting_a_buffer_without_closing_the_window
