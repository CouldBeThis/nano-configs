# Nano color support by version

## summary

```


## . . . . . . . . . BASIC . . . . . . . . . .##

# Will change with terminal color scheme:
black
blue
cyan
green
magenta
red
yellow
white


## . . . . . . . . v.2.9.6 . . . . . . . . . .##

# Will change with terminal color scheme:
normal

## . . . . . . . . . v.5.0 . . . . . . . . . .##

# Stay the same regardless of terminal color scheme:
lagoon
latte
lime
mauve
mint
orange
peach
pink
purple

# Will change with terminal color scheme:
lightblack
lightblue
lightcyan
lightgreen
lightmagenta
lightred
lightwhite
lightyellow

## . . . . . . . . . v.5.0 . . . . . . . . . .##
bold
italic

## . . . . . . . . . v.5.8 . . . . . . . . . .##

# Will change with terminal color scheme:
gray
grey

## . . . . . . . . . v.6.0 . . . . . . . . . .##

# Stay the same regardless of terminal color scheme:
beet
brick
brown
crimson
ocher
plum
rosy
sage
sand
sea
sky
slate
tawny
teal


```

## according to IMPROVEMENTS

[IMPROVEMENTS](https://nano-editor.org/dist/latest/IMPROVEMENTS)

Since 6.0:...
>  - Colors can be given also in #rgb hexadecimal, to select the nearest color
    from the 6x6x6 color-cube palette available on 256-color terminals.
>  - Fourteen new color names are available, from rosy to crimson.

Since 5.0:...
>  - Colors can be modified with the attributes "bold," and/or "italic,".
>  - Nine new color names: from pink and purple to orange and latte.

Since 2.90:...
>  - Addition of the color name "normal", meaning the default color.

Since 2.0.0...
>  - Color syntax highlighting can be set by the first line of a file.

Since 1.2.0:...
>  - Improvements to color syntax highlighting support: case insensitive matching, the ability to include color syntaxes in separate files, the ability to specify background colors without foreground colors...

## according to NEWS

[NEWS](https://nano-editor.org/dist/latest/NEWS):

2021.12.15 - GNU nano 6.0 "Humor heeft ook zijn leuke kanten"...

> * Colors can now be specified also as three-digit hexadecimal numbers, in the format #rgb.  This picks from the 216 index colors (that most terminals know) the color that is nearest to the given values.

> * For users who dislike numbers, there are fourteen new color names: rosy, beet, plum, sea, sky, slate, teal, sage, brown, ocher, sand, tawny, brick, and crimson.

2021.06.15 - GNU nano 5.8 "Why is it necessary to be special?"

> * Color name "grey" or "gray" can be used instead of "lightblack".

2020.07.29 - GNU nano 5.0 "Among the fields of barley"...

> * On terminals that support at least 256 colors, nine new color names are available: pink, purple, mauve, lagoon, mint, lime, peach, orange, and latte.  These do not have lighter versions.
> * For the color names red, green, blue, yellow, cyan, magenta, white, and black, the prefix 'light' gives a brighter color. Prefix 'bright' is deprecated, as it means both bold AND light.
> * All color names can be preceded with "bold," and/or "italic," (in that order) to get a bold and/or italic typeface.

2018.03.29 - GNU nano 2.9.5 "KiÅ¡a pada" ...

This version further adds a new color name, "normal", which gives the default foreground or background color, which is useful when you want to undo some overzealous painting by earlier syntax regexes.











