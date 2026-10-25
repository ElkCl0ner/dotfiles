vim.g.clipboard = {
    name = "WslClipboard",
    copy = {
        ["+"] = "clip.exe",
        ["*"] = "clip.exe",
    },
    paste = {
        ["+"] = {
            "powershell.exe",
            "-NoLogo",
            "-NoProfile",
            "-Command",
            "[Console]::Out.Write($(Get-Clipboard -Raw).ToString().Replace(\"`r\", \"\"))",
        },
        ["*"] = {
            "powershell.exe",
            "-NoLogo",
            "-NoProfile",
            "-Command",
            "[Console]::Out.Write($(Get-Clipboard -Raw).ToString().Replace(\"`r\", \"\"))",
        },
    },
    cache_enabled = 0,
}

vim.opt.clipboard:append("unnamedplus")
