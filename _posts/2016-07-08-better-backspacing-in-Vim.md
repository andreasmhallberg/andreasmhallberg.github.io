---
layout: post
title: Better backspacing in Vim
permalink: /better-backspacing-in-vim/
lang: en
length: medium
tags:
- vim
---
 
When writing in Vim, you never need the to use the mouse and you never need to use the cursor keys. All typing, editing, and file navigation is done with you fingers on the home-row (left index finger on F, right index finger on J). This makes for very quick and comfortable text editing, also over several files, once you get used to it. One thing that stops the Vim writing flow, however, is when you misstype a word and need to retype it. The usual way to do this is to lift your right hand to reach for the backspace key in the top right of the keyboard and smash it repeatedly until the wrongly spelled word is erased before you retype it. This is very annoying. It dislocates your right hand from the home row where it belongs and the repeated keypresses on backspace only operate on one character at a time.

A more efficient way is to have one easily accessible key combination remove the word you're in. With the mapping below in your `.vimrc` this is done by hitting `j` key twice with your index finger without leaving insert mode.

``` vim
inoremap jj <Esc>ciW
```

This mapping is primarily intended for prose writing and it obviously would not work if you write in some language *jj* is a common letter combination. In Swedish and English, the languages I most often write in, the *jj* combination is extremely infrequent. Of course, when it does show up (for example in writing this post) you can still type it, you just have to press `j`, wait a second, and then type `j` again.  In Arabic, the other language I sometimes use, this key combination produces تت, which is a fairly common character combination, so the mapping has to be disabled when using this language.

Some Vim users have `jj` mapped to ESC. An alternative could then be to have the word erase mapped to `hh`, a letter combination that is also very infrequent in English but easily accessible with your right index finger. 

Just making this mapping available does not mean that one starts using it. The backspace reflex is very deeply engraved in the muscle memory and is not easy to shake off. To break the habit of using the backspace key, you may want to add the mapping below to your `.vimrc` to disable repeated backspace presses. I think it is still useful to have it available to remove a single letter.

``` vim
inoremap <BS> <NOP><NOP>
```

I have had these mappings for a couple of months now and it works great. Once you notice you misspelled something and you see the squiggly red line pop up you just do `jj` with your index finger without moving your hand and then directly type the word again without switching modes and without loosing your home-row typing flow. The only drawback is that whenever you are doing things outside of Vim you risk ending up with stray *jj* spread around the text.
