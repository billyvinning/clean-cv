\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv}[2014/08/16 CV class]
\LoadClass[a4paper,10pt]{article}

\RequirePackage[a4paper,margin=0.5in,bottom=0.8in]{geometry}
\RequirePackage{multicol}
\RequirePackage{enumitem}
\RequirePackage{src/cleancv}

\pagestyle{empty}

\def\cvcolumnsep{24pt}

\newcommand\thepersonalsummary{\null}
\newcommand\setpersonalsummary[1]{\renewcommand\thepersonalsummary{#1}}


\newcommand\cvheader{
    \generalheader

    \bigskip
    \noindent \cvsummary{\thepersonalsummary}

    \bigskip
}

\newenvironment{skills}{
    \noindent {\bf \sf \Large \color{heading} Skills}
    \vspace{-\baselineskip}
    \medskip
    \setlength\columnsep{\cvcolumnsep}
    \begin{multicols}{2}
        \begin{itemize}[noitemsep,leftmargin=19pt]
}{
        \end{itemize}
    \end{multicols}
    \medskip
}   


\newenvironment{career}{
    \setlength\columnsep{\cvcolumnsep}
    \begin{multicols*}{2}
    \raggedcolumns
}{
    \end{multicols*}
}   


\newenvironment{careersection}[1]{
    \noindent {\bf \sf \Large \color{heading} #1}
    \begin{itemize}[label={},leftmargin=10pt]
}{
    \end{itemize}
}

\newenvironment{careeritemdetails}
{\vspace{-\baselineskip}\begin{itemize}[noitemsep,label=\textbullet,nosep,leftmargin=10pt]}
{\end{itemize}}


\newcommand\careeritem[4]{
    \ifx&#3&
        \ifx&#4&
		\item {\sf #1} \hfill #2
        \else
		\item {\sf #1} \hfill #2 \newline #4
        \fi
    \else
        \ifx&#4&
		\item {\sf #1} \hfill #2 \newline {\it #3}
        \else
		\item {\sf #1} \hfill #2 \newline {\it #3} \newline #4
        \fi
    \fi
}
