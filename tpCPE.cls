\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{polyCPE}[2020/08/12]

% Base class
\LoadClassWithOptions{article}

% List all required packages
% Font
\RequirePackage[utf8]{inputenc}
\RequirePackage[french]{babel}
\RequirePackage[T1]{fontenc}
\RequirePackage{amsfonts}
\RequirePackage{fontawesome}
\RequirePackage{lmodern}
%\RequirePackage{pifont}
%\RequirePackage{anyfontsize}
%\RequirePackage{t1enc}
\RequirePackage{extarrows} 
\renewcommand*\familydefault{\sfdefault}
%\usefonttheme[onlymath]{serif}
\RequirePackage{libertine}
\renewcommand{\baselinestretch}{1.25}


\setlength\parindent{0pt}


% Maths
\RequirePackage{amsmath}
\RequirePackage{amsthm} 
\RequirePackage{amssymb} 
\RequirePackage{amsfonts} 
\RequirePackage{mathptmx}
\RequirePackage{siunitx}
%\usepackage{stmaryrd}	% add some symbols eg \llbracket
%\usepackage{cases}
\usepackage{esint}	% add som symbols eg \fint
%\RequirePackage{bm}
\theoremstyle{definition}
\newtheorem{ex}{Exemple}[section]
\RequirePackage{bm}

% Figures
\RequirePackage{graphicx}
%\RequirePackage{subfig}
%\RequirePackage[compatibility=false]{caption}
%\RequirePackage{subcaption}
\RequirePackage{breakurl}

% Arrays
\usepackage{booktabs}
\usepackage{array}
\usepackage{multirow} 
%\usepackage{multicol}  
%\usepackage{blkarray} 
%\usepackage{tabularx}   % tabular + col X wit auto wdith
\usepackage{pbox}

% Misc
\usepackage{cancel}		
\usepackage{url}   
\usepackage{float}
\usepackage{calc}
\usepackage[normalem]{ulem}
%\usepackage{setspace}	
%\usepackage{indentfirst}
%\usepackage{listings}
\usepackage[shortlabels]{enumitem}	% customize lists
	%\setlist{nolistsep}
\usepackage{xspace}		% to define \ie, \etc, \eg ...
\usepackage{oldstyle}
\usepackage[hidelinks]{hyperref}

%\hypersetup{
%    colorlinks=false,       % false: boxed links; true: colored links
%    linkcolor=red,          % color of internal links
%    citecolor=blue,        % color of links to bibliography
%    %filecolor=magenta,      % color of file links
%    %urlcolor=cyan           % color of external links
%}



% Design
%\usepackage{etoolbox}
\RequirePackage{minted}
\setminted{style=vs,bgcolor=gray!10}
\RequirePackage[left=2cm,right=2cm,top=2.5cm,bottom=2.5cm]{geometry}
\RequirePackage{xspace}
\RequirePackage{xcolor}
\RequirePackage{colortbl}
%\usepackage[skins,theorems]{tcolorbox} % customized boxed text
\RequirePackage[breakable,skins,theorems]{tcolorbox}
\tcbset{
	breakable,
%	frame code={}
%	center title,
	left=0pt,
	right=0pt,
%	top=0pt,
	bottom=0pt,
	width=\dimexpr\textwidth\relax,
	enlarge left by=0mm,
	boxsep=5pt,
	%arc=0pt,outer arc=0pt,
}

% tcolorbox env
\newtcolorbox{notations}{%
	colback=col2!10,%
	colframe=col2,%
	fonttitle=\bfseries,%
	title=Notations,%
	top=0pt,%
}

%\newtcolorbox{exemple}{%
%	colback=gray!15,%
%	colframe=white,%
%}

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


\setlist[itemize,1]{label=\textbullet}
\setlist[itemize,2]{label=$\triangleright$}

\RequirePackage{placeins}
%\definecolor{col1}{HTML}{FFA630}
%\definecolor{col2}{HTML}{247696}
%\definecolor{col3}{HTML}{8C5383}
%\definecolor{col4}{HTML}{E94F37}
%\definecolor{col5}{HTML}{21897E}
%\definecolor{col6}{HTML}{68D89B}%green
\definecolor{blueCPE}{HTML}{0087CC}
\definecolor{col1}{HTML}{0E95A1}%{0FA3B1}
\definecolor{col2}{HTML}{DC602E}%
\definecolor{col3}{HTML}{EDECED}%
\definecolor{col4}{HTML}{B8D5B8}%
\definecolor{col5}{HTML}{D7B49E}%

