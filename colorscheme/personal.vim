set background=dark

"Normal text
hi Normal ctermbg=235 ctermfg=231
"Comments like these
hi Comment ctermfg=248 cterm=italic "gray
"any constant terms
hi Constant ctermfg=147 ctermbg=235 "12, 38, 141 
	hi String ctermfg=215 "11 is decent, 209, 159
	hi Character ctermfg=169
hi Identifier ctermfg=blue
"int, double, char, this, etc
hi Type ctermfg=80 "lightGreen, 156
       "static, register, volatile, etc.
	hi StorageClass ctermfg=120 "static, 120
"Preprocessor (import, #define, #include)
hi PreProc ctermfg=141
"Any statement: if, else, for, while
hi Statement ctermfg=11 "cterm=bold "185, 87, 204
	"new, +/-
	hi Operator ctermfg=228 cterm=italic "215
"<-- these line numbers
hi LineNr ctermfg=179 ctermbg=234 "98, 159, bg(236)      
"Any special symbol: \n, \t, 
hi Special ctermfg=169 "look into better ones for this
"any wrong syntax
hi Error ctermfg=red ctermbg=white
""unknown words from the spell checker
hi SpellBad    ctermfg=white ctermbg=4
