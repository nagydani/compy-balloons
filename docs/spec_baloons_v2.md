# Scope of version 2.0

## Features

* Remove(hide) progress tab
* Reallocate scores tab -- show in status bar (try to use console status, or draw own status line if not possible)
* Baloons parameterization: question, answer, color, size, speed. **Score?**
* Baloons look: literal baloon (simple, drop-shape) with box under it
  * Constraint: keep drawing function replaceable, for each component
* When challenge solved: 
  * box disappears (keep possibility of animation)
  * baloon starts moving up ('behind' baloons moving down)

## Bugs

* Regression: game stopped launching past initial splashscreen - no reaction on click (could be local setup problem)
* Crash on space -- to be addressed in platform (maybe later), not a part of game scope
