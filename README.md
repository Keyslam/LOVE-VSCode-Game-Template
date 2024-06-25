# LOVE VSCode Game Template
A fully configured VSCode template for LOVE

## Features
- 📄 Rich Lua language features with [Lua Language Server](https://github.com/LuaLS/lua-language-server)
- 🔧 Debugging with [Local Lua Debugger](https://github.com/tomblind/local-lua-debugger-vscode)
- 🏢 Automatic builds with [Makelove](https://github.com/pfirsich/makelove)
- 👨‍💻 Consistent coding styles with [Editorconfig](https://github.com/editorconfig/editorconfig-vscode)
- 🏃‍♂️ Running scripts with [NPM Scripts](https://docs.npmjs.com/cli/v9/using-npm/scripts)
- 🗂️ Organized with [Workspaces](https://code.visualstudio.com/docs/editor/workspaces)
- 🔗 Extensible and configurable for your needs

## Prerequisites
- [Visual Studio Code](https://code.visualstudio.com/download)
- [LÖVE 11.4](https://love2d.org/)
- [Makelove](https://github.com/pfirsich/makelove)
- [NPM](https://nodejs.org/en/download) (Optional)

LÖVE and Makelove should be in your PATH environment variable.

## Setup
1 - [Use this template](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template) to create a new repository for your game, then clone that repository locally.

2 - Open the `Workspace.code-workspace` file with Visual Studio Code.
You will be prompted that there are recommended extensions and if you want to install these. Click 'Install'.

3 - Configure the `Game/conf.lua` and `Tools/build/makelove.toml` with the settings specific for your game.\
**NOTE**: Make sure to keep `t.console` set to `false` in `love.confg`. Local Lua Debugger will not work otherwise.

4 - Configure the `Root/.editorconfig` to your liking for code styles.

5 - Change the `Root/LICENSE` file to a swap out my name for your name, or change it to a license of your liking. 

## Running
Press `F5` to launch the game in 'Debug mode'. In debug mode you can use breakpoints and inspect variables. This does have some performance impact though.\
You can switch to 'Release mode' in the 'Run and Debug' tab (`Ctrl+Shift+D`).\
Alternatively, you can run `lovec game` in the terminal.



## Structure
```
├── /Game
│   ├── /assets         Contains the game's assets
│   ├── /lib            Contains external libraries
│   └── /src            Contains the game's source code
│
├── Tools
│   ├── /build          Contains the makelove.toml
│   └── package.json    Contains all scripts to use with NPM Scripts
│
├── Resources           Contains resources for you game that should not be shipped, like raw audio
│
├── Builds              Contains the builds of your game made with makelove
│
└── Root                Root access to the workspace
```

### Appendix A: Why isn't Pixelbyte Studio's "Love2D support" extension included?
Pixelbyte Studio's "Love2D support" extension is commonly used by beginners because it is the first result that shows up when you search for LÖVE extensions in VSCode. However, it doesn't add any features you can't get with a well configured VSCode workspace. It also doesn't work with Local Lua Debugger and gives conflicting Intellisense results with the Lua Language Server.

### Appendix B: Setting up a minimal project yourself.
Sometimes you don't want a full blown template and just get the minimum required settings to get your editor working. The following steps will explain how to setup a project with the Sumneko Language Server and a launch task:

1. Create a folder for your game with your `main.lua` and `conf.lua`.

2. Open the folder with VSCode. 

3. Install the [Sumneko Lua Language Server](https://marketplace.visualstudio.com/items?itemName=sumneko.lua) and [Local Lua Debugger](https://marketplace.visualstudio.com/items?itemName=tomblind.local-lua-debugger-vscode) extensions.

4. In the same folder as your `main.lua`, create a folder named `.vscode`

5. In the `.vscode` folder, create a file named `settings.json` and copy the following contents into it:
```
{
	"Lua.workspace.library": [
		"${3rd}/love2d/library",
		"lib"
	],
	"Lua.runtime.version": "LuaJIT",
	"Lua.workspace.checkThirdParty": false,
}
```

6. In the `.vscode` folder, create a file named `launch.json` and copy the following contents into it:
```
{
	"version": "0.2.0",
	"configurations": [
		{
			"type": "lua-local",
			"request": "launch",
			"name": "Release",
			"program": {
				"command": "love"
			},
			"args": [
				".",
			],
		},
	]
}
```

You can use this template as a basis for how to add additional features such as debugging, code styles, folder structures, automatic builds, et cetera.
