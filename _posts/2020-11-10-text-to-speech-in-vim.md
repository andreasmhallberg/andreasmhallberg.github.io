---
layout: post
title: 'Text-to-speech in Vim (for proofreading)'
permalink: /text-to-speech-in-vim/
lang: en
length: medium
tags:
    - vim
updates: 
    - date: 2023-10-31
      contents: editing
    - date: 2020-11-17
      contents: spelling corrections (ironically)
---

I am terrible at proofreading my own texts, which many of my colleagues can attest to. I  was therefore happy to discover that MacOS has quite a good text-to-speech feature and that this features can be accessed from the command line. This means that I can quite easily integrate it into my Vim workflow, a prerequisite for me using it at all. This has turned out to be incredibly useful and it is something I now use daily for most texts I write. When the text is read back to me by the friendly lady inside my computer I can easily hear if something is spelled incorrectly, since she, unlike me, doesn't know how to skim over miss-spelled or repeated words. Below I describe how I use the speech synthesis in Vim and thereafter I provide the code I have in my `.vimrc` to get this functionality.

The basic functionality of this implementation is that I can mark text in visual mode and heave it read aloud by pressing `z`. The language of the speech synthesis is based on the `spelllanguage` setting (in my case Swedish or English). The reading aloud is stopped with the `ESC` key. I typically do something like `vip` to mark a paragraph and then `z` to have it read aloud. I stop it with `ESC` if I hear something read wrong, and then have the re-mark the rest of the paragraph with `v}z` and have this section read aloud `z`.

I mostly write text in [pandoc flavored markdown](https://pandoc.org/MANUAL.html#pandocs-markdown) and the speech synthesis reads some of the markup aloud as well, which is annoying. I therefore have several substitution commands that the text is sent through before it is passed to the speech synthesis. These substitutions either removes things or convert them to things that make more sense when read aloud. These substitutions make the speech synthesis, among other things, do the following: 

- ignore all `*`, `<`, `>`, and `$`
- read citation keys (for me formatted as `<author>_<noun>_<year>`) as "citation" followed the year of the publication
- read markdown footnotes as "footnote: `<label>`" or "footnote text:" followed by the footnote content, depending on formatting
- ignore the target-part in `[<link text>](<target>)`-type links
- read URLs as "URL" instead of spelling out the entire address

After some experimentation, I have set the reading rate to 250 words per minute. This is quite fast, and I have to focus to keep up and stop it whenever I want to do an edit. 

The code below is what I have in my `.vimrc` to get this functionality. It was written with a lot of help from [this thread in r/vim](https://www.reddit.com/r/vim/comments/2odq4l/osx_texttospeech_in_vim/). I am not a programmer, and I am sure the code could be made more elegant. It has nevertheless worked well for me thus far. If you use this code you will most likely want to adapt it to your needs and tastes, especially the mapping and the list of `sed` substitutions. There are also several similar open source alternatives one could use instead of MacOS's `say`, such as [`espeak`](http://espeak.sourceforge.net/).

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
