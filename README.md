# Scenic language support for Zed

This repository contains a minimal Zed language extension for
[Scenic](https://github.com/BerkeleyLearnVerify/Scenic). It associates
`.scenic` and `.sc` files with Scenic and provides Tree-sitter syntax
highlighting, brackets, indentation, outline, and comment/string override
queries.

The Tree-sitter grammar lives in
[`Maciej4/tree-sitter-scenic`](https://github.com/Maciej4/tree-sitter-scenic)
and is pinned by commit in `extension.toml`.

## Installation

Clone this repository, then install it in Zed with
`zed: install dev extension` and select the cloned `scenic-zed` directory.

```sh
git clone git@github.com:Maciej4/scenic-zed.git
```

If the grammar repository is private, make sure GitHub authentication is set up
for Git before installing the dev extension.
