## Neovim Keybindings

### General Configuration

- Leader Key: Space

### General Keybindings

#### Insert Mode

- jk -> Exit insert mode

### Normal Mode

- <C-d> -> Scroll down and keep cursor centered
- <C-u> -> Scroll up and keep cursor centered
- ESC -> Clear search highlights
- x -> Delete single character without copying to register
- y or Y -> Copy to system clipboard
- <leader> + + -> Increment number
- <leader> + - -> Decrement number

### Visual Mode

- J -> Move selected line/block down
- K -> Move selected line/block up
- < -> Indent left
- \> -> Indent right

### Window Management

- <leader> + sv -> Split window vertically
- <leader> + sh -> Split window horizontally
- <leader> + se -> Make splits equal size
- <leader> + sx -> Close current split
- <leader> + hh -> Resize window left
- <leader> + ll -> Resize window right
- <leader> + jj -> Resize window down
- <leader> + kk -> Resize window up
- <leader> + 00 -> Resize window back to default

### Tab Management

- <leader> + to -> Open new tab
- <leader> + tx -> Close current tab
- <leader> + tn -> Go to next tab
- <leader> + tp -> Go to previous tab
- <leader> + tf -> Open current buffer in new tab

### Buffer Management

- <C-p> -> Go to previous buffer
- <C-n> -> Go to next buffer
- <C-b> -> Go back to the last buffer
- <C-x> -> Close current buffer

### File Commands

- QQ -> Quit without saving
- QA -> Quit all without saving
- XX -> Save and quit
- WW -> Save

### Noice (Dismiss)

- v -> Dismiss

### LSP Management

- gR -> Show LSP references
- <leader> fm -> Black Python formatting
- <leader> f@ -> Find buffer symbols
- gD -> Go to declaration
- gd -> Show LSP definitions
- gi -> Show LSP implementations
- gt -> Show LSP type definitions
- <leader> ca -> See available code actions
- <leader> rn -> Smart rename
- <leader> D -> Show buffer diagnostics
- <leader> d -> Show line diagnostics
- [d -> Go to previous diagnostic
- ]d -> Go to next diagnostic
- K -> Show documentation for what is under cursor
- <leader> rs -> Restart LSP
