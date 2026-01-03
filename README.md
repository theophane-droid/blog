### README (English)

````md
# Blog

Source code and content for **nobisd.fr** (posts, pages, theme overrides, and build/deploy config).

## Website
- Production: https://nobisd.fr
- Sitemap: https://nobisd.fr/sitemap.xml
- RSS: https://nobisd.fr/index.xml (may vary depending on config)

## Tech
- Hugo (static site generator)
- Markdown content
- Theme: PaperMod (or your current theme)

## Local development

### Requirements
- Hugo (extended recommended)

### Run
```bash
hugo server -D
````

### Build

```bash
hugo --minify
```

## Writing posts

```bash
hugo new posts/my-post.md
```

## SEO notes

* One H1 per page (the title). Use H2/H3 for sections.
* Add summary/description in front-matter.
* Optimize images (WebP when possible, meaningful filenames, alt text).
* Internal linking between related posts.

## Contributing

Issues and PRs welcome (typos, improvements, suggestions).

