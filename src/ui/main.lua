
function mainWindow()
    if Button({text="Click me!"}) then
        print("Clicked")
    end
end


function render()
    ImGui.ShowDemoWindow()

    Window({title="Main Window"}, mainWindow)
end
