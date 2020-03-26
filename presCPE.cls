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
\RequirePackage[utf8]{inputenc}
\RequirePackage[french]{babel}
\RequirePackage[T1]{fontenc}
\RequirePackage{libertine}
\RequirePackage{fontawesome}

% Maths
\RequirePackage{amsmath,amssymb,amsfonts,mathtools}
\RequirePackage{bm}
\RequirePackage{empheq}

% Figures
\RequirePackage{graphicx}
\RequirePackage[compatibility=false]{caption}
\RequirePackage{subcaption}
\RequirePackage{enumitem}
\RequirePackage{hyperref}

% Design
\RequirePackage{enumitem}
%\RequirePackage[left=2cm,right=2cm,top=2.5cm,bottom=2.5cm]{geometry}
\RequirePackage{xspace}
\RequirePackage{adjustbox}
\RequirePackage{xcolor}
\RequirePackage{placeins}
\definecolor{col1}{HTML}{FFA630}
\definecolor{col2}{HTML}{247696}
\definecolor{col3}{HTML}{8C5383}
\definecolor{col4}{HTML}{E94F37}
\definecolor{col5}{HTML}{21897E}
\definecolor{col6}{HTML}{68D89B}%green
\definecolor{blueCPE}{HTML}{0087CC}
\setbeamertemplate{footline}[text line]{%
\parbox{\linewidth}{\vspace*{-10pt}\@name\hfill \@titleiii \hfill\insertpagenumber}}
%\setbeamercolor{progress bar}{}

% Schemes
\RequirePackage[]{animate}
\RequirePackage{pgfplots}
\usetikzlibrary{patterns}
%\pgfplotsset{compat=1.8}
\usetikzlibrary{arrows,decorations.pathmorphing,backgrounds,positioning,fit,petri,shapes}
\usepgfplotslibrary{dateplot,groupplots,polar}
\pgfkeys{/pgf/number format/1000 sep={}}
\pgfkeys{/pgf/number format/fixed}
\pgfkeys{/pgf/number format/precision=3}

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
\textcolor{blueCPE}{\textbf{\@name~(\@affiliation)}}\\
\@address~$-$~\@email
\end{flushleft}
%
\vfill
\end{frame}
\renewcommand{\baselinestretch}{1}
\pagenumbering{arabic}
}



