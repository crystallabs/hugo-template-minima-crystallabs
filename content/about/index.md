---
title: "About"
date: 2023-07-23T19:51:47+02:00
lastmod: 2023-07-30
draft: false
toc: true

description: "Site purpose. Content organization."
#banner: image.png
series: ["site"]
tags: ["site"]
#math: false
#diagram: false
#comment: false
#link: 
---

## About

About site.

### Content

Site content is organized into posts. There is a main menu at the top, accessible from every page, allowing navigation and searching.

Menu "{{< l "/" Articles >}}" displays all articles in a single page. This is the current homepage of the site.

Menu "{{< r tags >}}" enables browsing the articles by tags (topics).

Menu "{{< r series >}}" enables browsing groups of articles (larger, multi-part topics). All articles in a series are automatically interlinked at the bottom of their pages.

Menu "{{< r search >}}" allows searching the articles by title, link, summary, description, and content.

### Tags and Series

Content is grouped by tags and series.

#### Tags

Tags are used to index articles by subjects they describe in more detail than just as a passing reference.

Apart from _specific_ tags named after the subject they describe (e.g. "git"), the following generic (_meta_) tags have been defined in `data/tags.yaml`:

{{< tags >}}

The complete list of tags can be seen on page [/tags](/tags).

#### Series

Series are groups of related articles that should be read in the suggested order the first time, almost like a book.
They provide organized guidance to becoming a qualified user in the subject matter.

The following series have been defined in `data/series.yaml`:

{{< series >}}

The complete list of available series can be seen on page [/series](/series).
