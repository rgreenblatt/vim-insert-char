# vim-insert-char

Insert `count` of a character before or after the cursor. Repeatable.

### Usage

```
Lorem ipsum dolor sit amet, consectetur adipiscing elit.
     ^ cursor

3<Space>g -->

Loremggg ipsum dolor sit amet, consectetur adipiscing elit.
       ^ cursor
```

### Mappings

By default maps to `<Space>` for insert before the cursor. To change that to leader s for
before and leader S for after:

```vims
let g:insert_char_no_default_mapping = 1
nmap <leader>s <Plug>InsertChar
nmap <leader>S <Plug>InsertCharAfter
```

### Source

Anonymous contributor at [Vim Wikia](http://vim.wikia.com/wiki/Insert_a_single_character).
