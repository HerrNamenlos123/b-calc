
function numberInput(number)
    print("Numberinput: " .. number)
end

function numberFields()

    function drawGrid(row,column)
        local number = row*3 + column + 1
        if Button({text=number, margin="5%" }) then
            numberInput(number)
        end
    end

    Grid({rows=3, columns=3, width="100%", height="100%"}, drawGrid)
end

function mainWindow()
    numberFields()
end

function render()
    ImGui.ShowDemoWindow()

    --b.requestAnimationFrameIn(0)

    Window({title="Main Window"}, mainWindow)
end
