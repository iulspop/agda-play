# Getting Started

This project uses Nix to manage the development environment, including installing Agda and the Agda standard library. To get started, follow these steps:

## Prerequisites

1. Install Nix on your system by following the instructions at https://nixos.org/download.html.
2. Ensure that you have Git installed to clone the project.

## Clone the project

Clone this repository to your local machine:

```sh
git clone https://github.com/iulspop/agda_play.git
cd adga_play
```

## Start the Nix shell

A shell.nix file is included in the project directory to define the required packages and environment. To start a Nix shell with the specified environment, run the following command in the project director

```sh
nix-shell
```

This will create a new shell with Agda and the Agda standard library installed. You should see a message indicating that you have entered the Agda development environment:

```
Entering Agda development environment
```

Now you're ready to start working on the project with Agda and the Agda standard library available in your development environment.

## Compiling the Project

After setting up the Nix shell and entering the Agda development environment, you can compile your Agda project using the following command:

```sh
agda --compile hello-world.agda --compile-dir=./build
```

This command will compile your Agda code and place the compiled output in the `./build` directory.

After the compilation is finished, you can run the compiled output from the build directory:

```sh
./build/hello-world
```

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
