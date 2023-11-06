---
layout: post.liquid
title:  "ZSA's Voyager, part 1"
date: 2023-11-05 Mo 19:20
last_updated: 2023-11-05 Mo 19:20
tags:
  - journal
  - kbd
  - zsa
  - voyager
  - hobby
categories: [journal, hobby, kbd]
permalink: /2023-11-05-zsa-voyager-pt1
toc: false
---


# ZSA's Voyager, part 1

I had only one goal, to replicate my Moonlander layout in the
Voyager and it took longer than I had expected.

I already have a good setup for the Moonlander and I wanted to
simply copy-paste my Moonlander layout in the Voyager. I use a 34
key layout inspired by the Ferris Sweep. This layout fits perfectly
into both the Moonlander and the Voyager and somehow I expected that
it would be possible to just drag-and-drop my layout.

Oryx lacks this ability to easly transfer a Moonlander layout into
the Voyager. In the end I had to configure the Voyager's entire
layout by hand, key by key, slowly and painfully. 

It could have been worse, I knew exactly what each key should do, so
I was able to almost mindlessly replicate each key assignment
withouth thinking too much.

I would summarize this experience as follows:

1.  there is no keyboard friendly to use Oryx
2.  you cannot reuse a Moonlander layout for the Voyager
    -   this means that your layouts are bound to become out of
        sync :'(
3.  you cannot duplicate a key using Oryx
    -   swapping is possible, so I'm think the lack of copying is just
        a missed opportunity to make life easier
4.  some use cases require macros that are longer than the allowed
    limit


## Duplicating a layout: no can do

Initially I thought that I could simply export my Moonlander layout
and then import it into the Voyagers'. This however is not
supported. It seems that some people have been able to achieve
reuse by managing their layouts in code but that's above my level
of commitment for the moment.

It took me a couple of days to replicate the important parts of my
layout, I have a small child so I could only work here and there
when I was free of my parental responsibilities.

The experience is much improved from the Moonlander where I
constantly need to poke my board with a paperclip, having a real 
button is nice.


## Duplicating a key: no can do

You cannot duplicate a key and there is no keyboard friendly way to
edit a key assignment, which is ironic.

While trying to mindlessly replicate my Moonlander layout I came
across some problematic layers; layers that are full of macros,
which can be long and tedious to configure.

I use Emacs Org mode and I groups of macros mapped to Org mode
commands. Since the different commands are part of a group, they
tend to have the same prefix, e.g.,

1.  `C-c C-x C-i`: clock in
2.  `C-c C-x C-o`: clock out
3.  `C-c o`: open link
4.  `C-c l`: create link
5.  `C-c a a v c`: view clocked time

Many Org commands start with `C-c` and after configuring the second
or third one, I wished there was a way to duplicate a key
assignment, so that I would only have to edit the differences
between macros.

I also wished there was a faster way to input macros, having to
click in the UI requires too many clicks.

I use Vimium, a Chrome extension that allows you to reduce mouse
use when interacting with websites. Using it for setting up macros
helped but the experience was not optimal.


## Long macros are sometimes necessary

Over time I have accumulated patterns, common keybinding sequences
when working with Org mode. One of them is to look at the agenda,
find an item, clock-in, open the item and close all other Emacs
windows, I call this pattern, focus. It allows me to focus on the
task at hand and start tracking time on it.

The sequence goes like this:

1.  Open my custom agenda
2.  Find a task
3.  **Focus on task**
    1.  Clock in: `C-c C-x C-i`
    2.  Go to task: `RET`
    3.  Narrow to subtree: `C-x n s`
    4.  Delete other windows: `C-x 1`

Now, the important part is **Focus on task**. I wanted to create a
macro to capture this pattern but this would exceed the maximum
lenght allowed in Oryx. 

I found a workaround, but I paid the price in time since I had to
read some Lisp code and the Org mode docs, which was more
than I was willing to commit to at the beginning:

    ;; Focus on task
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

-   The Voyager looks amazing, feels amazing and is tiny, compared to
    the moonlander
-   It's great that you don't need to carry an Allen key and a paper
    clip everytime you change locations
-   I love not having to worry if this is the last time I can unfold
    the thumb clusters and have them still work
-   I was skeptical about the lack of wrist support, however the
    Voyager is so thin that I don't miss them at all
-   There is room for improvement in terms of:
    -   layout reusability/transferability between size-compatible
        keyboards
    -   less tedious and keyboard friendly ways to edit key assignments

