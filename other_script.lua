print("Other script")
local ui = require'ui'

local win = ui:window{
   cw = 500, ch = 300,   --client area size
   title = 'UI Demo',    --titlebar text
   autoquit = true,      --quit the app on close
}

local btn1 = ui:button{
   parent = win,         --top-level widget
   x = 100, y = 100,     --manually positioned by default
   text = 'Close',       --sized to fit the text by default
   cancel = true,        --close the window on Esc
   tags = 'blue',        --add a tag for styling
}

--style blue buttons for when mouse is over and no buttons are pressed.
ui:style('button blue :hot !:active', {
   background_color = '#66f', --make the background blue
})

function btn1:pressed() --handle button presses
   print'Button pressed!'
end

win:on('closed', function(self) --another way to set up an event handler
   print'Bye!'
end)

ui:run()