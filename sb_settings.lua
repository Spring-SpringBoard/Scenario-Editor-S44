local UIWidgets = {"Chili Pro Console2", "LockCamera"}

return {
    startStop = {
        x = "48.5%",
        bottom = 80,
    },

    OnStopEditingUnsynced = function()
        for _, widgetName in ipairs(UIWidgets) do
            widgetHandler:EnableWidget(widgetName)
        end
    end,

    OnStartEditingUnsynced = function()
        for _, widgetName in ipairs(UIWidgets) do
            widgetHandler:DisableWidget(widgetName)
        end
        Spring.SendCommands("tooltip 0")
        Spring.SendCommands("resbar 0")
        gl.SlaveMiniMap(true)
    end,

    OnStartEditingSynced = function()
    end,
}
