# keybindings

[toc]

I find keybindings pretty confusing especially across platforms and in different environments within a single platform. This is an attempt to get things sorted out and consistent if that is possible. Some of the situation might be a bit esoteric to my own set up and may not reflect yours. 

### Special keys

listed (approximately) from left to right on the bottom row of keyboard (then, upwards)



|        | function          | linux - remapping                   | `xfwm` keybindings | nano in linux - `terminator` | `show_key` in linux - `kitty`                           | nano in linux - `kitty` |
| ------ | ----------------- | ----------------------------------- | ------------------ | ---------------------------- | ------------------------------------------------------- | ----------------------- |
|        | `Control_L`       |                                     |                    | `^`                          | `LEFT_CONTROL PRESS ` then `Ctrl+LEFT_CONTROL RELEASE ` | ?                       |
| `❖`    | `win` / `Super L` | see [#Linux](#Linux) below for info |                    | *?*                          | *see below*                                             | *?*                     |
| `⎇`    | `alt (L)`         |                                     |                    | `Meta` / `M-`                | `LEFT_ALT PRESS ` then `Alt+LEFT_ALT RELEASE `          | `Meta` / `M-`           |
| `_`    | `space`           |                                     |                    |                              |                                                         |                         |
| `⎇`    | `alt (R)`         | `Alt_L`                             |                    |                              |                                                         |                         |
| `⎙`    | `PrtSc (R)`       | `win`  / `Super L`                  |                    |                              |                                                         |                         |
| `🎛` \| | `Ctrl (R)` \|     | `Control_L`                         |                    |                              |                                                         |                         |
| `⍐`    | `PgUp`            |                                     |                    |                              |                                                         |                         |
| `⍗`    | `PgDn`            |                                     |                    |                              |                                                         |                         |
| `←`    | `left arrow`      |                                     |                    |                              |                                                         |                         |
| `→`    | `right arrow`     |                                     |                    |                              |                                                         |                         |
| `↑`    | `up arrow`        |                                     |                    |                              |                                                         |                         |
| `↓`    | `down arrow`      |                                     |                    |                              |                                                         |                         |
|        |                   |                                     |                    |                              |                                                         |                         |
|        | `CapsLock`        | `Control_L`                         |                    |                              |                                                         |                         |
|        |                   |                                     |                    |                              |                                                         |                         |
|        |                   |                                     |                    |                              |                                                         |                         |
| `ƒ`    | `fn`              | *unavailable to OS*                 |                    |                              |                                                         |                         |

`❖` `win` / `Super L` in `show_key`: each key press yields the following

```zsh
LEFT_SUPER PRESS 
CSI 57444 u

Super+LEFT_SUPER RELEASE 
CSI 57444 ; 9 : 3 u

LEFT_ALT PRESS 
CSI 57443 u

Alt+F1 PRESS 
CSI 1 ; 3 P

Alt+LEFT_ALT RELEASE 
CSI 57443 ; 3 : 3 u

F1 RELEASE 
CSI  ; 1 : 3 P
```

(no effect to turn off `input_remapper`)



## `kitty` documentation

### Cross platform: `show_key` kitten

[Comprehensive keyboard handling in terminals - kitty](https://sw.kovidgoyal.net/kitty/keyboard-protocol/) describes various universal issues in keyboard handling in terminals and instructs to run the following to open a mode where `kitty` will tell you what it sees. 

```zsh
kitty +kitten show_key -m kitty
```



### Mac OS

For mac, may be required (not tested)

* [`macos_option_as_alt`](https://man.archlinux.org/man/community/kitty/kitty.conf.5.en#macos_option_as_alt)

### Linux

* [`linux_display_server`](https://man.archlinux.org/man/community/kitty/kitty.conf.5.en#linux_display_server)

#### re windows key

[faq [Xfce Docs]](https://docs.xfce.org/faq#keyboard_related):

> #### My windows button does not work in the Keyboard Settings > Shortcuts.
>
> The windows button (also known as the superkey) not working as a  modifier is related to the toolkit, GTK+ in the case of Xfce. If you  want to have the windows-key working we recommend you to upgrade GTK+ to at least version 2.10.0. 

## tools used

* Linux: [`input-remapper`](https://github.com/sezanzeb/input-remapper) - very friendly



↵
