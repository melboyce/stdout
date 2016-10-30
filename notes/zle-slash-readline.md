# ZLE movement/editing/etc notes (Emacs mode)
AKA readline


## Notes
A `word` is defined by the `WORDCHARS` parameter.


## Movement
forward-char   ^F  move forward one character
backward-char  ^B  move backward one character

forward-word   ESC-F  move to the beginning of the next word
backward-word  ESC-B  move to the beginning of the previous word

end-of-line        ^E  move to the end of the line
beginning-of-line  ^A  move to the beginning of the line

vi-find-next-char  ^X^F  read char from kb, move to next occurrence

vi-match-bracket  ^X^B  move to the matching bracket


# Modifying Text
backward-delete-char  ^H  delete the character behind the cursor

backward-kill-word  ^W     kill the word behind the cursor
kill-word           ESC-D  kill the current word

kill-line        ^K  kill from the cursor to the end of the line
kill-whole-line  ^U  kill the current line

capitalize-word  ESC-C  capitalize the current word and move past it
down-case-word   ESC-L  downcase the current word and move past it
up-case-word     ESC-U  convert current word to all caps and move past it

quote-line  ESC-'  quote the current line with single quotes

overwrite-mode  ^X^O  toggle between overwrite and insert modes

transpose-chars  ^T     exchange current character with the previous one
transpose-words  ESC-T  exchange current word with previous word


## History
down-line-or-history  ^N
up-line-or-history    ^P

history-incremental-search-backward  ^R
history-incremental-search-forward   ^S

history-search-backward  ESC-P  search backward in history for a line beginning with the first word in the buffer
history-search-forward   ESC-N


## Misc.
send-break  ^G  abort the current editor function

run-help  ESC-H  execute `run-help cmd` (run-help defaults to `man`)

undo  ^__ ^Xu ^X^U  undo the last text modification

what-cursor-position  ^X=  print the character under the cursor

which-command  ESC-?  execute `which-command cmd` (which-command defaults to `whence`)
