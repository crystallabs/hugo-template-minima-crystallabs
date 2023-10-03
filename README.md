## Introduction

This article explains how to set up a blog using {{< L "https://gohugo.io/" Hugo >}} and the same theme, format, and features as seen on https://crystallabs.io/.

The article is also used as the theme's Git repository `README.md`, in which the shortcodes will display as text when viewed through Git. That minimal visual artifact is fine.

## Quick Start

Not to waste time, you can clone the whole template website and have the site running in no time:

```sh

git clone https://github.com/crystallabs/hugo-template-minima-crystallabs mysite
cd mysite

# For generating static pages, to be served by a web server:
# (Hugo server still runs permanently, to watch for changes to files)
./run.sh

# Or to run the standard Hugo server, as usual:
hugo serve
```

If you only want the theme and not the whole template website, just copy (or make a symlink to) the files in `themes/minima-crystallabs/` in this repository.

## Static Site Generator

Static site generator of choice is {{< L "https://gohugo.io/" Hugo >}}.

It is not the best static site generator, but it is cleaner than the venerable {{< L "https://en.wikipedia.org/wiki/Website_Meta_Language" WML >}} and much more reasonable than Gatsby.

Hugo has the ability to serve pages directly from its built-in web server, or you can generate static pages and serve them with an external web server.
Both options are shown.

## Theme

After seeing {{< L "https://decuser.github.io/" "Will (decuser) Senn's Blog" >}}, I found a blog theme more promising than various themes I found in the previous couple years.

That site is implemented in {{< L "https://jekyllrb.com/" "Jekyll" >}}, but searching for the theme named "minima" I was able to find a similar template for Hugo.

The theme was updated significantly and changed to name `minima-crystallabs`.

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

### Theme To-Do

- Devise a better way for code blocks to show difference between lines of input and output. (The current model where lines to highlight are manually specified with e.g. `sh {hl_lines="1-2"}` is impractical)

- Improve link colors when using dark theme

- Improve content of `/tags` and `/series` pages, to include descriptions like `tags` and `series` shortcodes do

- Visually better integration of the banner feature?

## Theme Customization

You can create the `layouts/` directory at the same level with `hugo.yaml` and put your customizations there.

## Serving the Website

As mentioned in Quick Start, you can serve the site by running:

```sh
# For generating static pages, to be served by a web server:
# (Hugo server still runs permanently, to watch for changes to files)
./run.sh
```

Or you can run the usual Hugo server as it comes by default:

```sh
hugo serve
```

### Nginx config

To serve a completely static website via Nginx, you could use a basic config such as:

```nginx
server {
	listen 1313 default_server;
	listen [::]:1313 default_server;

	server_name _;

	root /var/www/html;

	index index.html index.htm index.nginx-debian.html;

	location / {
		try_files $uri $uri/index.html =404;
	}

	location ~ /\.ht {
		deny all;
	}
}

```

(The example does not show SSL setup because it is behind a proxy.)
