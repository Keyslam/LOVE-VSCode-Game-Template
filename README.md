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

3 - Configure the `Game/conf.lua` and `Tools/build/makelove.toml` with the settings specific for your game.

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
