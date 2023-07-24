---
layout: post
title: Ergonomic Arabic transcription in Vim
permalink: /ergonomic-arabic-transcription/
lang: en
length: short
tags:
  - transcription
  - vim
 # document: /documents/xx.pdf
 # documenttitle: 
 # thumbnail: /images/xx.png
 # updates: 
 #  - date:
 #    contents:
excerpt: |
    <p>In <a href="/emulating-alt-latin-in-vim/">a previous post</a> I described how I have implemented the <a href="http://mamluk.uchicago.edu/unicode.html">Alt-Latin keyboard layout</a> for Arabic transcription in Vim. While this works reasonably well for one-off words, it gets tedious and cumbersome if you do a lot transcription, for example for writing a large number linguistic examples or entire paragraphs. This is because the layout includes some awkward key-chords, like <kbd>Alt</kbd><kbd>a</kbd>+<kbd>u</kbd> for <em>ū</em> or <kbd>Alt</kbd><kbd>w</kbd>+<kbd>g</kbd> for <em>ġ</em>. (A plus indicates sequential key presses.) These are not only physically cumbersome to type but are also somewhat difficult to remember. This got me thinking about other solutions that may be faster and more intuitive and ergonomic. After some testing I came up with the following scheme that I find works much better.</p>
---

In [a previous post](/emulating-alt-latin-in-vim/) I described how I have implemented the  [Alt-Latin keyboard layout](http://mamluk.uchicago.edu/unicode.html) for Arabic transcription in Vim. While this works reasonably well for one-off words, it gets tedious and cumbersome if you do a lot transcription, for example for writing a large number linguistic examples or entire paragraphs.[^badiea] This is because the layout includes some awkward key-chords, like <kbd>Alt</kbd><kbd>a</kbd>+<kbd>u</kbd> for *ū* or <kbd>Alt</kbd><kbd>w</kbd>+<kbd>g</kbd> for *ġ*. (A plus indicates sequential key presses.) These are not only physically cumbersome to type but are also somewhat difficult to remember. This got me thinking about other solutions that may be faster and more intuitive and ergonomic. After some testing I came up with the following scheme that I find works much better.

[^badiea]: Arabic transcription of entire paragraphs is generally [a bad idea](/margin-notes-for-arabic-quotes/), but may be required for academic publishing in certain journals.

This alternative approach relies on linearly sequenced key presses without the use modifier keys. It exploits the fact that some character sequences, such as *aa, .d,* and *_t*, are rare or non-existent in English and in many other languages. These sequences can therefore be used to insert transcription-specific characters without interfering with other typing. The entire scheme can be described as follows:



- Long vowels with macron (*ā, ī, ū*) are typed as the double corresponding letter.[^oo]  
  <kbd>a</kbd>+<kbd>a</kbd> = *ā*, etc.

- Dotted versions of letters (*ḍ, ṭ, ġ*, etc.) are typed with a dot followed by the letter. The dot is places above or below as appropriate.  
  <kbd>.</kbd>+<kbd>d</kbd> = *ḍ*,  
  <kbd>.</kbd>+<kbd>g</kbd> = *ġ*, etc.

- Underlined letter are typed with an underscore followed by the letter.  
  <kbd>_</kbd>+<kbd>d</kbd> = *ḏ*, etc.[^underscore]

- *š* is typed with *v* followed by *s*.  
  <kbd>v</kbd>+<kbd>s</kbd>

[^oo]: Of course, if you want to extend this to non-standard long vowels like *ō*, it will sōn run into trouble.

[^underscore]: This is not optimal, but *-d* intervenes with the hyphenated article and double *dd* etc. are too common.

All these also have corresponding uppercase versions, typed as you'd expect, <kbd>.</kbd>+<kbd>D</kbd> gives *Ḍ*, for example.

For *ʿayn* and *hamza* I have not figured out a good combination so I (somewhat hesitantly) keep the Alt-Latin chording:

- <kbd>Alt</kbd><kbd>p</kbd> = *ʿ*

- <kbd>Alt</kbd><kbd>P</kbd> = *ʾ*


The code below is what I have in my `.vimrc` to provide this functionality. It is toggled on and off for the current buffer with `:EALLToggle`. The code is rather primitive, just enabling and disabling a bunch of insert mappings, but it is simple, easy to modify to other transcription systems or user preferences, and it gets the job done.

Overall, I have found this scheme to offers much more comfortable and ergonomic typing of Arabic transcription than does Alt-Latin style key-chording.


``` vim
function! EALLToggle()
  if !exists("b:eallmappings")
    let b:eallmappings = 0
  endif 
  if b:eallmappings == 0
    let b:eallmappings = 1
    echo "EALL mappings activated for this buffer"
    inoremap <buffer> <M-p> ʿ
    inoremap <buffer> <M-P> ʾ
    inoremap <buffer> aa ā
    inoremap <buffer> ii ī
    inoremap <buffer> uu ū
    inoremap <buffer> AA Ā
    inoremap <buffer> II Ī
    inoremap <buffer> UU Ū
    inoremap <buffer> .d ḍ
    inoremap <buffer> .D Ḍ
    inoremap <buffer> .t ṭ
    inoremap <buffer> .T Ṭ
    inoremap <buffer> .s ṣ
    inoremap <buffer> .S Ṣ
    inoremap <buffer> .r ṛ
    inoremap <buffer> .R Ṛ
    inoremap <buffer> .z ẓ
    inoremap <buffer> .Z Ẓ
    inoremap <buffer> .h ḥ
    inoremap <buffer> .H Ḥ
    inoremap <buffer> .g ġ
    inoremap <buffer> .G Ġ
    inoremap <buffer> vs š
    inoremap <buffer> vS Š
    inoremap <buffer> _d ḏ
    inoremap <buffer> _D Ḏ
    inoremap <buffer> _t ṯ
    inoremap <buffer> _T Ṯ
  elseif b:eallmappings == 1
    let b:eallmappings = 0
    echo "EALL mappings deactiviated for this buffer"
    iunmap <buffer> <M-p> ʿ
    iunmap <buffer> <M-P> ʾ
    iunmap <buffer>aa
    iunmap <buffer>ii
    iunmap <buffer>uu
    iunmap <buffer>AA
    iunmap <buffer>II
    iunmap <buffer>UU
    iunmap <buffer>.d
    iunmap <buffer>.D
    iunmap <buffer>.t
    iunmap <buffer>.T
    iunmap <buffer>.s
    iunmap <buffer>.S
    iunmap <buffer>.z
    iunmap <buffer>.Z
    iunmap <buffer>.h
    iunmap <buffer>.H
    iunmap <buffer>.g
    iunmap <buffer>.G
    iunmap <buffer>vs
    iunmap <buffer>vS
    iunmap <buffer>_d
    iunmap <buffer>_D
    iunmap <buffer>_t
    iunmap <buffer>_T
  endif
endfunction

command! EALLToggle call EALLToggle()
```
