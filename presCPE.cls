\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{presCPE}[2019/09/05]

% Base class
\LoadClass{beamer}
\usetheme[progressbar=frametitle]{metropolis}

% Process Options
\DeclareOption{subsectionpage}{\metroset{subsectionpage=simple}}
\DeclareOption{smallcaps}{\metroset{titleformat section=smallcaps}}
\ProcessOptions

% List all required packages
% Font
\usepackage[utf8]{inputenc}
\usepackage[french,english]{babel}
\usepackage[T1]{fontenc}
\usepackage{amsfonts}
\usepackage{dsfont}
\usepackage{fontawesome}
\usepackage{lmodern}
\renewcommand*\familydefault{\sfdefault}
\usepackage{libertine}


% Maths
\usepackage{amsmath,amssymb,amsfonts,mathtools}
\usepackage{siunitx}
\sisetup{detect-all}
\usepackage{bm}
\usepackage{empheq}

% Figures
\usepackage{graphicx}
\usepackage[compatibility=false]{caption}
\usepackage{subcaption}
\usepackage{enumitem}
\usepackage{hyperref}

% Design
\usepackage{enumitem}
\usepackage{minted}
\setminted{style=vs,bgcolor=gray!10}
%\usepackage[left=2cm,right=2cm,top=2.5cm,bottom=2.5cm]{geometry}
\usepackage{xspace}
\usepackage{adjustbox}
\usepackage{xcolor}
\usepackage{placeins}
\definecolor{col1}{HTML}{FFA630}
\definecolor{col2}{HTML}{247696}
\definecolor{col3}{HTML}{8C5383}
\definecolor{col4}{HTML}{E94F37}
\definecolor{col5}{HTML}{21897E}
\definecolor{col6}{HTML}{68D89B}%green
\definecolor{blueCPE}{HTML}{0087CC}
\definecolor{col11}{HTML}{7FFF3B}%dégradé vert
\definecolor{col12}{HTML}{6CD932}
\definecolor{col13}{HTML}{59B329}
\definecolor{col14}{HTML}{468C20}
\definecolor{col15}{HTML}{336617}
\definecolor{col16}{HTML}{19330C}
\definecolor{col17}{HTML}{0D1A06}
\setbeamertemplate{footline}[text line]{%
\parbox{\linewidth}{\vspace*{-10pt}\@name\hfill \@titleiii \hfill\insertpagenumber}}
%\setbeamercolor{progress bar}{}

\usepackage[breakable,skins,theorems]{tcolorbox}

\tcbset{
	breakable,
	left=0pt,
	right=0pt,
	bottom=0pt,
	width=\dimexpr\textwidth\relax,
	enlarge left by=0mm,
	boxsep=5pt,
}

% local tcolorbox env
\newtcolorbox{notations}{%
	colback=col2!10,%
	colframe=col2,%
	fonttitle=\bfseries,%
	title=Notations,%
	top=0pt,%
}

\newtcolorbox{important}{%
	colback=col1!30!white,%
	colframe=col1,%
	top=0pt,%
}

\newtcolorbox[auto counter,number within=section]{thm}[2][]{%
	colback=col1!20!white,%
	colframe=col1!75!black,%
	colbacktitle=white,%
	coltitle=col1!75!black, 
	top=10pt,
	fonttitle=\bfseries,%
	%	title=Théorème ~\thetcbcounter: #2,%
	title=#2,%
	enhanced,%
	attach boxed title to top left={xshift=2mm,yshift=-3mm},%
	#1%	
}

\newtcolorbox[auto counter,number within=section]{prop}[2][]{%
	colback=white,%
	colframe=col2!75!black,%
	colbacktitle=white,%
	coltitle=col2!75!black, 
	top=10pt,
	fonttitle=\bfseries,%
	%	title=Théorème ~\thetcbcounter: #2,%
	title=#2,%
	enhanced,%
	attach boxed title to top left={xshift=2mm,yshift=-3mm},%
	#1%	
}

\newtcolorbox[auto counter,number within=section]{exemple}[1][]{%
	colback=gray!15,%
	colframe=gray!15,%
	coltitle=black, 	
	top=-3pt,%
	fonttitle=\bfseries,%
	title=Exemple : #1,%
}
\newtcolorbox[auto counter,number within=section]{exercice}[1][]{%
	colback=col2!15,%
	colframe=col2!15,%
	coltitle=black, 	
	top=-3pt,%
	fonttitle=\bfseries,%
	title=Exercice #1,%
}
\newtcolorbox[auto counter,number within=section]{calcul}[1][]{%
	colback=col2!15,%
	colframe=col2!15,%
	coltitle=black, 	
	top=-3pt,%
	fonttitle=\bfseries,%
	title=#1,%
}

% Schemes
\usepackage[]{animate}
\usepackage{pgfplots}
\usetikzlibrary{patterns}
%\pgfplotsset{compat=1.8}
\usetikzlibrary{spy, calc, arrows, decorations.pathmorphing ,backgrounds ,positioning, fit, petri, shapes}
\usepgfplotslibrary{dateplot,groupplots,polar,fillbetween}
\pgfkeys{/pgf/number format/1000 sep={}}
\pgfkeys{/pgf/number format/fixed}
\pgfkeys{/pgf/number format/precision=3}
\tikzstyle{every node}=[font=\footnotesize]

% Specific variables
\newcommand{\cone}[1]{\textbf{\textcolor{col1}{#1}}}
\newcommand{\ctwo}[1]{\textbf{\textcolor{col2}{#1}}}
\newcommand{\name}[1]{\def\@name{#1}}
\newcommand{\logocpe}[1]{\def\@logocpe{#1}}
\newcommand{\academicYear}[1]{\def\@academicYear{#1}}
\newcommand{\level}[1]{\def\@level{#1}}
\newcommand{\titlei}[1]{\def\@titlei{#1}}
\newcommand{\titleii}[1]{\def\@titleii{#1}}
\newcommand{\titleiii}[1]{\def\@titleiii{#1}}
\newcommand{\address}[1]{\def\@address{#1}}
\newcommand{\email}[1]{\def\@email{#1}}
\newcommand{\affiliation}[1]{\def\@affiliation{#1}}

% Specific commands
\newcommand{\displaylogo}[1]{\begin{flushleft}
\includegraphics[scale=#1]{\@logocpe}
\end{flushleft}}
%
\newcommand{\maketitlepage}[1]{%
\begin{frame}
\thispagestyle{empty}
\pagenumbering{gobble}
\displaylogo{#1}
%
\renewcommand{\baselinestretch}{2}
\begin{center}
\Large
\textbf{\textcolor{blueCPE}{\@titlei~$-$~\@level}\\ \@titleii}
\large
\\
\textbf{\@titleiii}
\end{center}
\noindent\makebox[\linewidth]{\textcolor{blueCPE}{\rule{\paperwidth}{1pt}}}
\renewcommand{\baselinestretch}{1.5}
%
%
%
\begin{flushleft}
\large
\textcolor{blueCPE}{\textbf{\@name~\@affiliation}}\\
\@address~\@email
\end{flushleft}
%
\vfill
\end{frame}
\renewcommand{\baselinestretch}{1}
\pagenumbering{arabic}
}



% Allow boldmaths in section titles
\makeatletter
\g@addto@macro\bfseries{\boldmath}
\makeatother