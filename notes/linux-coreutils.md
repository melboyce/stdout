# Coreutils Notes

https://www.gnu.org/software/coreutils/manual/coreutils.html


## Exit status
Status may mean something non-standard:

* chroot
* env
* expr
* nice
* nohup
* numfmt
* printenv
* sort - 0=no error, 1=see -c or -C, 2=error
* stdbuf
* test
* timeout
* tty


## Disambiguating usernames and IDs
`chown`, `chgrp`, `chroot`, and `id` can refer to numeric user or group
names be prefixing the name with `+`.

ex: `chown +42 F  # change owner of file F to user '42'`


## Environment Variables

* `POSIXLY_CORRECT` - enforce POSIX conformance (tricky, read the docs)
* 


## Output Entire Files

* `cat` - concatenate and write files
* `tac` - cat in reverse
* `nl` - number lines and write files
* `od` - write files in octal or other formats
* `base32` - see base64
* `base64` - transform data into printable data


## Formatting Files

* `fmt` - reformat paragraph text
* `pr` - paginate or columnate files for printing
* `fold` - wrap input lines to fit in specified width


## Output Parts of Files

* `head` - output the first part of files
* `tail` - output the last part of files
* `split` - split a file into pieces
* `csplit` - split a file into context-determined pieces


## Summarizing Files

* `wc` - print newline, word, and byte counts
* `sum` - print checksum and block counts
* `cksum` - print CRC checksum and byte counts
* `b2sum` - print or check BLAKE2 digests
* `md5sum` - print or check MD5 digests
* `sha1sum` - print or check SHA-1 digests
* `sha2` - print ot check SHA-2 digests - `sha{224,256,384,512}sum`


## Sorted/Sorting Files

* `sort` - sort text files
* `shuf` - shuffle text files
* `uniq` - uniquify files
* `comm` - compare 2 sorted files line by line
* `ptx` - produce permuted index of file contents
* `tsort` - topological sort
