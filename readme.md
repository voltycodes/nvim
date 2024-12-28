`[vy] nvim config`

---

#### SETUP / TROUBLESHOOTING

`avante.nvim`
- to fix `failed to load avante_repo_map` or `make sure to build avante` try:
    `cd ~/.local/share/nvim/lazy/avante.nvim && make`

[note: requires cargo & rustc]
[[reference](https://github.com/yetone/avante.nvim/issues/612#issuecomment-2375729928)]


`copilot.lua`
- run `:Copilot Auth` to authenticate copilot


`image.nvim`
- `sudo pacman -Syu imagemagick` on arch

`cord.nvim`
- requires setting up npiperelay & socat
    - `sudo pacman -S socat`
    - ref [npiperelay](https://github.com/jstarks/npiperelay/);
        - `go mod init <module_name>`
        - `go get github.com/jstarks/npiperelay`
        - `GOOS=windows go build -o /mnt/c/Users/<myuser>/go/bin/npiperelay.exe github.com/jstarks/npiperelay`
    - edit `~/.zshrc` & add the following alias
        - ```bash
nvim() {
    if ! pgrep socat &>/dev/null; then
        socat UNIX-LISTEN:/tmp/discord-ipc-0,fork \
          EXEC:"npiperelay.exe //./pipe/discord-ipc-0" &
    fi
    command nvim "$@"
}
```

`wakatime.nvim`
- `sudo pacman -S wakatime` to install wakatime & `:WakaTimeApiKey` to enter API key

