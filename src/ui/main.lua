
local i = 0
local frame = false

function mainWindow()
    if Button({text="Click me!"}) then
        print("Clicked")
        frame = not frame
        b.requestAnimationFrameIn(0)
    end
    ImGui.Text(""..i)
    i = i + 1
end

function render()
    ImGui.ShowDemoWindow()

    if frame then
        b.requestAnimationFrameIn(0)
    end

    Window({title="Main Window"}, mainWindow)
end
