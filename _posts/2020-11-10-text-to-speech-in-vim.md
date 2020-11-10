---
layout: post
title: 'Text-to-speach in Vim (for proofreading)'
permalink: /text-to-speak-in-vim/
lang: en
length: medium
tags:
    - vim
 # updates: 
 #  - date: 2019-12-20
 #    contents: Correction (yalla → salaam) in the liguature box. 
---

I am terrible at proofreading my own texts, which many of my colleagues can attest to. I  was therefore happy to discover that MacOS has quite a good text-to-speech feature, and that this can be accessed from they command line. This means that I could quite easily integrate it into my Vim workflow, a prerequisite for me using it at all. This has turned out to be incredibly useful, and is something I now use everyday for all texts I write. When the text is read back to me by the friendly lady living inside my computer, I can easily hear if something is spelled incorrectly, since she, unlike me, don't know how to gloss over miss-spelled or repeated words. Below I describe how I use the speech synthesis in Vim and then provide the code I have in my `.vimrc` to get this functionality.

The basic functionality is to mark text in visual mode and have it read aloud by pressing `z`. The language of the speech synthesis based on the `spelllanguage` setting (in my case Swedish or English). It stopped with the `ESC` key. I typically do something like `vipz` to have a paragraph read aloud, and stop it with `ESC` to edit something, and then have the rest of the paragraph read aloud with `v}z`.

I mostly write text in [pandoc flavored markdown](https://pandoc.org/MANUAL.html#pandocs-markdown), and the speech synthesis reads some of the markup aloud as well, which is annoying. I therefore have several substitution commands that the text is sent through before it is passed to the speech synthesis. These substitutions either removes things or convert them to things that make more sense when read aloud. These substations makes so that the speech synthesis:

- ignores all `*`, `<`, `>`, and `$`
- reads citation keys (for me formatted as `<author>_<noun>_<year>`) as "citation" and the year of the publication
- reads markdown footnotes as "footnote: `<label>`" or "footnote text:" followed by the footnote content, depending on formatting
- ignores the link target in `[<link text>](<target>)` type links

It also does some other more general things, like reading URLs as simply "URL" instead of reciting the entire address. 

After some experimentation, I have set the reading rate to 250 words per minute, which is quite fast. I have to focus to keep up, and stop it whenever I want to edit something. 

The code below is what I have in my `.vimrc` to get this functionality. It was written with a lot of help from [this thread in r/vim](https://www.reddit.com/r/vim/comments/2odq4l/osx_texttospeech_in_vim/). I am not a programmer, and I am sure this can be done more elegantly. It has nevertheless worked well for me thus far. If you use the code below, you will most likely want to adapt it to your needs and taste, especially the mapping and the list of `sed` substitutions. There are several similar open source alternatives one could use instead of `say`, such as [`espeak`](http://espeak.sourceforge.net/).

``` vim
function! TTS()
    if &spelllang == 'sv'
      let s:voice = 'Alva'
    else
      let s:voice = 'Allison'
    endif
    call system('echo '. shellescape(@x) .'
         \ | sed -E "s/[<>$]//g"
         \ | sed -E "s/@[a-z-]+_[a-z-]+_([0-9]{4,4})/, citation: \\1/g"
         \ | sed -E "s/\\[\\^([a-z]+)\\]/ footnote: \\1./g"
         \ | sed -E "s/\\]{(\\.[^}]+)}//g"
         \ | sed -E "s/\\^\\[([^]]+)\\]/ ... footnote text: \1. /g"
         \ | sed -E "s/\\[([^]]+)\\]\\([^)]+\\)/\\1/g"
         \ | sed -E "s/https?[^ ]+/URL /g"
         \ | sed -E "s/&nbsp;/ /g"
         \ | say --voice='. s:voice . ' -r 250 &')
    nnoremap <buffer><silent> <esc> :call system('killall say')<CR>
endfunction

vnoremap z "xy:call TTS()<cr>
```
