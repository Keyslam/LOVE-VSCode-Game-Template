local IS_DEBUG = os.getenv("LOCAL_LUA_DEBUGGER_VSCODE") == "1" and arg[2] == "debug"
if IS_DEBUG then
	require("lldebugger").start()

	function love.errorhandler(msg)
		error(msg, 2)
	end
end

-- https://love2d.org/wiki/Config_Files
function love.conf(t)
	t.identity              = nil
	t.appendidentity        = false
	t.version               = "11.4"
	t.console               = false
	t.accelerometerjoystick = false
	t.externalstorage       = false
	t.gammacorrect          = false

	t.audio.mic             = false
	t.audio.mixwithsystem   = true

	t.window.title          = "Untitled"
	t.window.icon           = nil
	t.window.width          = 800
	t.window.height         = 600
	t.window.borderless     = false
	t.window.resizable      = false
	t.window.minwidth       = 1
	t.window.minheight      = 1
	t.window.fullscreen     = false
	t.window.fullscreentype = "desktop"
	t.window.vsync          = 1
	t.window.msaa           = 0
	t.window.depth          = nil
	t.window.stencil        = nil
	t.window.display        = 1
	t.window.highdpi        = false
	t.window.usedpiscale    = true
	t.window.x              = nil
	t.window.y              = nil

	t.modules.audio         = true
	t.modules.data          = true
	t.modules.event         = true
	t.modules.font          = true
	t.modules.graphics      = true
	t.modules.image         = true
	t.modules.joystick      = true
	t.modules.keyboard      = true
	t.modules.math          = true
	t.modules.mouse         = true
	t.modules.physics       = true
	t.modules.sound         = true
	t.modules.system        = true
	t.modules.thread        = true
	t.modules.timer         = true
	t.modules.touch         = true
	t.modules.video         = true
	t.modules.window        = true
end
