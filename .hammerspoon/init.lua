local lastApp = nil

hs.hotkey.bind({"ctrl"}, "a", function()
    local appname = "Ghostty"
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
