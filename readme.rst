#################################################
reStructuredText syntax highlight with spellcheck
#################################################

This syntax highlight scheme was written to enable spell-checking inside most
of reStructuredText content.

As of February 2021, built in ``rst.vim`` (shipped with *Neovim*) and *Riv.Vim*
plugin have spell-checking inside directives disabled, which for me has
resulted in some errors leaked into my documentation.

This filetype plugin is at early stage of development and not supporting
reStructuredText syntax in it's entirety. It still has some bugs, yet it
provides most of functionality I use everyday.

This plugin does not yet conform to plugin writing guidelines.

Progress
########

- 🗹 Top-level field lists

- ☒ Option lists (won't do)

- 🗹 Escape any character

- 🗹 Emphasis and Strong emphasis

  - 🗹 Spellcheck emphasis and strong emphasis

- 🗹 Interpreted text

  - 🗹 Spellcheck interpreted text

- 🗹 Inline literals

  - 🗹 Spellcheck inline literals

- 🗹 Substitution reference

- 🗹 Inline role

- 🗹 Inline internal target

- 🗹 Footnote reference

- 🗹 Hyperlink reference

  - 🗹 Spellcheck hyperlink text

  - 🗹 Underline hyperlink address

- 🗹 Directive

  - 🗹 Formatlistpat

  - 🗹 Directive fields

  - 🗹 Highlighting inlines inside directive content

  - 🗹 Spellcheck inside directive

- ☐ Literal block

  - ☐ Coloring

  - ☐ Spellcheck inside literal block

- 🗹 Quoted literal block

  - 🗹 Coloring

  - 🗹 Spellcheck inside quoted literal block

- 🗹 Line block

  - 🗹 Coloring

  - 🗹 Spellcheck inside line block

- 🗹 Blockquote

  - 🗹 Coloring

  - 🗹 Spellcheck blockquote

- 🗹 Numbered lists

  - 🗹 Formatlistpat

  - 🗹 Highlight inlines

- 🗹 Unnumbered lists

  - 🗹 Formatlistpat

  - 🗹 Highlight inlines

- 🗹 Comment block

- ☐ Section headers

  - 🗹 Coloring

  - ☐ Spellcheck header text


Bugs
####

- Lines with interpreted text and inline literals sometimes can highlight
  nearby words

- Incorrect coloring of indented numbered lists (same as blockquote)

License
#######

MIT
