# Mimencode

Mimencode used to be a small utility included in the MetaMail project, which was used to encode and decode files (and pipes) to/from the MIME/BASE64 format. Unfortunately, MetaMail development ended in 1994 (!) and although the project has been maintained by Debian for a long time, it's now completely dead.

I have personally used mimencode alone in a lot of script, as it's very handy to encode/decode in MIME format, and convert generic binary data in ASCII to process them with non binary-safe tools, and I still needed today.

So, I created this repository which includes mimencode as a standalone tool, with the bare minimum of code from the Metamail project which is needed to compile it.

## Build and install

It's as simple as
```
make
make install
```
NOTE: by default it will install files in `/usr/bin` and `/usr/share/man`, use
```
make install INSTROOT=/your/path
```
if those paths do not suit your needs. Variables `LOCALBINDIR` and `MAN1DIR` are also available.
Of course, feel free to add proper autoconf/automake support if you can. That would be a great addition.

## Usage

Mimencode usage is well documented in the manpage, written by the original authors, which is included in the repository, so:
```
man mimencode
```
will tell you everything you need to use it.

## Acknowledgements and thanks

Thanks go to the original authors of MetaMail, and the Debian maintainers who did most of the work. You can find their original versions here:
- [MetaMail original source](http://ftp.funet.fi/pub/unix/mail/metamail/)
- [Debian BIG patch](http://tux.rainside.sk/gentoo/distfiles/1b/metamail_2.7-53.diff.gz)

... but the latter link may soon vanish. When it happens, try to search metamail_2.7-53.diff.gz on Gentoo mirrors if you are interested in the patch.
I extracted mimencode source with all needed library calls, ANSIfied the old K&R C code adding prototypes etc, and added a few very simple Makefiles. 

## Status

Works on my PC. ;)
