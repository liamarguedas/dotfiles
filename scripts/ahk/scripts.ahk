^e:: ; change to preferred hotkey
clip := clipboard
send, ^c
url := "https://www.google.com/search?q="
is_it_an_url := SubStr(clipboard, 1 , 8)
if (is_it_an_url = "https://") {   ; if it starts with "https://" go to, rather than search in google search
	run, %clipboard%
}
else { ;search using google search
	joined_url = %url%%clipboard%
	run, %joined_url%
	}
clipboard := clip ;put the last copied thing back in the clipboard
return

::gg:: GGWP :) Recuerden dar gracias al Padre, porque en Cristo tenemos la fortaleza necesaria para afrontar las dificultades de la vida. Con él somos vencedores. Amén.