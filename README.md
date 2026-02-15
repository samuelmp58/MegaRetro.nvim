### Lazy install:
``` 
return {
  {
    "samuelmp58/MegaRetro.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme "mega_retro_terminal"
    end,
  },
}
```
