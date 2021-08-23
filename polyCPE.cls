\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{polyCPE}[2019/09/05]

% Base class
\LoadClass{article}

% List all required packages
% Font
\RequirePackage[utf8]{inputenc}
\RequirePackage[french,english]{babel}
\RequirePackage[T1]{fontenc}
\RequirePackage{amsfonts}
\RequirePackage{fontawesome}
\RequirePackage{lmodern}
\renewcommand*\familydefault{\sfdefault}
\RequirePackage{libertine}
\RequirePackage{fontawesome}
\renewcommand{\baselinestretch}{1.25}


% Maths
\RequirePackage{amsmath,amsthm,amssymb,amsfonts}
\RequirePackage{siunitx}
\theoremstyle{definition}
\newtheorem{ex}{Exemple}[section]
\RequirePackage{bm}


% Figures
\RequirePackage{graphicx}
\RequirePackage[compatibility=false]{caption}
\RequirePackage{subcaption}
\RequirePackage{enumitem}
\RequirePackage{hyperref, breakurl}

% Design
\RequirePackage{etoolbox}
\RequirePackage{minted}
\setminted{style=vs,bgcolor=gray!10}
\RequirePackage[left=2cm,right=2cm,top=2.5cm,bottom=2.5cm]{geometry}
\RequirePackage{xspace}
\RequirePackage{xcolor}




\RequirePackage[breakable,skins,theorems]{tcolorbox}

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
	colback=red!5,%
	colframe=red!70!black,%
	top=0pt,%
}

\newtcolorbox[auto counter,number within=section]{thm}[2][]{%
	colback=white,%
	colframe=red!75!black,%
	colbacktitle=white,%
	coltitle=red!75!black, 
	top=5pt,
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
	title=Exemple ~\thetcbcounter. #1,%
}

\RequirePackage{placeins}
\definecolor{col1}{HTML}{FFA630}
\definecolor{col2}{HTML}{247696}
\definecolor{col3}{HTML}{8C5383}
\definecolor{col4}{HTML}{E94F37}
\definecolor{col5}{HTML}{21897E}
\definecolor{col6}{HTML}{68D89B}%green
\definecolor{blueCPE}{HTML}{0087CC}
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\lhead{\@level~-~\@titleiii}
\rhead{}
\lfoot{\@academicYear}
\rfoot{\@name}
\cfoot{\thepage}

% Schemes
\RequirePackage[]{animate}
\RequirePackage{pgfplots}
\pgfplotsset{compat=1.8}
\usetikzlibrary{arrows,decorations.pathmorphing,backgrounds,positioning,fit,petri,shapes,patterns}
\usepgfplotslibrary{dateplot,groupplots,polar,fillbetween}
\pgfkeys{/pgf/number format/1000 sep={}}
\pgfkeys{/pgf/number format/fixed}
\pgfkeys{/pgf/number format/precision=3}

% Specific variables
\newcommand{\cone}[1]{\textbf{\textcolor{col1!70!black}{#1}}}
\newcommand{\ctwo}[1]{\textbf{\textcolor{col2}{#1}}}
\newcommand{\name}[1]{\def\@name{#1}}
\newcommand{\logocpe}[1]{\def\@logocpe{#1}}
\newcommand{\academicYear}[1]{\def\@academicYear{#1}}
\newcommand{\level}[1]{\def\@level{#1}}
\newcommand{\titlei}[1]{\def\@titlei{#1}}
\newcommand{\titleii}[1]{\def\@titleii{#1}}
\newcommand{\titleiii}[1]{\def\@titleiii{#1}}
\newcommand{\figprem}[2]{\def\@figprem{#1}\def\@figpremwidth{#2}}

% Specific commands
\newcommand{\displaylogo}[1]{\includegraphics[scale=#1]{\@logocpe}}
%
\newcommand{\maketitlepage}[1]{%
\thispagestyle{empty}
\pagenumbering{gobble}
\displaylogo{#1}
\vspace{1cm}
\begin{flushright}
\Huge
\textbf{Année universitaire\\
\@academicYear}
\end{flushright}
\vspace{1cm}
\noindent\makebox[\linewidth]{\textcolor{blueCPE}{\rule{\paperwidth}{2pt}}}
%
\begin{center}
\Huge
\textcolor{blueCPE}{\textbf{\@titlei~$-$~\@level}}\\
\textbf{\@titleii}\\
\vspace{1.25cm}
\huge
\textbf{\@titleiii}
\end{center}
%
\noindent\makebox[\linewidth]{\textcolor{blueCPE}{\rule{\paperwidth}{2pt}}}
%
\vfill
%
\ifx \figprem[#1] \empty
\else
	\begin{center}
	\includegraphics[width=\@figpremwidth\textwidth]{\@figprem}
	\end{center}
	\vfill
\fi
%
\begin{flushright}
\LARGE
\textcolor{blueCPE}{\textbf{\@name}}
\end{flushright}
%
\vfill
\newpage
\pagenumbering{arabic}
\thispagestyle{fancy}
}


% Allow boldmaths in section titles
\makeatletter
\g@addto@macro\bfseries{\boldmath}
\makeatother
