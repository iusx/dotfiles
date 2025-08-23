# Dotfiles

---

## Hammerspoon

brew install --cask hammerspoon

```
~ » nvim ~/.hammerspoon/init.lua
local lastApp = nil

hs.hotkey.bind({"ctrl"}, "a", function()
    local appname = "kitty"
    local app = hs.application.find(appname)

    if app then
        if app:isFrontmost() then
            if lastApp and lastApp:bundleID() ~= app:bundleID() then
                app:hide()
                lastApp:activate()
            else
                app:hide()
            end
        else
            local frontApp = hs.application.frontmostApplication()
            if frontApp:bundleID() ~= app:bundleID() then
                lastApp = frontApp
            end
            app:unhide()
            app:activate()
        end
    else
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
background_blur 70
font_size 22.0
font_family Iosevka Nerd Font Mono
inactive_tab_background #000
active_tab_background #000
inactive_tab_foreground #fff
active_tab_foreground #555555
tab_bar_style slant
cursor_trail 1
```

## rime

```
heihei:
    name: "customized_color_scheme"
    font_face: "Helvetica"
    font_point: 20.0
    candidate_list_layout: linear
    text_orientation: horizontal
    inline_preedit: true
    translucency: true
    mutual_exclusive: true
    corner_radius: 5.0
    hilited_corner_radius: 5.0
    border_height: 5.0
    border_width: 5.0
    line_spacing: 10.0
    shadow_size: 20.0
    color_space: display_p3
    back_color: 0x67000000
    candidate_text_color: 0xD8FFFFFF
    comment_text_color: 0x3FFFFFFF
    label_color: 0xBBBBBB
    hilited_candidate_back_color: 0xFF733E
    hilited_candidate_text_color: 0xD8FFFFFF
    hilited_comment_text_color: 0xFFFFFF
    hilited_candidate_label_color: 0xD7CBC1
    text_color: 0x3FFFFFFF
    hilited_text_color: 0xD8FFFFFF

```

## Ghostty

```
font-family = "Iosevka Nerd Font Mono" 
font-size = 23
background-opacity = 0.95
macos-icon = xray
window-padding-x = 10
window-padding-y = 10
window-vsync = true
quick-terminal-animation-duration = 20
macos-titlebar-style = tabs
window-position-x = 500
window-position-y = 299
```

## base tools

[Rectangle](https://rectangleapp.com/)
[motrix](https://motrix.app/)
[LocalSend](https://localsend.org/)
[Ice](https://github.com/jordanbaird/Ice)
[araxis merge](https://www.araxis.com/merge/index.en)

## chrome
[kiss-translator](https://github.com/fishjar/kiss-translator)
[uBlacklist](https://chromewebstore.google.com/detail/ublacklist/pncfbmialoiaghdehhbnbhkkgmjanfhe?hl=en)
[GoFullPage](https://chromewebstore.google.com/detail/gofullpage-full-page-scre/fdpohaocaechififmbbbbbknoalclacl)

[tampermonkey](https://www.tampermonkey.net/index.php)
- [Bilibili](https://greasyfork.org/zh-CN/scripts/481629-bilibili-%E6%8C%89%E6%A0%87%E7%AD%BE-%E6%A0%87%E9%A2%98-%E6%97%B6%E9%95%BF-up%E4%B8%BB%E5%B1%8F%E8%94%BD%E8%A7%86%E9%A2%91)
