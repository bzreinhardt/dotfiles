" File    = ~/deadkeys.vim
" Author  = W.J.M. Brok (wjmb@etpmod.phys.tue.nl)
" Version = $Id: deadkeys.vim,v 1.2 2004-09-09 22:02:57 cfl Exp $ 
"
" Based on Claudio Fleiners (http://www.fleiner.com/vim/deadkey.html) 
" dead key mappings.

function Switch_DeadKeys()
	" was this called before?
	if (!exists("s:deadkeytype"))
		let s:deadkeytype = 0
	endif
	if (s:deadkeytype == 0)
		" switch to html mapping.
		call HTML_dead()
		echom "html dead key mapping"
	elseif (s:deadkeytype == 1)
		" switch to text mapping.
		call Text_dead()
		echom "text dead key mapping"
	else
		" switch to no mapping.
		call No_dead()
		echom "unmap dead keys"
	endif
endfunction


function No_dead()

        let s:deadkeytype = 0
	iunmap "a
	iunmap "A
	iunmap "e
	iunmap "E
	iunmap "i
	iunmap "I
	iunmap "o
	iunmap "O
	iunmap "u
	iunmap "U
	iunmap "y
	iunmap "<space>

	iunmap 'a
	iunmap 'A
	iunmap 'e
	iunmap 'E
	iunmap 'i
	iunmap 'I
	iunmap 'o
	iunmap 'O
	iunmap 'u
	iunmap 'U
	iunmap 'y
	iunmap '<space>

	iunmap 'c
	iunmap 'C

	iunmap `a
	iunmap `A
	iunmap `e
	iunmap `E
	iunmap `i
	iunmap `I
	iunmap `o
	iunmap `O
	iunmap `u
	iunmap `U
	iunmap `<space>

	iunmap ^a
	iunmap ^A
	iunmap ^e
	iunmap ^E
	iunmap ^i
	iunmap ^I
	iunmap ^o
	iunmap ^O
	iunmap ^u
	iunmap ^U
	iunmap ^<space>

	iunmap ~n
	iunmap ~N
	iunmap ~<space>

endfunction


function HTML_dead()
 
	let s:deadkeytype = 1
	imap "a	&auml;
	imap "A	&Auml;
	imap "e	&euml;
	imap "E	&Euml;
	imap "i	&iuml;
	imap "I	&Iuml;
	imap "o	&ouml;
	imap "O	&Ouml;
	imap "u	&uuml;
	imap "U	&Uuml;
	imap "y	&yuml;
	imap "<space>	""<bs>

	imap 'a	&aacute;
	imap 'A	&Aacute;
	imap 'e	&eacute;
	imap 'E	&Eacute;
	imap 'i	&iacute;
	imap 'I	&Iacute;
	imap 'o	&oacute;
	imap 'O	&Oacute;
	imap 'u	&uacute;
	imap 'U	&Uacute;
	imap 'y	&yacute;
	imap '<space>	''<bs>

	imap 'c	&ccedil;
	imap 'C	&Ccedil;

	imap `a	&agrave;
	imap `A	&Agrave;
	imap `e	&egrave;
	imap `E	&Egrave;
	imap `i	&igrave;
	imap `I	&Igrave;
	imap `o	&ograve;
	imap `O	&Ograve;
	imap `u	&ugrave;
	imap `U	&Ugrave;
	imap `<space>	``<bs>

	imap ^a	&acirc;
	imap ^A	&Acirc;
	imap ^e	&ecirc;
	imap ^E	&Ecirc;
	imap ^i	&icirc;
	imap ^I	&Icirc;
	imap ^o	&ocirc;
	imap ^O	&Ocirc;
	imap ^u	&ucirc;
	imap ^U	&Ucirc;
	imap ^y	&ycirc;
	imap ^<space>	^^<bs>

	imap ~n	&ntilde;
	imap ~N	&Ntilde;
	imap ~<space>	~~<bs>

endfunction

function Text_dead()

	let s:deadkeytype = 2
	imap "a	�
	imap "A	�
	imap "e	�
	imap "E	�
	imap "i	�
	imap "I	�
	imap "o	�
	imap "O	�
	imap "u	�
	imap "U	�
	imap "y	�
	imap "<space>	""<bs>

	imap 'a	�
	imap 'A	�
	imap 'e	�
	imap 'E	�
	imap 'i	�
	imap 'I	�
	imap 'o	�
	imap 'O	�
	imap 'u	�
	imap 'U	�
	imap 'y	�
	imap '<space>	''<bs>

	imap 'c	�
	imap 'C	�

	imap `a	�
	imap `A	�
	imap `e	�
	imap `E	�
	imap `i	�
	imap `I	�
	imap `o	�
	imap `O	�
	imap `u	�
	imap `U	�
	imap `<space>	``<bs>

	imap ^a	�
	imap ^A	�
	imap ^e	�
	imap ^E	�
	imap ^i	�
	imap ^I	�
	imap ^o	�
	imap ^O	�
	imap ^u	�
	imap ^U	�
	imap ^y	xxxx
	iunmap ^y
	imap ^<space>	^^<bs>

	imap ~n	�
	imap ~N	�
	imap ~<space>	~~<bs>

endfunction

map <esc>[19~ :let r=Switch_DeadKeys()<CR>


