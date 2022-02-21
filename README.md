# my nano configs

A friendly configuration for `nano` text editor to make it intuitive for those who are not extremely framiliar with cli text editors. 

Takes advantage of modern terminals with many colors. 

## disclaimer

Work in progress and for my own purposes. Proceed with caution. Feel free to open an issue if the mood strikes you for some reason. 

## syntax highlighting

I have installed and am relying on filetype syntax highlighting obtained from [scopatz/nanorc](https://github.com/scopatz/nanorc). I did this on a prior version of `nano` and it may not be neccissary anymore. I have made a couple of small changes here and there to suit myself and will probbably do more of the same which is why I keep them. If you want to use the defaults from that repo or from the application, I do not think you would have any problems. 

I have commented out a bunch of syntax highlighting in `nanorc` that I do not anticipate using on the unsupported hypothosis that this will speed things up. If you are less supersticious than me, feel free to uncomment. 

## requirements

### `nano`

You need `nano`. Optimized for GNU `nano` version `6.x`. 

Find your version number by typing `nano --version` into your terminal:

```bash
$ nano --version
 GNU nano, version 6.2
 (C) 1999-2011, 2013-2022 Free Software Foundation, Inc.
 (C) 2014-2022 the contributors to nano
 Compiled options: --enable-utf8
```
I have v. `6.2`. If you have version `5.x` or even lower, some options will not work. In my experience, any incompatibilities will not prevent use of the program but you will be alerted. See [troubleshooting](#troubleshooting) below. You can comment out lines of code that generate errors. 
Information is available about the differences between `nano` versions on the GNU `nano` website. For an overview, see [`IMPROVEMENTS`](https://nano-editor.org/dist/latest/IMPROVEMENTS). For more detail, see [`NEWS`](https://nano-editor.org/dist/latest/NEWS) and for the highest amount of detail there is the [`CHANGELOG`](https://nano-editor.org/dist/latest/ChangeLog)

Consult [`nano`'s Download page](https://nano-editor.org/download.php) for install options but here is what I know. 

#### linux

It will probably be available via you linux package manager (eg `sudo apt install nano`) if it is not already installed. 

#### mac

It is available via [`brew` package manager](https://brew.sh): `brew install nano`. At time of writing this will provide version`6.2` by default.

Be aware that while `nano` does come included with the other command line tools on Mac OS, it is a very, very old version, if I recall correctly from the early 90s. This has to do with Apple's distaste for GPL-type liscences. So if you want to use that, there is no reason to bother with anything included here as it mostly will not work! My advice is to obtain a newer version, preferably via package manager as it will allow you to easily update to a newer version when available. 

General Mac OS terminal tip: *Many* (if not all) of the included cli tools are unusual variants that resemble the normal ones in *most* cases but will occasionally exhibit strange and frustrating behaviour. For example `grep` and even `ls`. The `brew` package manage can help to install standard versions in a safe non destructive way.

#### windows 

I am not sure about how this works on windows which I do not use. :(

## troubleshooting

You will be alerted to errors in 2 ways:

 1. When you open `nano` there will be an error bar near the bottom displaying, `[ Mistakes in '/home/yourusername/.nanorc' ]`
 2. When you then exit `nano`, there will be a description of the error and where it was found above the new command prompt, for example:

```bash
Error in /home/youruser/.nanorc on line 149: Command "xxxxx" not understood
```
 so you can open nano and go to that line and inspect it, fix it or just prepend with `#` to comment it out.

## todo

In the `nanorc`:

 * [ ] Spellchecking
 * [ ] Tidy up, remove old commented out configs
 	* [ ] Perhaps organize old configs into alternative "sets" of command keys, color shemes
 	* [ ] Perhaps split up files and `include` them in pieces
 * [ ] Make use of more keys I don't have on this particular device such as `del`, `pg up`/`pg dn` and `function` keys. 
 * [ ] Improve color scheme

In this repo:

 * [ ] Organize files so it's clear what belongs to be and what belongs to the `scopatz/nanorc` repo
 	* [ ] Perhaps include as a (forked) submodule
 * [ ] Install instructions
 	* [ ] Install script ???
 * [ ] Summarize shortcuts (cheatsheet)
 	* [ ] Perhaps including rationalization fos some decisions

Wishlist (not sure if possible):

 * [ ] Smarter word wrapping that doesn't cut words apart
 * [ ] Change contents of the help menu at the bottom
 * [ ] Keystroke to commit file to `git` repo
 * [ ] Optimize keyboard shortcuts for markdown
 * [ ] Improved (less confusing) interaction bewteen terminal emulator and `nano`

## helpful resources

Official `nano` website

 * [home page](https://nano-editor.org/)
 * [cheatsheet](https://nano-editor.org/dist/latest/cheatsheet.html) - default keybindings and shortcuts (many won't work if you use my configs of course)
 * [FAQ](https://nano-editor.org/dist/latest/faq.html) - answer many specific and technical problems users may encounter
 * [`.nanorc`](https://nano-editor.org/dist/latest/nanorc.5.html) - reference for the `nanorc` files
 * [user manual](https://nano-editor.org/dist/latest/nano.html)
 * Note the above links will automatically display information for the "latest" release of `nano` as per the URL. If you require the information regarding a *specific* version, they are organized in [this directory](https://nano-editor.org/dist/). 


















