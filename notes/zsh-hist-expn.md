# ZSH History Expansion

syntax: `designator[:word][:mod1:mod2...]`


## Designators

* `!` - start a history expansion, except when followed by `blank`, `newline`, `=`, or `(`.
* `!!` - refer to previous command; by itself, repeats previous command
* `!n` - refer to command-line `n`
* `!-n` - refer to current command-line minus `n`
* `!str` refer to the most recent command starting with `str`
* `!?str[?]` - refer to the most recent command containing `str`
* `!#` - refer to the current command-line typed thus far
* `!{...}` - insulate a history reference from adjacent chars if reqd


## Word Designators

* `0` - the first word (command)
* `n` - the `n`th argument
* `^` - the first argument
* `$` - the last argument
* `%` - the word matched by (the most recent) `?str` search
* `x-y` - a range of words; `x` defaults to `0`
* `*` - all of the arguments, or a null value if there are none (null byte or fig. null?)
* `x*` - an abbreviation for `x-$`
* `x-` - like `x*`, but omitting word `$`

