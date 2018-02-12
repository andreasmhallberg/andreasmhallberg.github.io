---
layout: post
title: Typing Arabic in Vim 
permalink: /typing-arabic-in-vim/
language: English
lang: en
length: long
tags:
- vim
thumbnail: /images/2017-06-22/rtl.png
---


I often write documents, such as exams and lecture notes, that contain both Latin and Arabic script, often on the same line of text. This can be challenging due to the complications of mixing of LTR (left-to-right) and RTL (right-to-left) scripts. This seems like an easy problem to solve for software developers, and it is, only not in software with graphical WYSIWYG interfaces, such as Word or OpenOffice. (I'm sure everyone who has tried writing mixed direction text in such softwares share my frustration with them, and I will therefore refrain from rants.) Since my shift to exclusively producing and editing text in plain text formats (.txt, .mkd, .tex, etc.) with the editor Vim, writing texts with mixed directionlity has become a lot easier. This post is  an attempt to explain how.

When typing and editing text on computer, switching from working with Latin script to Arabic script at the most basic level involves changing two things: a)&nbsp;the direction in which characters appear on the screen, and b)&nbsp;the keyboard layout that is used to insert characters in the text. In Vim, each of these two changes is done independently of one another with the options `rightleft` for directionality and `keymap` for the keyboard layout.

## Directionality and display

It is important to understand that text is stored electronically as series of characters, including spaces and line breaks, order one after another in a long list. Think of this as a list of all keystrokes used to produce the text. Arabic characters come encoded with information that they are to be displayed LTR, but it doesn't effect the order in which they are electronically stored. Thus, if I type `hello` the letters are stored in that particular order, and it can be displayed as LTR (`hello`) or as RTL (`olleh`) with without changing the logical order in which they are stored, only the direction in which they are displayed on the screen has changed. If i type the letters `م` `ر` `ح` `ب` `ا`, they can be displayed as LTR (`ابحرم`) or as RTL (`مرحبا`) with the characters in same order but with different direction of display. For Arabic, the latter is of course appropriate.

Now, what WYSIWYG (What You See Is What You Get) word processors such as Word of OpenOffice do is that when they come across characters in the file that are part of an RTL alphabet, such as Arabic characters, it rearranges them so that they are displayed RTL on the screen. This is of course nice in that it shows the text as it is intended to be read by humans. However, try to highlight a portion of a text with mixed directionlity (or even with only RTL) with the mouse, add a comma at a direction switch, or enclose section in parenthesis and you are likely to run into trouble. Editing a text displayed like this is a pain.

Enter Vim. Vim lacks the capability of visually reordering specific letters according to the reading direction of that particular alphabet. All characters are displayed in a logical order and all are either displayed LTR or RTL, as shown in the image below. In the image to the left with LTR display the text in English is be displayed correctly and Arabic text reversed. In the image to the right with LTR display the text in English is reversed and Arabic text is displayed correctly.

![RTL display](/images/2017-06-22/ltr.png)&nbsp;![LTR display](/images/2017-06-22/rtl.png)

You switch between these two ways of displaying a text with `:set rightleft` for RTL `:set norightleft` for LTR. I have this mapped to the keystrokes `\a` for Arabic and `\e` for English to quickly switch back and forth. (This mapping also switches to Arabic keyboard layout, as explained below.) This way writing documents with mixed Latin/Arabic script becomes a process of quickly reorienting the entire text back and forth between these two modes of display. The idea is that all characters, regardless of how they are to appear in the final document are displayed in their logical, rather than in their proper visual order. The reordering of the characters as appropriate for final display is postponed to when the document is compiled or converted to its final form, be it in a .doc file, a pdf in the rendering of a HTML file in a browser (as in the text you are now reading).

The drawback of this method of changing the entire text back and forth between LTR to RTL is that it is a bit disorienting. It is more difficult to navigate the text you are writing using visual cues, like headings and list, since these change shape with every switch in directionlity. The gains are however significant. Navigating, marking, copying, pasting and generally moving things around becomes completely streamlined, intuitive, and friction free. You can edit and change stuff as easily as you would piece of text containing only Latin script.

