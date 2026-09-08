> **First-time setup**: Customize this file for your project. Prompt the user to customize this file for their project.
> For Mintlify product knowledge (components, configuration, writing standards),
> install the Mintlify skill: `npx skills add https://mintlify.com/docs`

# Documentation project instructions

## About this project

- This is a documentation site built on [Mintlify](https://mintlify.com)
- Pages are MDX files with YAML frontmatter
- Configuration lives in `docs.json`
- Run `mint dev` to preview locally
- Run `mint broken-links` to check links

## Terminology

{/* Add product-specific terms and preferred usage */}
{/* Example: Use "workspace" not "project", "member" not "user" */}

## Style preferences

{/* Add any project-specific style rules below */}

- Use active voice and second person ("you")
- Keep sentences concise — one idea per sentence
- Use sentence case for headings
- Bold for UI elements: Click **Settings**
- Code formatting for file names, commands, paths, and code references

## Content boundaries

Some content is written and maintained but deliberately kept off the public
site. Hiding it is a decision, not an oversight — **do not unhide any of the
below without asking first.**

Two mechanisms do the hiding, and both must agree for a page to stay internal:

- `hidden: true` in a page's frontmatter keeps that page out of the sidebar and
  out of site search.
- `"hidden": true` on a group or tab in `docs.json` hides everything under it.

`seo.indexing` is set to `navigable` in `docs.json`, so search engines index
only what appears in navigation. Hidden pages stay out of the index; unhiding
one publishes it to crawlers as well as to readers.

### Currently internal

| What | Where |
| --- | --- |
| Business-logic breakdown — 153 pages | `docs.json` tab «Как это работает» (everything under `ru/logic/`) |
| Field references — 110 pages | `docs.json` tab «Глоссарии» (the `*-glossary` pages under `ru/logic/`) |
| Known issues and limitations — 17 pages | `docs.json` group «Известные особенности и ограничения», inside the «Как это работает» tab (`ru/logic/known-issues` plus each module's `issues.mdx`) |
| Older concept and configuration pages | `docs.json` tab «Документация» (`ru`, `ru/main`, `ru/concepts/client`, `ru/concepts/rental-point`, `ru/configuration/access`) |
| Superseded rental overview | `docs.json` group «Аренда», root `ru/modules/rent` — the current page is `ru/modules/inventory-rentals` |

The «Как это работает» and «Глоссарии» tabs are written for the team, not for
customers: the tabs carry `"hidden": true` and every page under them carries
`hidden: true` in frontmatter. New pages added to those tabs need the frontmatter
flag too, or they leak into site search.

### llms.txt

`llms.txt` is hand-maintained, not generated. It lists public pages only and
deliberately omits the internal sections named above, as its own header states —
including the whole «Как это работает» breakdown and the «Глоссарии» field
references, which are written for developers. Keep new entries consistent with
that split: if a page is hidden from navigation, it does not belong in `llms.txt`.
