# NAND2TETRIS - Build your own computer from scratch

## Overview

This repo contains my projects for the [Nand2Tetris](https://www.nand2tetris.org/) course.

The goal of this course is to create a modern, full-scale computer system from scratch, including hardware and software.

As part of this course, I've created these different software projects:

### The Hack Assembler

The Hack Assambler is used to convert code written in the Hack Assembly Language to bytecode (the Hack Machine Language).

### The HackVM Translator

The HackVM Translator is used to convert code written in the Hack VM Language to the Hack Assembly Language.

### The Jack Compiler

The Jack Compiler is used to convert code written in the Jack Language to the HackVM Language.

## Repository Structure

<big><pre>
**NAND2TETRIS**
├── [packages](./packages/)
│ ├── [assembler](./packages/client/)
│ ├── [compiler](./packages/compiler/)
│ └── [translator](./packages/translator/)
└── [weeks](./weeks/) _# course files_</big></pre>

## Usage

To use these different programs:

1. Ensure you have all of these installed:

   - [node.js >=12.10](https://nodejs.org/en/download/current/)
   - [yarn >=1.17](https://classic.yarnpkg.com/en/docs/install)

2. Install all dependencies by running `$ yarn` in this folder

3. Run the desired project:

   - `$ yarn assembler ./../someAssemblyCode.asm`
   - `$ yarn translator ./../SomeVMCode.vm`
   - `$ yarn compiler ./../AFolderWithVMCode`

   The results will be stored in the folder/next to the file you specified.
