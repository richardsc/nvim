# 💤 LazyVim

This is based on a starter template for [LazyVim](https://github.com/LazyVim/LazyVim), with some modifications to work with R files. This configuration is based off of the one from [Dan Kelley](https://github.com/dankelley/nvim.git). Refer to the [documentation](https://lazyvim.github.io/installation) to get started with lazyvim.

## cmp-r issues that occurred on 2024-12-12

After a lazyvim update, it started showing errors such as below:
<details>
  <summary>Nvim error output</summary>
```
Failed to source `/home/richardsc/.local/share/nvim/lazy/cmp-r/after/plugin/cmp_r.lua`

vim/_editor.lua:0: /home/richardsc/.config/nvim/init.lua..nvim_exec2() called at /home/richardsc/.config/nvim/init.
lua:0../home/richardsc/.local/share/nvim/lazy/cmp-r/after/plugin/cmp_r.lua: Vim(source):E5113: Error while calling
lua chunk: ...rdsc/.local/share/nvim/lazy/cmp-r/after/plugin/cmp_r.lua:1: module 'cmp' not found:
^Ino field package.preload['cmp']
^Icache_loader: module 'cmp' not found
^Icache_loader_lib: module 'cmp' not found
^Ino file './cmp.lua'
^Ino file '/usr/share/luajit-2.1.0-beta3/cmp.lua'
^Ino file '/usr/local/share/lua/5.1/cmp.lua'
^Ino file '/usr/local/share/lua/5.1/cmp/init.lua'
^Ino file '/usr/share/lua/5.1/cmp.lua'
^Ino file '/usr/share/lua/5.1/cmp/init.lua'
^Ino file './cmp.so'
^Ino file '/usr/local/lib/lua/5.1/cmp.so'
^Ino file '/usr/lib/x86_64-linux-gnu/lua/5.1/cmp.so'
^Ino file '/usr/local/lib/lua/5.1/loadall.so'
stack traceback:
^I[C]: in function 'require'
^I...rdsc/.local/share/nvim/lazy/cmp-r/after/plugin/cmp_r.lua:1: in main chunk
^I[C]: in function 'nvim_exec2'
^Ivim/_editor.lua: in function 'cmd'
^I...local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:510: in function <...local/share/nvim/lazy/lazy.nvim/
lua/lazy/core/loader.lua:509>
^I[C]: in function 'xpcall'
^I.../.local/share/nvim/lazy/lazy.nvim/lua/lazy/core/util.lua:135: in function 'try'
^I...local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:509: in function 'source'
^I...local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:457: in function 'source_runtime'
^I...local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:150: in function 'startup'
^I...ardsc/.local/share/nvim/lazy/lazy.nvim/lua/lazy/init.lua:112: in function 'setup'
^I/home/richardsc/.config/nvim/lua/config/lazy.lua:17: in main chunk
^I[C]: in function 'require'
^I/home/richardsc/.config/nvim/init.lua:2: in main chunk

# stacktrace:
  - vim/_editor.lua:0 _in_ **cmd**
  - lua/config/lazy.lua:17
  - init.lua:2
```
</details>

While I'm not 100% sure why this happened, it seems to be a defaults change in LazyVim so that the nvim-cmp plugin is no longer enabled by default. To fix, open nvim, hit "x" to get the Extras menu, navigate to find `coding.nvim-cmp`, and hit "x" to enable it.
