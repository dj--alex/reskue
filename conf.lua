function love.conf(t)
  t.identity = "data"
  t.version = "0.10.1"
  t.console = true
  t.window.title = "RESKUE by dj-alex"
  t.window.width =1280
  t.window.height=800
  t.window.borderless = false
  t.window.resizable = true
  t.window.minwidth = 1
  t.window.minheight = 1
  t.window.fullscreen = false  -- Enable fullscreen (boolean)
  t.window.vsync = true         -- Enable vertical sync (boolean)
  t.window.msaa = 0        -- The number of samples to use with multi-sampled antialiasing (number)
  t.window.fsaa = 0
  t.window.display = 1
  t.window.highdpi = false  -- Enable high-dpi mode for the window on a Retina display (boolean)
  t.window.srgb = false
  t.modules.audio = true
  t.modules.event = true
  t.modules.graphics = true
  t.modules.image = true
  t.modules.joystick = false
  t.modules.keyboard = true
  t.modules.math = true
  t.modules.mouse = true
  t.modules.physics = false
  t.modules.sound = true
  t.modules.system = true
  t.modules.timer = true
  t.modules.window = true
  t.modules.thread = true
  t.modules.video = false       -- Enable the video module (boolean)
t.accelerometerjoystick = false 
t.externalstorage = true 

end