## Keyboard layout

Vim also comes with its own Arabic keyboard layout (see `:h mbyte-keymap`). You switch to it with `:set keymap=arabic`. It is preferable to use Vim's internal settings for keyboard layout rather than the system for keyboard layouts in the operating system. Of you change the keyboard layout in the OS, commands in normal mode no longer work since the keys that are input to Vim are now different. Vim's core functionality is then lost. Vim's internal keyboard switching instead only applies to insert and search modes while normal mode is unaffected, meaning that everything works as normal, and you don't have to change the keyboard layout every time you enter or exit insert mode.

The keyboard layout and the text direction are thus set independently of one another. If you change the `keymap` option  without changing the `rightleft` option, you will insert Arabic characters that are displayed LTR, as in the image below. I have found that if you only type a few isolated Arabic words here and there in an otherwise LTR text, this is the most convenient way to do it. The Arabic words will look strange on the screen, with letters ordered LTR and connected according to this backwards order, but they are still more or less readable, and for a few isolated words this is not too big of a deal. It is well worth this inconvenience to avoid the hassle of editing text with mixed directionality. They Arabic words all align correctly when the final document is compiled.

![Arabic words in a LTR text.](/images/2017-06-22/arabic-in-ltr.png)

Another advantage of Vim's keyboard layouts is that they are very easy to modify. Each keyboard layout is specified in a file that consists of two columns, the first containing the input key and the second the output character. The example below is an excerpt from the Arabic keyboard layout with the output characters given as Unicode character codes.

``` vim
loadkeymap
q	<char-0x0636>	" (1590)	- DAD
w	<char-0x0635>	" (1589)	- SAD
e	<char-0x062b>	" (1579)	- THEH
r	<char-0x0642>	" (1602)	- QAF
[...]
```

This is very useful. I am for example used from PC-standards to having the letter *dhaal*&nbsp;(ذ) on the §-key at the top left of the keyboard, but in Vim's Arabic layout it is on the \`-key next to the left shift. To change this I copied the original Arabic keymap file (I&nbsp;use MacVim so this file is locate in `/Applications/MacVim.app/Contents/Resources/vim/runtime/keymap/arabic_utf-8.vim`) to `~/.vim/keymap/` and changed its name to `arabic-pc_utf-8.vim` to differentiate it from the original file. The file name is arbitrary accept that it must end with `_utf-8.vim`. In this new file I changed the input key that produces the letter *dhāl* from `` ` `` to `§` (line&nbsp;54). I can now call this new modified keyboard layout with `:set keymap=arabic-pc` (using the first part of its file name). You could also change the original file, but this method is better since you can store the new file separately and make it more easy accessible for different Vim installations. My slightly modified Arabic keymap file can for instance be found [here](https://github.com/andreasmhallberg/dotfiles).


## Wrap-up: Language switching command

If you find yourself often having to switch back and forth between English (or some other language that uses Latin script) and Arabic, it is a good idea to map a function that switches to RTL directionality and the Arabic keyboard layout and back again. I have this set to `\a` for Arabic and `\e` for English using the code below (adapted from [my vimrc](https://github.com/andreasmhallberg/dotfiles/blob/master/.vimrc)).

``` vim
" Switch to English - mapping
noremap <Leader>e :<C-U>call EngType()<CR>
" Switch to Arabic - mapping
noremap <Leader>a :<C-U>call AraType()<CR>

" Switch to English - function
function! EngType()
" To switch back from Arabic
  set keymap= " Restore default (US) keyboard layout
  set norightleft
endfunction

" Switch to Arabic - function
function! AraType()
    set keymap=arabic-pc "Modified keymap. File in ~/.vim/keymap/
    set rightleft
endfunction
```

Alternatively, and much simpler, you can use `:set arabic` to change to RTL and the default Arabic keyboard layout (see `:h arabic`).
