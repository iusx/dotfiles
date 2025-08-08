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

## Outher tools

[Rectangle](https://rectangleapp.com/)
[hyperswitch](https://bahoom.com/hyperswitch/get)
[motrix](https://motrix.app/)
[LocalSend](https://localsend.org/)
[Ice](https://github.com/jordanbaird/Ice)
[Skim](https://skim-app.sourceforge.io/)
[Logoer](https://github.com/lihaoyun6/Logoer)
[araxis merge](https://www.araxis.com/merge/index.en)
[kitty](https://github.com/kovidgoyal/kitty)

## 过滤关键词：
```
.*大型纪录片.*,.*今日话题.*,.*ai.*,.*AI.*,.*国产.*,.*华为.*,.*SU7.*,.*小米.*,.*上岸.*,.*锐评.*,.*哪吒.*,.*干货.*,.*键政.*,.*人生智慧.*,.*小曲.*,.*周报.*,.*天涯神帖.*,.*认知.*,.*中医.*,.*养生.*,.*调理.*,.*吃瓜.*,.*小明剑魔.*,.*安全.*,.*黑客.*,.*漏洞.*,.*问界.*,.*甲亢.*,.*黑神话.*,.*减肥.*,.*咨询.*,.*问答.*,.*分享.*,.*找工作.*,.*求职.*,.*自媒体.*,.*大学生.*,.*青年大学习.*,.*创业.*,.*毕业生.*,.*deepseek.*,.*社会主义.*,.*进行曲.*,.*梗.*,.*销量.*,.*？.*,.*《.*,.*belike.*,.*东来.*,.*营销号.*,.*创业.*,.*赚钱.*,.*REACTION.*,.*中国.*,.*reaction.*,.*speed.*,.*博士.*,.*政治.*,.*考研.*,.*工作.*,.*万.*,.*国漫.*,.*打工人.*,.*ASMR.*,.*社交.*,.*V.*,.*外网.*,.*人民.*,.*狗.*,.*圈子.*,.*狗.*,.*惩罚.*,.*辞职.*,.* 坤.*,.*坤.*,.* 点评.*,.*点评.*,.*加沙.*,.*天涯神贴.*,.*道士.*,.*中国.*,.*英语.*,.*翻墙.*,.*Web3.*,.*摄影.*,.*姜文.*,.*极速拍档.*,.*考公.*,.*话题.*,.*公考.*,.*今日.*,.*程序员.*,.*编程.*,.*代码.*,.*朝鲜.*,.*太阳.*,.*本质.*,.*CF.*,.*丁.*,.*真.*

.*今日话题.*,.*大型纪录片.*,.*心里.*,.*咨询师.*,.*咨询.*,.*博士.*,.*认知.*,.*中医.*,.*养生.*,.*调理.*,.*新闻.*,.*说车.*,.*纪录片.*,.*安全.*,.*黑客.*,.*漏洞.*,.*甲亢.*,.*咨询.*,.*反串.*,.*心理学.*,.*梗.*,.*reaction.*,.*车.*,.*国漫.*,.*课.*,.*老师.*,.*学院.*,.*中国.*,.*点评.*,.*加沙.*,.*天涯神贴.*,.*天涯神贴.*,.*道士.*,.*中国.*,.*英语.*,.*翻墙.*,.*Web3.*,.*律师.*,.*摄影.*,.*姜文.*,.*极速拍档.*,.*考公.*,.*话题.*,.*话题.*,.*公考.*,.*今日.*,.*程序员.*,.*编程.*,.*代码.*,.*朝鲜.*,.*太阳.*,.*本质.*,.*CF.*,.*ai.*,.*AI.*,.*体育.*,.*体.*,.*说.*

今日话题,.*中医.*,.*调理.*,.*必剪.*,.*小米.*,.*SU7.*,.*su7.*,.*小明剑魔.*,.*吃瓜.*,.*八卦.*,.*安全.*,.*黑客.*,.*漏洞.*,.*鸿蒙.*,.*甲亢.*,.*黑神话.*,.*网文.*,.*小说.*,.*咨询.*,.*回答我.*,.*MVP.*,.*deepseek.*,.*梗.*,.*REACTION.*,.*Reaction.*,.*国漫.*,.*声控.*,.*4i.*,.*四爱.*,.*小圈.*,.*小众.*,.*男娘.*,.*录音.*,.*虚拟主播.*,.*文字.*,.*文学.*,.*国产.*,.*情感.*,.*党史.*,.*毛泽东.*,.*奇闻趣事.*,.*调侃.*,.*抖音.*,.*快手.*,.*苏联.*,.*认知.*,.*罗翔.*,.*哲学.*,.*加沙.*,.*天涯神贴.*,.*道士.*,.*中国.*,.*英语.*,.*翻墙.*,.*Web3.*,.*律师.*,.*摄影.*,.*姜文.*,.*极速拍档.*,.*考公.*,.*话题.*,.*公考.*,.*今日.*,.*程序员.*,.*编程.*,.*代码.*,.*朝鲜.*,.*太阳.*,.*本质.*,.*CF.*,.*MC.*,.*丁.*,.*真.*,.*体育.*,.*三剑客.*,.*国.*,.*乒乓.*
```
