# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.


---


## Hammerspoon

brew install --cask hammerspoon

macOS 热键召唤工具（实现 kitty 类似 iterm2 的 Quake(全局热键召唤终端，听起来就很厉害)

```
~ » nvim ~/.hammerspoon/init.lua
-- 用于记录上一次的应用
local lastApp = nil

hs.hotkey.bind({"ctrl"}, "a", function()
    local appname = "kitty"
    local app = hs.application.find(appname)

    if app then
        if app:isFrontmost() then
            -- 隐藏前先检查有没有记录的 app
            if lastApp and lastApp:bundleID() ~= app:bundleID() then
                app:hide()
                lastApp:activate()
            else
                app:hide()
            end
        else
            -- 记录当前激活的 app（不是 kitty）
            local frontApp = hs.application.frontmostApplication()
            if frontApp:bundleID() ~= app:bundleID() then
                lastApp = frontApp
            end
            app:unhide()
            app:activate()
        end
    else
        -- 记录当前激活的 app，kitty 不存在的情况
        lastApp = hs.application.frontmostApplication()
        hs.application.launchOrFocus(appname)
    end
end)
```

## kitty

```
background_opacity 0.95
window_title_format {title}
hide_window_decorations yes
background_blur 20
font_size 22.0
font_family Iosevka Nerd Font Mono
inactive_tab_background #fff
active_tab_background #00D9BD
tab_bar_style powerline
cursor_trail 1
```

## zsh

```
ZSH_THEME="minimal"
```

## outher tools

[Rectangle](https://rectangleapp.com/)
[hyperswitch](https://bahoom.com/hyperswitch/get)
[motrix](https://motrix.app/)
[LocalSend](https://localsend.org/)
[Ice](https://github.com/jordanbaird/Ice)
