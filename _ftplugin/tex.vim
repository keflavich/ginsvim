let g:Tex_FormatDependency_pdf = 'dvi,ps,pdf'
let g:Tex_CompileRule_dvi = 'latex --interaction=nonstopmode $*'
let g:Tex_CompileRule_ps = 'dvips -Ppdf -o $*.ps $*.dvi'
let g:Tex_CompileRule_pdf = 'ps2pdf $*.ps'
let g:Tex_IgnoredWarnings = 'Underfull'."\n".'Overfull'."\n".'specifier changed to'."\n".'You have requested'."\n".'Missing number, treated as zero.'."\n".'There were undefined references'."\n".'Citation %.%# undefined'."\n".'A float is stuck'
