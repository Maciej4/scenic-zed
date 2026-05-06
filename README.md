# Scenic language support for Zed

This workspace contains a minimal Zed language extension for Scenic. It registers
a local Tree-sitter grammar, associates `.scenic` and `.sc` files with the
Scenic language, and provides syntax highlighting, brackets, indentation,
outline, and comment/string override queries.

The workspace also includes `.zed/settings.json` to associate Scenic suffixes
with the Scenic language and keep language-server diagnostics disabled for
Scenic buffers.

Install it in Zed with `zed: install dev extension` and select this directory:

```text
/Users/m/git/scenic-lsp
```

The grammar lives in `tree-sitter-scenic` and is pinned in `extension.toml` by
local Git revision.
