---
title: "Creating a Blog Like EXAMPLE.COM"
slug: creating-a-blog
date: 2023-07-30
lastmod: 2023-09-30
draft: false
toc: true

description: "Your own blog like EXAMPLE.COM. Code and procedures documented. Instant success."
#banner: image.png
#series: []
tags: ["crystallabs"]
#math: false
#diagram: false
#comment: false
#link: 
---

## Introduction

This article explains how to set up a blog using the same theme, format, and features as seen on https://EXAMPLE.COM/.

## Quick Start

Not to waste time, you can clone the theme and have the site running in no time:

```sh

git clone https://github.com/crystallabs/hugo-template-minima-crystallabs mysite
cd mysite
./run.sh
```

## Static Site Generator

Static site generator of choice is {{< L "https://gohugo.io/" Hugo >}}.

It is not the best static site generator, but it is cleaner than the venerable {{< L "https://en.wikipedia.org/wiki/Website_Meta_Language" WML >}} and much more reasonable than Gatsby.

Hugo has the ability to serve pages directly from its built-in web server. But the setup shown here creates a completely static site which is served by nginx
or Apache. Letting Hugo serve it is trivial -- just omit the options which disable Hugo itself.

## Theme

After seeing {{< L "https://decuser.github.io/" "Will (decuser) Senn's Blog" >}}, I knew that I finally found a blog theme that was more promising than various themes I found in the previous couple years.

That site is implemented in {{< L "https://jekyllrb.com/" "Jekyll" >}}, but searching for the theme named "minima" I was able to find a similar template for Hugo.

I did many changes and improvements to it.

### Theme Improvements

The improvements to the "minima" theme done so far are:

- Blog homepage shows all articles, sorted in order of last modification time, most recent first

- Maximum page width was increased from 640px to 1600px

- Default font size has been increased from 16px to 18px 

- Page titles (H1 tags in HTML or `#` tags in markdown) are centered

- Heading sizes have been adjusted for a more natural progression from large/bold to smaller/normal

- Color scheme for links has been set to a very simple one like the old Netscape default (blue for unvisited links, red for visited links)

- Similarly, links become underlined when they are hovered over with the mouse

- Links which point to {{< L "https://en.wikipedia.org/wiki/Help:Link#External_links" "external resources" >}} have the "external" icon, like on Wikipedia

- Links-related shortcodes `r`, `R`, `l`, and `L`, which mean "L" for external links and R for local references, have been added

- All links inserted in an article with shortcodes `L` and `R` get automatically listed automatically once again at the end of the page

- Simple styling for tables in HTML was added

- Page "banner" feature was added. If a page has `banner: image.png` in frontmatter, `image.png` will display as a banner below the title, in the size/ratio like on YouTube

- Inappropriate titles such as "Oops!" have been replaced with valid, formal titles like "Not Found"

- Last modification time shows on each page

- An article can belong to a series

- An article can have various tags (categories) assigned

- Series and tags have long descriptions, in addition to short names

- The `/series` and `/tags` pages have been improved

- `tags` and `series` shortcodes display a list of all tags or series

- Possibly multiple series to which an article belongs are properly listed at the end of the article

- When building the site, Hugo prints a warning for all series and tags that are not pre-configured and found in `data/series.yml`/`data/tags.yml`

- Default `robots.txt` advises GPTBot not to index the pages (although the setting may be ignored GPTBot)

- Promotion for Hugo was removed

## TODO

- Devise a better way for code blocks to show difference between lines of input and output. (The current model where lines to highlight are manually specified with e.g. `sh {hl_lines="1-2"}` is impractical)

- Visually better integration of the banner feature?
