---
layout: post.liquid
title:  "From ZSA's Moonlander to Voyager, part 1"
date: 2023-11-05 Mo 19:20
last_updated: 2023-11-10 Fr 22:16
tags:
  - journal
  - kbd
  - zsa
  - voyager
  - hobby
categories: [journal, hobby, kbd]
permalink: /2023-11-05-zsa-voyager-pt1
toc: true
---

I had only one goal, to replicate my [Moonlander](https://www.zsa.io/moonlander/) layout in the
[Voyager](https://www.zsa.io/voyager/) and it took longer than I had expected.


## Installing my 34-key layout into the Voyager

I already have a good setup for the [Moonlander](https://www.zsa.io/moonlander/) and I wanted to
simply copy-paste my Moonlander layout in the [Voyager](https://www.zsa.io/voyager/). I use a 34
key [layout](#orgd168cf1) inspired by the [Ferris Sweep](https://github.com/davidphilipbarr/Sweep). It fits perfectly into both
the Moonlander and the Voyager boards and I expected it would be
possible to simply *transfer* my layout from one board to the
other, I was wrong.

[Oryx](https://www.zsa.io/oryx/) lacks the ability to transfer a Moonlander layout to
the Voyager. In ended up configuring my Voyager
layout from scratch, key by key, slowly and painfully. 

It could have been worse. I knew exactly what each key should do, so 
I was able to almost mindlessly replicate each key assignment
without thinking too much.

I would summarize this experience as follows:

1.  there is no keyboard friendly to use Oryx
2.  you cannot reuse a Moonlander layout for the Voyager
    -   this means that your layouts are bound to become out of
        sync :'(
3.  you cannot duplicate a key using Oryx
    -   swapping keys is possible, so I'm guessing copying/duplicating
        a key should be easy to add to Oryx
4.  I need macros that are longer than Oryx allows


## Duplicating a layout: no can do

I expected to be able to export my Moonlander layout and then
import it into the Voyagers'. This is not supported out of the
box. Some people <sup><a id="fnr.1" class="footref" href="#fn.1" role="doc-backlink">1</a></sup><sup>, </sup><sup><a id="fnr.2" class="footref" href="#fn.2" role="doc-backlink">2</a></sup> have been able to achieve reuse by
managing their layouts in code but that's above my level of
commitment for the moment.

It took me a couple of days to replicate the important parts of my
layout, I have a small child so I could only work here and there
when I was free of my parental duties.

The experience is improved compared to the Moonlander where I
constantly need to poke my board with a paperclip, having a real
button is nice.


## Duplicating a key: no can do

You cannot duplicate a key and there is no keyboard friendly way to
edit a key assignment, which is ironic.

While trying to mindlessly replicate my Moonlander layout I came
across some problematic layers; layers that are full of macros,
which can be long and tedious to configure.

I use [Emacs Org mode](https://orgmode.org/) and I have groups of macros mapped to Org mode
commands. Commands that are part of a group, typically have the
same prefix, e.g.,

1.  `C-c C-x C-i`: clock in
2.  `C-c C-x C-o`: clock out
3.  `C-c o`: open link
4.  `C-c l`: create link
5.  `C-c a a v c`: view clocked time

Many Org commands start with `C-c` and after configuring a few in
Oryx, I wished there was a way to duplicate a key assignment, so
that I would only need to work on the differences.

I also wished there was a faster way to assign macros, too many
clicks are required to configure just one macro.

I use [Vimium](https://chrome.google.com/webstore/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb), a Chrome extension that allows you to reduce mouse
use when interacting with websites. Using it to set up macros
helped but the experience was not optimal.


## Long macros

Over time I have accumulated patterns &#x2013; common keybinding
sequences &#x2013; for Org mode. One of them is to look at the agenda,
find an item, clock-in, open the item and close all other Emacs
windows, I call this pattern: **Start**. It allows me to focus on the
task at hand and start tracking time on it.

The sequence goes like this:

1.  Open my agenda
2.  Find a task
3.  Go to task: `RET`
4.  **Start:**
    1.  Narrow to sub tree: `C-x n s`
    2.  Delete other windows: `C-x 1`
    3.  Clock in: `C-c C-x C-i`

The important part is **Start** and I wanted a macro for it. However,
such macro exceeds the maximum length allowed in Oryx.

I found a workaround, but I paid the price in time. I had to
read some Lisp code and the Org mode docs, which was more
than I was willing to commit before I started.

The result was a short macro for the global keybinding: `C-u u`,
which fits within the Oryx limits. The macro in turn calls an elisp
function to do the rest:

    (defun zsa-start ()
      "Focus on task and clock in"
      (interactive)
      (org-narrow-to-subtree)
      (delete-other-windows)
      (org-clock-in)
      )
    
    ;; set global keybinding
    (global-set-key (kbd "C-c u") 'zsa-start)


## Conclusions

1.  The Voyager looks amazing, feels amazing and is tiny, compared to
    the Moonlander
2.  It's great that you don't need to carry an Allen key and a paper
    clip every time you change locations
3.  I love not having to worry if this is the last time I can unfold
    the thumb clusters and have them still work
4.  I was skeptical about the lack of wrist support but the
    Voyager is so thin that I don't miss them at all, same goes for
    tenting
5.  There is room for improvement in terms of:
    -   Layout re-use across board models
    -   Keyboard-friendly method to assign keys


<a id="orgd168cf1"></a>

## My ZSA keyboard layouts

I'm just going to put these here, you know, just to show off a
little bit =P &#x2026; and also 'cause they look cool.


### Moonlander

<div style="padding-top: 60%; position: relative;">
  <iframe src="https://configure.zsa.io/embed/moonlander/layouts/M440N/latest/0" style="border: 0; height: 100%; left: 0; position: absolute; top: 0; width: 100%"></iframe>
</div>


### Voyager

<div style="padding-top: 60%; position: relative;">
  <iframe src="https://configure.zsa.io/embed/voyager/layouts/XYwOW/latest/0" style="border: 0; height: 100%; left: 0; position: absolute; top: 0; width: 100%"></iframe>
</div>


# Footnotes

<sup><a id="fn.1" href="#fnr.1">1</a></sup> [How to duplicate a layout in Oryx](https://www.reddit.com/r/Moonlander/comments/zmoztx/how_to_duplicate_a_layout_in_oryx/)

<sup><a id="fn.2" href="#fnr.2">2</a></sup> [Sharing a layout between different ZSA models](https://www.reddit.com/r/Moonlander/comments/16avdb5/sharing_a_layout_between_different_zsa_models/)
