[![l3build](https://github.com/yegor256/iexec/actions/workflows/l3build.yml/badge.svg)](https://github.com/yegor256/iexec/actions/workflows/l3build.yml)
[![CTAN](https://img.shields.io/ctan/v/iexec)](https://ctan.org/pkg/iexec)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](https://github.com/yegor256/iexec/blob/master/LICENSE.txt)

This LaTeX package helps you execute commands from the document and then input
their output. The package uses [`shellesc`](https://ctan.org/pkg/shellesc) package.
The development of this package was motivated by [this](https://stackoverflow.com/questions/3252957).

First, [install it](https://en.wikibooks.org/wiki/LaTeX/Installing_Extra_Packages)
from [CTAN](https://ctan.org/pkg/iexec) 
and then use in the preamble:

```tex
\documentclass{article}
\usepackage[unskip]{iexec}
\begin{document}
Today is \iexec{date +\%e-\%b-\%Y}.
\end{document}
```

Otherwise, you can download 
[`iexec.sty`](https://yegor256.github.io/iexec/iexec.sty) and add to your project.

The full example and all commands are available in the 
[`iexec.pdf`](https://ftp.agdsn.de/pub/mirrors/latex/dante/macros/latex/contrib/iexec/iexec.pdf) file.

If you want to contribute yourself, make a fork, then create a branch, 
then run `make` in the root directory.
It should compile everything without errors. If not, submit an issue and wait.
Otherwise, make your changes and then run `make` again. If the build is
still clean, submit a pull request.
