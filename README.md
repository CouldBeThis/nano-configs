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

### hints: Mac OS

For best experience on the Mac, I reccomend using [iTerm2](https://iterm2.com/index.html) rather than the standard terminal application th comes with the system. [kitty](https://sw.kovidgoyal.net/kitty/) is another popular optionbut requires more advanced configuration to make it useful to begin with. 

On my system I had to do some extra configuring in iTerm2 in order to get the keybindings to work properly. I am not sure if this has to do with changes I made previously, or if it could be the case with just default settings. 

Documentation on how to modify keybindings in iTerm2 can be found [in its documentation](https://iterm2.com/documentation-preferences-profiles-keys.html). I followed the instructions to go to `Preferences` > `Profiles` > `Keys` > `General`:

> Left/Right Option Key Acts As
>
> It is common to use a modifier to send so-called "meta keys". For most users, selecting "+Esc" here is the right choice. The "Meta" option sets the high bit of the input character, and is not compatible with modern systems.

By default, the modifier keys on a Mac keyboard from the bottom left unti lthe spacebar are: `⌃` `⌥` `⌘` these being:

 * `⌃` - `control` - this is the modifier that does most of the work by default in `nano`; key combinations should work as expected when identified such as `^X` to exit
 * `⌥` - `option` - if you make the configuration as specified, this should be the modifier `M-`
 * `⌘` - command - should not be assigned any `nano` powers, leaving it for control of the external environment like terminal editor.


## todo

### In the `nanorc` and `.nanorc` files

 * [ ] Spellchecking
 * [ ] Tidy up, remove old commented out configs
 	* [ ] Perhaps organize old configs into alternative "sets" of command keys, color shemes
 	* [X] ~~Perhaps split up files and `include` them in pieces~~ Not possible! Turns out it is only possible to  `include` *syntaxfile* whose contents are more limited than the `nanorc`. See the [`nanorc` documentation](https://www.mankier.com/5/nanorc#Syntax_Highlighting).
 * [ ] Make use of more keys I don't have on this particular device such as `del`, `pg up`/`pg dn` and `function` keys. 
 * [ ] Improve color scheme
 * [ ] Improve `ctrl` + arrow key navigation in how it deals with punctuation and special charecters... currently sort of confusing.
* Syntax definition improvements (send some to upstream if they have not already been decided against there)
 	* Markdown
 		* [ ] add `==`text`==` for highlighting
 		* [ ] codeblocks are a bit odd; see if I misunderstand their use of if they need tweaking
 		* [ ] add nicer (lower contrast) colors if code is in a link 
 		* [ ] improve anchor link display (higher constrast), e.g. `[top](#top)`
 		* [ ] escape charecters
 		* [ ] `YAML` frontmatter
 * [ ] on Mac: `M-`+ arrows activates linter.. why?


### In this repo

 * [ ] Organize files so it's clear what belongs to be and what belongs to the `scopatz/nanorc` repo
 	* [ ] Perhaps include as a (forked) submodule
 * [ ] Install instructions
 	* [ ] Install script ???
 * [ ] Summarize shortcuts (cheatsheet)
 	* [ ] Perhaps including rationalization fos some decisions

### Wishlist (not sure if possible)

 * [X] ~~Smarter word wrapping that doesn't cut words apart~~
 * [ ] Change contents of the help menu at the bottom
 * [ ] Keystroke to commit file to `git` repo
 * [ ] Optimize keyboard shortcuts for markdown
 	* `ctrl` + `1` (and so on): add `#` to start of line (make heading level 1)
 	* add new list item at same indentation as current.
 		* if possible to detect whether currently in a list and what level, this should be automatic behaviour on `enter`
 		* if not, assign to some other keystroke
 		* also include for task list (` * [ ]` or ` - [ ]`)
 		* recognize either ` * ` or ` - ` lists
 	* make current selection, or if none selected, current word **bold**, *italic*, ~~strikethrough~~, ==highlighted==, `code`
 	* insert link/image 
 		* with clipboard URL inserted and cursor in description/alt portion
 		* if text selected, consider that text as description/alt and paste URL from clipboard 
 		* is it possible to detect if clipboard contains URL?
 		* how to interact between various clipboards?
 	* Extra help screen for shortcuts and/or markdown syntaxt cheatsheet
 	* Generate a TOC
 * [ ] Improved (less confusing) interaction bewteen terminal emulator and `nano`

## helpful resources

Official `nano` website

 * [home page](https://nano-editor.org/)
 * [cheatsheet](https://nano-editor.org/dist/latest/cheatsheet.html) - default keybindings and shortcuts (many won't work if you use my configs of course)
 * [FAQ](https://nano-editor.org/dist/latest/faq.html) - answer many specific and technical problems users may encounter
 * [`.nanorc`](https://nano-editor.org/dist/latest/nanorc.5.html) - reference for the `nanorc` files
 * [user manual](https://nano-editor.org/dist/latest/nano.html)
 * Note the above links will automatically display information for the "latest" release of `nano` as per the URL. If you require the information regarding a *specific* version, they are organized in [this directory](https://nano-editor.org/dist/). 


















