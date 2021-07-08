[![make](https://github.com/yegor256/exec/actions/workflows/latexmk.yml/badge.svg)](https://github.com/yegor256/exec/actions/workflows/latexmk.yml)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](https://github.com/yegor256/exec/blob/master/LICENSE.txt)

This LaTeX package helps you execute commands from the document and then input
their output. The package uses [`ShellEscape`](https://ctan.org/pkg/ShellEscape) package.

First, [install it](https://en.wikibooks.org/wiki/LaTeX/Installing_Extra_Packages)
from [CTAN](https://ctan.org/pkg/exec) 
and then use in the preamble:

```tex
\documentclass{article}
\usepackage{exec}
\begin{document}
Today is \exec{date +\%e-\%b-\%Y}.
\end{document}
```

The full example and all commands are available in the 
[`exec.tex`](https://github.com/yegor256/exec/blob/master/exec.tex) file.

If you want to contribute yourself, make a fork, then create a branch, 
then run `make` in the root directory.
It should compile everything without errors. If not, submit an issue and wait.
Otherwise, make your changes and then run `make` again. If the build is
still clean, submit a pull request.
