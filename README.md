# Getting Started

This project uses Nix to manage the development environment, including installing Agda and the Agda standard library. To get started, follow these steps:

## Prerequisites

1. Ensure that you have Git installed to clone the project.
2. Ensure you have [Agda](https://agda.readthedocs.io/en/latest/getting-started/installation.html) installed.

## Clone the project

Clone this repository to your local machine:

```sh
git clone https://github.com/iulspop/agda_play.git
cd adga_play
```

## Compiling the Project

You can compile your Agda project using the following command:

```sh
agda --compile hello-world.agda --compile-dir=./build
```

This command will compile your Agda code and place the compiled output in the `./build` directory.

After the compilation is finished, you can run the compiled output from the build directory:

```sh
./build/hello-world
```

## Setting Up and Using Agda Mode for Visual Studio Code

Agda programs are typically developed interactively using an Agda mode for text editors. This section describes how to set up and use the Agda mode for Visual Studio Code.

### Install Visual Studio Code

First, make sure that you have Visual Studio Code installed on your system. You can download and install it from the official website: https://code.visualstudio.com/

### Install the Agda Mode Extension

1. Open Visual Studio Code.
2. Click on the Extensions view icon or press Ctrl+Shift+X to open the Extensions sidebar.
3. Search for "agda" in the search bar.
4. Find the "agda-mode" extension in the search results, which should be authored by "Ting-Gian LUA".
5. Click on the Install button next to the extension to install it.

### Using Agda Mode in Visual Studio Code

With the Agda Mode extension installed, you can now interactively develop Agda programs:

1. Open an Agda file (e.g., Main.agda) in Visual Studio Code.
2. Press Ctrl+Shift+P or Cmd+Shift+P on macOS to open the Command Palette.
3. Type "Agda: Load" and press Enter to load the current file.
4. The agda-mode extension will enable syntax highlighting when loaded.
5. You can use various commands provided by the Agda Mode extension to interact with the Agda process. Some common commands are:

- `Agda: Load`: Load the current file.
- `Agda: Compute Normal Form`: Opens a REPL-like window for evaluating expressions.

Refer to the [Agda Mode extension documentation](https://marketplace.visualstudio.com/items?itemName=banacorn.agda-mode) and the [Agda Emacs mode documentation](https://agda.readthedocs.io/en/latest/tools/emacs-mode.html#emacs-mode) for more information and available commands.

# Learning Agda

Agda Getting Started:
https://agda.readthedocs.io/en/latest/

Agda Learning Ressources:
https://github.com/conal/Collaboration/blob/master/learning-agda.md

Agda Book:
https://github.com/jespercockx/agda-lecture-notes/blob/master/agda.pdf

- 2023-04-10: page 009
- 2023-03-27: page 008

PLFA book:
https://plfa.github.io/
