---
layout: post
title: Typing Swedish characters with American keyboard layout in Vim 
permalink: /swe-with-us-kb-layout/
lang: en
length: medium
tags: 
- vim
updates: 
    - date: 2017-03-18
      contents: An earlier version of this post described how to implement this new keypoard layout with a series of mappings in the `.vimrc`. The method described below with an external `keymap` file is much more convenient.
---

In this post I describe a method for extending the standard US keyboard layout to type Swedish characters in Vim. This is done with minimal changes to the layout and without moving characters around.

{% raw %}
When writing some sort of computer code, the American keyboard layout is more convenient than the Swedish layout that most Swedes are used to. This is because many of the non-alphabetical characters, `\` and&nbsp;`{` for instance, are more readily available on the American layout. These are direct key presses on the American layout whereas they require combinations with the ALT-key on the Swedish layout. Since most of the things I write are in English I often don't need the `å`, `ä`, and&nbsp;`ö` and thus mostly use the US layout.

Now, every now and again I need to write something in Swedish. The standard way of doing this, and the way I used to do it before my romance with the text editor Vim, was to use the layout switching feature of the operating system. This can be set to switch between two or more keyboard layouts, for example the American and Swedish layouts (shown below). The switch can be mapped to some easily accessed key combination. I have it set to COMMAND+SPACE on my Mac. This is quite convenient if you are typing in a lot of different applications. The problem with this is that the Swedish keyboard layout not only adds three Swedish characters (relative to the American layout), it also moves a bunch characters around, including `?`,  `:`, `;`, `-`, `"`, `&`, `*`, `\`, `/`,&nbsp;`` ` ``, and all four pairs of delimiters (`<`, `[`, `(`, and&nbsp;`{`). So if you are used to the positioning of these characters in the American layout, as I am, things get very confusing, even when writing normal prose.

![American keyboard layout](/images/kblayoutusa.png)

![Swedish keyboard layout](/images/kblayoutswe.png)

A solution to this problem in Vim, where I do almost all kinds of typing anyways, is to configure a pseudo-Swedish keyboard layout that only adds the `å`, `ä`, and `ö` and their uppercase variants without moving other characters around. However, adding these keys to the American layout according to their normal position masks some characters by now occupying their positions on the keyboard, making the masked characters no longer accessible. More specifically:

`å` masks `[`  
`Å` masks `{`  
`ä` masks `'`  
`Ä` masks `"`  
`ö` masks `;`  
`Ö` masks `:`

Mapping these masked characters to other positions keys on the keyboard is not a good solution if your are often switching between layouts, since it messes up your muscle memory. Moving them would also mask other characters and just move the problem around. Instead, I opted to have the masked characters remain and have them accessed with double key presses, so that pressing `åå` produces `[`, `ÅÅ` produces `{`, etc. Luckily, in Swedish you never type double å, ä, or&nbsp;ö, so these double key sequences are a "free space" on the keyboard. (In fact, typing the previous sentence was the first time this has ever been a problem.) This solution is a much smaller adaptation of the American layout than having everything move around whenever you are switching between the two layouts. I call this mapping swe-us.


I have applied this layout in Vim by having the code below in the [my `.vimrc`](https://github.com/andreasmhallberg/dotfiles/blob/master/.vimrc) (slightly modified here to make it self-contained and more easily copyable).

``` vim
function! SweType()
  set keymap=swe-us
  set spelllang=sv
endfunction

nnoremap <Leader>s :<C-U>call SweType()<CR>

"{{{2 Switch to English
function! EngType()
  set keymap=
  set spelllang=en_us
endfunction

nnoremap <Leader>s :<C-U>call EngType()<CR>
```

What this does is to map the keys `<Leader>s` and&nbsp;`<Leader>\e` (typically the leader key will be&nbsp;`\`) to switch between these Swedish and English keyboard layouts. The mappings also change the spell language accordingly.

The swe-us keyboard layout  is defined in the file `swe-us_utf-8.vim` which goes in `~/.vim/keymap/`. This only changes mappings in insert mode, leaving all your normal mode mappings untouched, and it interacts with the `r` and&nbsp;`x` operations and the like. The file is quite small since only a few keys are modified from the default US layout. It applies all the changes to the US layout discussed above. This is the entire file:

``` vim
let b:keymap_name = "swe-us"

loadkeymap
[	å
[[	[
{	Å
{{	{
'	ä
''	'
\"	Ä
\""	"
;	ö
;;	;
:	Ö
::	:
```

Since a started using these settings, and after a week or so of learning it, typing Swedish in Vim is much less of a pain. No more finger gymnastics such as Alt+Shift+7 to get a simple backslash. The double key presses to get the "underlying" masked character is however a bit difficult to get use to.
{% endraw %}