\definecolor{b}{rgb}{0.00000,0.44700,0.74100}%
\definecolor{o}{rgb}{0.85000,0.32500,0.09800}%
\definecolor{y}{rgb}{0.92900,0.69400,0.12500}%
\definecolor{g}{rgb}{0.46600,0.67400,0.18800}%
\definecolor{p}{rgb}{0.49400,0.18400,0.55600}%
\definecolor{k}{rgb}{0,0,0}%
\definecolor{gray}{rgb}{0.75,0.75,0.75}%
\definecolor{pink}{rgb}{1,0.7529,0.7961}%
\definecolor{r}{rgb}{0.6350,0.0780,0.1840}%


\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\lhead{\@titleii~(\@level)}
\rhead{}
\lfoot{\@academicYear}
\rfoot{\@name}
\cfoot{\thepage}

% Schemes
\RequirePackage[]{animate}
\RequirePackage{pgfplots}
%\pgfplotsset{compat=1.8}
\usetikzlibrary{arrows,decorations.pathmorphing,backgrounds,positioning,fit,petri,shapes}
\usepgfplotslibrary{dateplot,groupplots,polar,fillbetween}

% Specific variables
\newcommand{\cone}[1]{\textbf{\textcolor{col1}{#1}}}
\newcommand{\ctwo}[1]{\textbf{\textcolor{col2}{#1}}}
\newcommand{\name}[1]{\def\@name{#1}}
\newcommand{\logocpe}[1]{\def\@logocpe{#1}}
\newcommand{\academicYear}[1]{\def\@academicYear{#1}}
\newcommand{\level}[1]{\def\@level{#1}}
\newcommand{\titlei}[1]{\def\@titlei{#1}}
\newcommand{\titleii}[1]{\def\@titleii{#1}}
%\newcommand{\titleiii}[1]{\def\@titleiii{#1}}
%\newcommand{\figprem}[2]{\def\@figprem{#1}\def\@figpremwidth{#2}}
%\newcommand{\address}[1]{\def\@address{#1}}
%\newcommand{\email}[1]{\def\@email{#1}}
%\newcommand{\affiliation}[1]{\def\@affiliation{#1}}


\newcommand{\objectives}[1]{\def\@objectives{#1}}
\newcommand{\guidelines}[1]{\def\@guidelines{#1}}
\newcommand{\evaluation}[1]{\def\@evaluation{#1}}

\newcommand{\good}{\textcolor{LimeGreen}{\faCheck}}
\newcommand{\bad}{\textcolor{Mahogany}{\faClose}}
\newcommand{\quest}{\textcolor{black}{\faSearch}}	%faSearch faQuestionCircleO
\newcommand{\warning}{\textcolor{Dandelion}{\faWarning}}
\newcommand{\git}{\textcolor{black}{\faGithub}}
\newcommand{\redo}{\textcolor{black}{\faRepeat}}	%{\faRetweet~}
\newcommand{\idea}{\textcolor{Orange}{\faLightbulbO}}
\newcommand{\ban}{\textcolor{Mahogany}{\faBan}}
\newcommand{\bof}{\textcolor{gray}{\faMehO}}

% Specific commands
\newcommand{\displaylogo}[1]{\includegraphics[scale=#1]{\@logocpe}}
%
\newcommand{\maketitlepage}[1]{%
\thispagestyle{empty}
\pagenumbering{gobble}
\begin{minipage}{.5\textwidth}
\displaylogo{#1}%
\end{minipage}
\begin{minipage}{.5\textwidth}
\begin{flushright}
\Huge
\textbf{Année universitaire\\
\@academicYear}
\end{flushright}
\end{minipage}
%
\begin{minipage}{\textwidth}
\vspace{1.5cm}
\noindent\makebox[\linewidth]{\textcolor{blueCPE}{\rule{\paperwidth}{2pt}}}
%
\begin{center}
\Huge
\textcolor{blueCPE}{\textbf{\@level ~$-$~ \@titlei}}\\
\vspace{.5cm}
\textbf{\@titleii}\\
\vspace{1.25cm}
\Large\textbf{\@name}
\end{center}
%
\noindent\makebox[\linewidth]{\textcolor{blueCPE}{\rule{\paperwidth}{2pt}}}
\end{minipage}
%
\vspace{1cm}
\@objectives
\@guidelines
\@evaluation
\vfill
%
%
\newpage
\pagenumbering{arabic}
\thispagestyle{fancy}
}



% text color
\newcommand{\col}		[2]{\textcolor{col#1}{#2}}%
\newcommand{\colbf}	[2]{\textbf{\textcolor{col#1}{#2}}}

% Allow boldmaths in section titles
\makeatletter
\g@addto@macro\bfseries{\boldmath}
\makeatother