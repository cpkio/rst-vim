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

* [X] Top-level field lists
* [ ] Option lists
* [X] Escape any character
* [X] Emphasis and Strong emphasis
   * [X] Spellcheck emphasis and strong emphasis
* [X] Interpreted text
   * [X] Spellcheck interpreted text
* [X] Inline literals
   * [X] Spellcheck inline literals
* [X] Substitution reference
* [X] Inline role
* [X] Inline internal target
* [X] Footnote reference
* [X] Hyperlink reference
   * [X] Spellcheck hyperlink text
   * [X] Underline hyperlink address
* [X] Directive
   * [X] Formatlistpat
   * [X] Directive fields
   * [X] Highlighting inlines inside directive content
   * [X] Spellcheck inside directive
* [ ] Literal block
   * [ ] Coloring
   * [ ] Spellcheck inside literal block
* [X] Quoted literal block
   * [X] Coloring
   * [X] Spellcheck inside quoted literal block
* [X] Line block
   * [X] Coloring
   * [X] Spellcheck inside line block
* [X] Blockquote
   * [X] Coloring
   * [X] Spellcheck blockquote
* [X] Numbered lists
   * [X] Formatlistpat
   * [X] Highlight inlines
* [X] Unnumbered lists
   * [X] Formatlistpat
   * [X] Highlight inlines
* [X] Comment block
* [ ] Section headers
   * [X] Coloring
   * [ ] Spellcheck header text

Bugs
####

* [ ] Lines with interpreted text and inline literals sometimes can highlight nearby words
* [ ] Incorrect coloring of indented numbered lists (same as blockquote)

License
#######

MIT
