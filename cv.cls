\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv}[2014/08/16 CV class]


\LoadClass[a4paper,10pt]{article}
\RequirePackage[a4paper,margin=0.5in,bottom=0.8in]{geometry}
\RequirePackage{multicol}
\RequirePackage{enumitem}
\RequirePackage[fixed]{fontawesome5}
\RequirePackage{xcolor}
\usepackage{hyperref}  

\pagestyle{empty}
\newcommand\theauthorname{Jane Doe}

\newcommand\setauthorname[1]{\renewcommand\theauthorname{#1}}

\newcommand\setheadingcolour[1]{
	\definecolor{heading}{HTML}{#1}
	\colorlet{heading}{heading}
}
\newcommand\seticoncolour[1]{
	\definecolor{icon}{HTML}{#1}
	\colorlet{icon}{icon}
}

\setheadingcolour{00213D}
\seticoncolour{003666}

\newcommand\maintitle[1]{\noindent {\Huge \textsf{\textbf{{\color{heading} \theauthorname} |} #1}}
}

\newif\ifrightcontact 
\newif\iffirstcontactline
\newcommand*{\cvcontacts}[1] {%
	\rightcontactfalse
	\firstcontactlinetrue
	\cvcontact#1\relax
}


\newcommand{\cvcontact}[1] {%
	\ifx\relax#1\empty
	\else
		\ifrightcontact
			\rightcontactfalse
			\hfill #1 \relax
		\else
			\rightcontacttrue
			\iffirstcontactline
				\noindent #1 \relax
				\firstcontactlinefalse
			\else 
				\\ \noindent #1 \relax
			\fi
		\fi
		\expandafter\cvcontact
	\fi
}

\newcommand\cvsummary[1]{\textit{\large #1}}

\newcommand\cvheader[3]{
    \maintitle{#1}

    \bigskip
    \noindent \cvcontacts{#2}

    \bigskip
    \noindent \cvsummary{#3}

    \bigskip
}

\def\cvcolumnsep{24pt}

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

\newcommand{\faicon}[1]{\mbox{\textcolor{icon}{#1}}}
\newcommand{\fainfo}[2]{\faicon{#1}\hspace{0.5em}#2}
\newcommand{\faitem}[1]{\item[\faicon{#1}]}

\newcommand{\email}[1]{\fainfo{\faAt}{#1}}
\newcommand{\phone}[1]{\fainfo{\faPhone}{#1}}
\newcommand{\homepage}[1]{\fainfo{\faLink}{\href{https://www.#1}{#1}}}
\newcommand{\linkedin}[1]{\fainfo{\faLinkedin}{\href{https://www.#1}{#1}}}
\newcommand{\github}[1]{\fainfo{\faGithub}{\href{https://www.#1}{#1}}}
\newcommand{\orcid}[1]{\fainfo{\aiOrcid}{\href{https://www.#1}{#1}}}
\newcommand{\location}[1]{\fainfo{\faMapMarker*}{#1}}
\newcommand{\pubs}[1]{\fainfo{\faFlask}{\href{https://www.#1}{#1}}}
\newcommand{\kaggle}[1]{\fainfo{\faKaggle}{\href{https://www.#1}{#1}}}
