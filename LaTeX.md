# LaTeX

| Syntax                                         | Description      |
| ---------------------------------------------- | ---------------- |
| \usepackage{packagename}                       | Imports packages |
| \begin{center}<br>\end{center}                 | Centers contents |
| \begin{itemize}<br>\item <br>\end{itemize}     | Unordered list   |
| \begin{enumerate}<br>\item <br>\end{enumerate} | Ordered list     |
| \textbf{bolded}                                | Bolds contents   |
| \hfill                                         | Right justifies  |
| \\\                                            | New line         |

## Template

```LaTex
\documentclass[11pt]{article}
\usepackage{fullpage,amsthm,amsfonts,amssymb,epsfig,amsmath,times,amsthm}
\usepackage{algpseudocode}

\newtheorem{theorem}{Theorem}
\newtheorem{claim}[theorem]{Claim}

\begin{document}

\hfill FirstName  LastName

\begin{center}
{\bf\Large Title}
\end{center}

\begin{center}
Subtitle \emph{italicize subtitle} 
\end{center}

%\newcommand{\set}[1]{\{ #1 \}}
%\newcommand{\qed}{ \large \hfill $\Box$ \\ \medskip }
%\newcommand{\qedq}{ \large \hfill $\Box$?? \\ \medskip }

\renewcommand{\P}{\mbox{IH}}

\begin{enumerate}
    \item bullet point 1
\end{enumerate}

\end{document}
```

## References

**[Tutorial](https://www.latex-tutorial.com/tutorials/)**