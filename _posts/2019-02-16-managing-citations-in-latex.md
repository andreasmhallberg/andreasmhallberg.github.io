---
layout: post
title: A very quick introduction to managing citations in LaTeX
permalink: /managing-citations-in-latex/
lang: en
length: medium
tags: 
- latex
 # updates:
 #  - date:
 #    contents:
---

This is a quick introduction of how to use citations in LaTeX using the [`biblatex`](https://www.ctan.org/pkg/biblatex) package. It is intended for someone who is new to LaTeX and to provide the bare minimum required to get you up and running with automatically generated citations and bibliography in the outputted pdf. I assume that you have some basic understanding of LaTeX, the command line interface, and have a [standard distribution of LaTeX](https://www.latex-project.org/get/) installed.

## Gathering your references

In LaTeX, references are stored in a file with the `.bib` extension. Let's call ours `refs.bib`. Each entry in the file starts with `@` followed by the reference type; `article`, `book`, `incollection` (i.e. book chapter), etc. Then within curly braces is first a unique citation key for the reference. This key is used whenever you want to cite this reference in your text. Then follows key-value pairs giving meta data used to generate citations and bibliography posts. Depending on reference type, different keys should be set. For example, for the `article` type you need a `journaltitle`, which you don't need for the `book` type. 

In our example, let's say we want to cite two sources in our paper, so we have a file `refs.bib` containing the following, one article and one book:

```
@article{ferguson_diglossia_1959,
	Author = {Ferguson, Charles A.},
	Date = {1959},
	Issn = {0043-7956},
	Journaltitle = {Word},
	Pages = {325--340},
	Title = {Diglossia},
	Volume = {15}}

@book{rayner_psychology_2012,
  title={Psychology of reading},
  author={Rayner, Keith and Pollatsek, Alexander and Ashby, Jane and Clifton Jr, Charles},
  year={2012},
  publisher={Psychology Press}
}
```

As we will see in a minute, you typically don't need to change these entries manually, other then citation keys (`ferguson_diglossia_1959` and `rayner_psychology_2012` in the example above). It is useful to have a consistent and predictable form for citation keys. I use 

```
〈first author〉_〈first noun in title〉_〈year〉
```

This way you don't need to look up the citation key when you wont to cite it, you just need to remember the author's name, title, and year.

You can type entries in your `.bib` file manually, but it's better not to. If you look up a reference on Google Scholar, you can click on the outlined quotation mark below each post after a search and choose BiBTeX at the bottom. This gives you text similar to that above that you can paste into your `.bib` file to make it available for citations. In a reference manager like the free and excellent [Zotero](http://www.zoteri.org) you can right-click on a post, choose export, and get the BiBTeX post in your clipboard to paste it in `refs.bib`. You can also export your entire Zotero library to BiBTeX-format.

## Citing your references

Now, when you have a bunch of references in `refs.bib`, you place it the same directory as your `.tex` file to make it accessible. In the preamble of your `.tex` file, add the following:


``` tex
\usepackage[style=authoryear]{biblatex}
\addbibresource{refs.bib}
```

The first line loads the BibLaTeX package that we use to handle references. With this package we set one basic option: `style=authordate` tells BibLaTeX to use parenthesis-type citations. The default, `numeric`, produces numbered citations in the running text, as is common in the sciences. There are a whole bunch of styles to choose from listed on p.67ff in the [`biblatex` manual](http://mirrors.ctan.org/macros/latex/contrib/biblatex/doc/biblatex.pdf) and it is possible to download other ones. 


The `\addbibresource` command specifies in which file to look for the references. In our case we have the references in the file `refs.bib` as described above. This can also be a file path to a file anywhere on you machine. This is useful because it allows you to have one `.bib` file with a references you might ever want to cite in any paper all gathered in one place, and then reference it from several different `.tex` files.

So with this in the preamble we can start citing in the running text

```tex
In his seminal article, \textcite[330]{ferguson_diglossia_1959} stated
that ``bla bla bla''. Also cognitive aspects of reading are quite interesting
\parencite{rayner_psychology_2012}.

\printbibliography
```

As you can see there are several different citation commands, all calling the appropriate citation key. `\textcite` produces the author's name and the year in parenthesis. `\parencite` puts both author name and year in parenthesis. Another useful command is `\parencites`, with the plural `s` at the end, that lets you cite several works in the same parenthesis with `\parencites{key1}{key2}{key3}`. If you want to give a page you add it as an option to the command withing square brackets, as in the first citation above. Add the command `\printbibliography` where you want the bibliography to appear in your document, typically at the very end.

Now if you compile this, you get something like the following, with the citation keys printed in bold, but no proper references:

![Pdf pre-biber](/images/2019-02-16/pre-biber.png)

This is because you need to run another program, `biber`, on the file to match the citation keys with posts in the associated `.bib` file and work out what the citations and the bibliography should look like. Do this with by running `biber` on your `.tex` file, but without the `.tex` extension. So if your main text document is `article.tex`, in the command line you run `biber article`. Then you compile the `.tex` file as normal again and all the citations and the bibliography should be render properly.


![Pdf post-biber](/images/2019-02-16/post-biber.png)

The whole example document looks like this:

```tex
\documentclass{article}

\usepackage[style=authoryear,backend=biber]{biblatex}
\addbibresource{refs.bib}

\title{Testing citations in LaTeX}

\begin{document}

\section{A section}

In his seminal article, \textcite[330]{ferguson_diglossia_1959} stated that
``bla bla bla''. Also cognitive aspects of reading are quite interesting
\parencite{rayner_psychology_2012}.

\printbibliography

\end{document}
```

## Language support

`biblatex` will recognize the language set by the packages [polyglossia](https://www.ctan.org/pkg/polyglossia) or [babel](https://www.ctan.org/pkg/babel) and change citation and bibliography formatting accordingly. Therefore, `polyglossia`/`bable` should therefore be loaded before `biblatex` in the preamble.
