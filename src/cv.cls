\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv}[2014/08/16 CV class]
\LoadClass[a4paper,10pt]{article}

\RequirePackage[a4paper,margin=0.5in,bottom=0.5in]{geometry}
\RequirePackage{multicol}
\RequirePackage{enumitem}
\RequirePackage{cleancv}
\RequirePackage{ifthen}

\pagestyle{empty}

\def\dotfill#1{\cleaders\hbox to #1{.}\hfill}
\newcommand\dotline[2][.5em]{\leavevmode\hbox to #2{\dotfill{#1}\hfil}}

\def\cvcolumnsep{24pt}
\def\dotsize{8pt}

\newcommand\mydotfill{\normalsize{\dotfill{\dotsize}}}


\newboolean{haspersonalsummary}
\setboolean{haspersonalsummary}{false}
\newcommand\thepersonalsummary{\null}
\newcommand\setpersonalsummary[1]{%
	\renewcommand\thepersonalsummary{#1}
	\setboolean{haspersonalsummary}{true}
}


\newcommand\cvheader{%
    \generalheader    
    \ifthenelse{\boolean{haspersonalsummary}}{%
	\bigskip
	\noindent \cvsummary{\thepersonalsummary}
     }{}%
}

\newenvironment{skills}{
    \noindent {\bf \sf \Large \color{heading} Skills\mydotfill}
    \vspace{-\baselineskip}
    \medskip
    \setlength\columnsep{\cvcolumnsep}
    \begin{multicols}{2}
        \begin{itemize}[noitemsep,leftmargin=19pt]
	\raggedright
}{
        \end{itemize}
    \end{multicols}
    %\medskip
}   


\newenvironment{career}{
    \setlength\columnsep{\cvcolumnsep}
    \begin{multicols*}{2}
    \raggedcolumns
}{
    \end{multicols*}
}   


\newenvironment{careersection}[1]{
    \noindent {\bf \sf \Large \color{heading} #1\mydotfill}
    \begin{itemize}[label={},leftmargin=10pt]
    \raggedright
}{
    \end{itemize}
}

\newenvironment{careeritemdetails}
{\vspace{-\baselineskip}\begin{itemize}[noitemsep,label=\textbullet,nosep,leftmargin=10pt]\raggedright}
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

\newcommand\tightcareeritem[4]{
    \ifx&#3&
        \ifx&#4&
		\item {\sf #1} \hfill #2
        \else
		\item {\sf #1} \hfill #2 \newline #4
        \fi
    \else
        \ifx&#4&
		\item {\bf \sf #3} {\sf #1} \hfill #2
        \else
		\item {\bf \sf #3} {\sf #1} \hfill #2 \newline #4
        \fi
    \fi
}
