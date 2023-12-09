---
layout: post.liquid
title: "Homebrew package upgrade breaking stuff an how to deal with it"
date: 2023-12-08 Sa 11:01
last_updated: 2023-12-08 Sa 11:01
tags:
  - journal 
  - tech 
  - homebrew 
  - macos 
  - package-management 
  - gnupg
  - emacs
categories: [tech, journal]
#permalink: /2023-12-08-personal-homebrew-tap
toc: false
---

Homebrew package upgrades have regularly broken my personal setup,
blocking me from completing my current task. My personal Homebrew tap
allows me to install the specific versions of a package that I know
will work well with my setup.


# Invisible heading

Recently I ran a [Homebrew](https://brew.sh/) upgrade:

    brew upgrade

Later that day I noticed that saving [encrypted files in Emacs](https://orgmode.org/worg/org-tutorials/encrypting-files.html) was
[not really working](https://dev.gnupg.org/T6481). Anytime I would try to save changes Emacs would
hang indefinitely.

After some googling I found that many others were having the same
issue after upgrading their [GnuPG](https://www.gnupg.org/) package.

Initially I was able to fix the issue by following some [instructions
in StackOverflow](https://stackoverflow.com/a/76404609/400544). However, that only lasted until I ran into the
same issue in my work computer. This time it was a bit more tricky,
I had updated my local setup to pin the [minor version](https://semver.org/) of GnuPG to
version 2.2 so I was surprised that although the *correct* version
was installed Emacs would still hang during encryption.

It took me a while to notice that my personal computer was using a
version which only differed in at the patch level.

-   Work computer version: **2.2.42**
-   Personal computer version: **2.2.41**

Homebrew typically does not provide [versioned formulas](https://docs.brew.sh/Versions) for different
PATCH versions, so I was not able to simply do:

    brew install gnupg@2.2.41

I remembered how I once had a similar problem and was able to
install a specific version of another package, up to the PATCH
version. My solution at the time was to create a personal Homebrew
tap with a custom formula for the desired package.

So I found the original versioned [formula for gnupg@2.2](https://formulae.brew.sh/formula/gnupg@2.2) and [tweaked
it](https://github.com/pgpbpadilla/homebrew-pgpb/blob/master/Formula/gnupg%402.2.41.rb) a little bit to install version 2.2.41. This worked fine,
although the install time got longer since it's built from sources.

You can find the results in my personal Homebrew tap in Github:
[pgpbpadilla/homebrew-pgpb](https://github.com/pgpbpadilla/homebrew-pgpb/blob/master/Formula/gnupg%402.2.41.rb).

