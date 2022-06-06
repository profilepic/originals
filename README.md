#  Factory of Modern Originals (FoMO)

Do-it-yourself (DIY) - yes, you can! - fab(criate) your own unique (pixel) artworks w/ text attributes (via built-in spritesheets) incl. 2x/4x/8x zoom for bigger sizes and more


* home  :: [github.com/pixelartexchange/originals](https://github.com/pixelartexchange/originals)
* bugs  :: [github.com/pixelartexchange/originals/issues](https://github.com/pixelartexchange/originals/issues)
* gem   :: [rubygems.org/gems/originals](https://rubygems.org/gems/originals)
* rdoc  :: [rubydoc.info/gems/originals](http://rubydoc.info/gems/originals)




##  Command-Line Usage


Use the `fab` (or `fabricate`) command line tool. Try:

```
$ fab -h
```

resulting in:

```
Usage: fab [options] name [attribute] ...
    -z, --zoom NUM                   Zoom factor x2, x4, x8, etc. (default: 1)
    -b, --background, --bg STRING    Background (default: transparent)
    -i, --id NUM                     Unique identifier (default: none)

    -h, --help                       Prints this help
```



### Punks (24x24)

_A free (pixel) art service brought to you by [punks, (phunks, philips, marilyns, & more) generation library / gem »](https://github.com/cryptopunksnotdead/cryptopunks/tree/master/cryptopunks)_



Fab(ricate) punk character pixel art originals from text attributes (from scratch / zero) via built-in spritesheet. Let's try:

```
$ fab punk alien headband
```

resulting in:

![](https://github.com/pixelartexchange/originals/raw/master/i/punk0.png)

Let's try  the `-z/--zoom` factor 2x, 4x, 8x, etc.:

```
$ fab --zoom=4 punk alien headband
# -or-
$ fab -z4 punk alien headband
```

resulting in:

4x ![](https://github.com/pixelartexchange/originals/raw/master/i/punk0@4x.png)


Let's try some more:

```
$ fab punk male3 peak_spike goat horned_rim_glasses
$ fab punk demon heart_shades
```

resulting in:

![](https://github.com/pixelartexchange/originals/raw/master/i/punk1.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/punk2.png)

4x  (using the `--zoom=4`/`-z4` option)

![](https://github.com/pixelartexchange/originals/raw/master/i/punk1@4x.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/punk2@4x.png)



Let's try the `-b/--background` option with two solid colors
(e.g. `0x638596`  and `0xffbf00` - r/g/b colors in hex) and with the built-in ukraine and pride (rainbow) flag:


```
$ fab --background=0x638596 punk male3 peak_spike goat horned_rim_glasses
# -or-
$ fab -b0x638596 punk male3 peak_spike goat horned_rim_glasses

$ fab --background=0xffbf00 punk male3 peak_spike goat horned_rim_glasses
$ fab --background=ukraine punk male3 peak_spike goat horned_rim_glasses
$ fab --background=pride punk male3 peak_spike goat horned_rim_glasses
```

resulting in:

![](https://github.com/pixelartexchange/originals/raw/master/i/punk1.1.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/punk1.2.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/punk1.3.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/punk1.4.png)

4x  (using the `--zoom=4`/`-z4` option)

![](https://github.com/pixelartexchange/originals/raw/master/i/punk1.1@4x.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/punk1.2@4x.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/punk1.3@4x.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/punk1.4@4x.png)



#### Phunks (24x24)

Let's try some left-looking punks also known as Phunks -  "hand-phlipped" by Philip the Intern

```
$ fab phunk male2 spots hoodie
```

resulting in:

![](https://github.com/pixelartexchange/originals/raw/master/i/phunk0.png)

4x  (using the `--zoom=4`/`-z4` option)

![](https://github.com/pixelartexchange/originals/raw/master/i/phunk0@4x.png)



#### Philips (24x24)

Let's try some left-looking philips (pre-configured phunk
with the built-in attributes: Male 3):

```
$ fab philip
$ fab philip jester_hat smile
```

resulting in:

![](https://github.com/pixelartexchange/originals/raw/master/i/philip0.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/philip1.png)

4x  (using the `--zoom=4`/`-z4` option)

![](https://github.com/pixelartexchange/originals/raw/master/i/philip0@4x.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/philip1@4x.png)



#### Marilyns (24x24)

Let's try some left-looking marilyns (pre-configured phunk
with the built-in attributes: Female 3, Wild Blonde, Mole, Blue Eye Shadow):

```
$ fab marilyn
$ fab marilyn 3d_glasses
$ fab marilyn flowers earring smile
$ fab marilyn hot_lipstick big_shades

# or with some backgrounds
$ fab --background=0x638596 marilyn hot_lipstick big_shades
$ fab --background=0xffbf00 marilyn hot_lipstick big_shades
$ fab --background=ukraine marilyn hot_lipstick big_shades
$ fab --background=pride marilyn hot_lipstick big_shades
```

resulting in:

![](https://github.com/pixelartexchange/originals/raw/master/i/marilyn0.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/marilyn1.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/marilyn3.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/marilyn2.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/marilyn2.1.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/marilyn2.2.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/marilyn2.3.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/marilyn2.4.png)

4x  (using the `--zoom=4`/`-z4` option)

![](https://github.com/pixelartexchange/originals/raw/master/i/marilyn0@4x.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/marilyn1@4x.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/marilyn3@4x.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/marilyn2.1@4x.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/marilyn2.2@4x.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/marilyn2.3@4x.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/marilyn2.4@4x.png)



### Shiba Inu Doge (24x24)

_A free (pixel) art service brought to you by [shiba-inus generation library / gem »](https://github.com/pixelartexchange/pixelart/tree/master/shibainus)_


Let's try some shiba inu doge - much wow:


```
$ fab doge alien headband
$ fab doge dark tiara big_shades

# -or- with some backgrounds
$ fab --background=0x638596 doge dark tiara big_shades
$ fab --background=0xffbf00 doge dark tiara big_shades
$ fab --background=ukraine doge dark tiara big_shades
$ fab --background=pride   doge dark tiara big_shades
```

resulting in:

![](https://github.com/pixelartexchange/originals/raw/master/i/doge0.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/doge1.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/doge1.1.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/doge1.2.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/doge1.3.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/doge1.4.png)

4x  (using the `--zoom=4`/`-z4` option)

![](https://github.com/pixelartexchange/originals/raw/master/i/doge0@4x.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/doge1@4x.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/doge1.1@4x.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/doge1.2@4x.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/doge1.3@4x.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/doge1.4@4x.png)




### Coolcats (24x24)

_A free (pixel) art service brought to you by [coolcats generation library / gem »](https://github.com/pixelartexchange/pixelart/tree/master/coolcats)_


Let's try some coolcats:


```
$ fab coolcat ditto beret_red
$ fab coolcat unamused
$ fab coolcat tv_head_grey tv_face_no_signal

# -or- with some backgrounds
$ fab --background=0x638596 coolcat tv_head_grey tv_face_no_signal
$ fab --background=0xffbf00 coolcat tv_head_grey tv_face_no_signal
$ fab --background=ukraine coolcat tv_head_grey tv_face_no_signal
$ fab --background=pride   coolcat tv_head_grey tv_face_no_signal
```

resulting in:

![](https://github.com/pixelartexchange/originals/raw/master/i/coolcat0.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/coolcat1.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/coolcat2.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/coolcat2.1.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/coolcat2.2.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/coolcat2.3.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/coolcat2.4.png)

4x  (using the `--zoom=4`/`-z4` option)

![](https://github.com/pixelartexchange/originals/raw/master/i/coolcat0@4x.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/coolcat1@4x.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/coolcat2@4x.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/coolcat2.1@4x.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/coolcat2.2@4x.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/coolcat2.3@4x.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/coolcat2.4@4x.png)




### Nouns (32x32)

_A free (pixel) art service brought to you by [nouns generation library / gem »](https://github.com/pixelartexchange/pixelart/tree/master/nouns)_


Let's try some noun (pixel avatars):


```
$ fab noun body_grayscale1 checker_bigwalk_rainbow \
           head_beer glasses_square_fullblack
$ fab noun body_gradient_pride bling_love \
           head_bubblegum glasses_square_yellow_saturated
$ fab noun body_red txt_lol \
           head_weed glasses_square_black_rgb

# -or- with some backgrounds
$ fab --background=0x638596 noun body_red txt_lol \
           head_weed glasses_square_black_rgb
$ fab --background=0xffbf00 noun body_red txt_lol \
           head_weed glasses_square_black_rgb
$ fab --background=ukraine noun body_red txt_lol \
           head_weed glasses_square_black_rgb
$ fab --background=pride   noun body_red txt_lol \
           head_weed glasses_square_black_rgb
```

resulting in:

![](https://github.com/pixelartexchange/originals/raw/master/i/noun0.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/noun1.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/noun2.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/noun2.1.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/noun2.2.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/noun2.3.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/noun2.4.png)

4x  (using the `--zoom=4`/`-z4` option)

![](https://github.com/pixelartexchange/originals/raw/master/i/noun0@4x.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/noun1@4x.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/noun2@4x.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/noun2.1@4x.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/noun2.2@4x.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/noun2.3@4x.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/noun2.4@4x.png)






### Moonbirds / Owls (42x42)

_A free (pixel) art service brought to you by [moonbirds (& owls)generation library / gem »](https://github.com/pixelartexchange/pixelart/tree/master/moonbirds)_



Let's try some super-rare never-before-seen moonbirds / owls:

```
$ fab moonbird crescent_golden beak_small_golden eyes_open_golden beanie
$ fab moonbird tabby_brown beak_small_orange eyes_open_white  \
        mcdonalds_red drivethru_onduty mcdonalds_shirt_old_skool

# -or- with some backgrounds
$ fab --background=0x638596 moonbird tabby_brown beak_small_orange eyes_open_white  \
        mcdonalds_red drivethru_onduty mcdonalds_shirt_old_skool
$ fab --background=0xffbf00 moonbird tabby_brown beak_small_orange eyes_open_white  \
        mcdonalds_red drivethru_onduty mcdonalds_shirt_old_skool
$ fab --background=ukraine moonbird tabby_brown beak_small_orange eyes_open_white  \
        mcdonalds_red drivethru_onduty mcdonalds_shirt_old_skool
$ fab --background=pride   moonbird tabby_brown beak_small_orange eyes_open_white  \
        mcdonalds_red drivethru_onduty mcdonalds_shirt_old_skool
```

resulting in:

![](https://github.com/pixelartexchange/originals/raw/master/i/moonbird0.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/moonbird1.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/moonbird1.1.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/moonbird1.2.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/moonbird1.3.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/moonbird1.4.png)

4x  (using the `--zoom=4`/`-z4` option)

![](https://github.com/pixelartexchange/originals/raw/master/i/moonbird0@4x.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/moonbird1@4x.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/moonbird1.1@4x.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/moonbird1.2@4x.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/moonbird1.3@4x.png)
![](https://github.com/pixelartexchange/originals/raw/master/i/moonbird1.4@4x.png)



And so on. Stay tuned for more original artwork series!




## Install

Just install the gem:

    $ gem install originals



## License

The scripts are dedicated to the public domain.
Use it as you please with no restrictions whatsoever.


## Questions? Comments?

Post them on the [CryptoPunksDev reddit](https://old.reddit.com/r/CryptoPunksDev). Thanks.

