\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{presCREATIS}[2019/09/05]

% Process Options
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}
\ProcessOptions\relax

% Base class
\LoadClass{beamer}
\usetheme[progressbar=frametitle]{metropolis}


% List all required packages
% Font
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{libertine}
\RequirePackage{fontawesome}
% Allow boldmaths in section titles
\makeatletter
\g@addto@macro\bfseries{\boldmath}
\makeatother

% Maths
\usepackage{amsmath,amssymb,amsfonts}
\RequirePackage{bm}
\usepackage{siunitx}

% Figures
%\RequirePackage{graphicx}
\RequirePackage[compatibility=false]{caption}
\RequirePackage{subcaption}
\RequirePackage{enumitem}
\RequirePackage{hyperref}

% Design
\RequirePackage{enumitem}
%\RequirePackage[margin=1cm]{geometry}
\RequirePackage{xspace}
\RequirePackage{adjustbox}
%\RequirePackage{xcolor}
\RequirePackage{placeins}
\definecolor{col1}{HTML}{FFA630}
\definecolor{col2}{HTML}{247696}
\definecolor{col3}{HTML}{646536}
\definecolor{col4}{HTML}{FE4A49}
\definecolor{col5}{HTML}{002500}
\definecolor{col6}{HTML}{68D89B}%green
\definecolor{col7}{HTML}{C4B7CB}
\definecolor{blueCPE}{HTML}{0087CC}
\setbeamertemplate{footline}[text line]{%
\parbox{\linewidth}{\vspace*{-10pt}\@name\hfill \@runninginfo \hfill \insertpagenumber}}
\setbeamertemplate{headline}[text line]{%
\includegraphics[scale=.75]{fig_headline1.pdf}
\hfill 
\includegraphics[scale=0.045]{UDL_logo_couleur-01.pdf}
}
\RequirePackage{multirow}

% Schemes
\RequirePackage[]{animate}
\RequirePackage{pgfplots}
\pgfplotsset{compat=1.8}
\usetikzlibrary{arrows,decorations.pathmorphing,backgrounds,positioning,fit,petri,shapes,calc,fillbetween,intersections}
\usepgfplotslibrary{dateplot,groupplots,polar,fillbetween}
\pgfkeys{/pgf/number format/1000 sep={}}
\tikzstyle{every node}=[font=\footnotesize]

% Specific variables
\newcommand{\name}[1]{\def\@name{#1}}
\newcommand{\titlei}[1]{\def\@titlei{#1}}
\newcommand{\runninginfo}[1]{\def\@runninginfo{#1}}
\newcommand{\affiliation}[1]{\def\@affiliation{#1}}

% Specific commands
%
\newcommand{\cone}[1]{\textbf{\textcolor{col1}{#1}}}
\newcommand{\ctwo}[1]{\textbf{\textcolor{col2}{#1}}}
\newcommand{\maketitlepage}{%
\def\beamer@entrycode{\vspace*{-\headheight}}
\makeatother
\begin{frame}
\thispagestyle{empty}
\pagenumbering{gobble}
%
\includegraphics[scale=1]{fig_headline1.pdf}
\hfill 
\includegraphics[scale=0.065]{UDL_logo_couleur-01.pdf}
%
%
%\renewcommand{\baselinestretch}{2}
\vfill
\begin{center}
\Large
\textbf{\@titlei}
\end{center}
%
\begin{center}
\large
\@name
\end{center}
%
\vfill
%
\begin{flushleft}
\@affiliation
\end{flushleft}
%
\vfill
\begin{tikzpicture}[baseline=0pt]
    \node[] at (0,0) {\includegraphics[scale=0.11]{Logo_INSALyon-pantone}};
\end{tikzpicture}
\hfill
\begin{tikzpicture}[baseline=0pt]
    \node[] at (0,0) {\includegraphics[scale=0.035]{inserm.pdf}};
\end{tikzpicture}
\hfill
\begin{tikzpicture}[baseline=0pt]
    \node[] at (0,0) {\includegraphics[scale=0.022]{CNRS_1.pdf}};
\end{tikzpicture}
\hfill
\begin{tikzpicture}[baseline=0pt]
    \node[] at (0,0) {\includegraphics[scale=0.13]{lyon1_simple.pdf}};
\end{tikzpicture}
% \hfill
% \begin{tikzpicture}[baseline=0pt]
%     \node[] at (0,0) {\includegraphics[scale=0.06]{Univ_saint-etienne_logo.pdf}};
% \end{tikzpicture}
%
% \adjustbox{max height=\dimexpr\textheight-5.5cm\relax,
%            width=\textwidth}{
% \begin{tabular}[t]{ccccc}
% \includegraphics[scale=0.12]{Logo_INSALyon-pantone} & \includegraphics[scale=0.04]{inserm} & \includegraphics[scale=0.022]{CNRS_1.pdf} & \includegraphics[scale=0.13]{lyon1_simple.pdf} & \includegraphics[scale=0.06]{Univ_saint-etienne_logo.pdf}
% \end{tabular}
% }
\end{frame}
\renewcommand{\baselinestretch}{1}
\pagenumbering{arabic}
}



