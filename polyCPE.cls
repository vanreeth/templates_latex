\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{polyCPE}[2019/09/05]

% Base class
\LoadClass{article}

% List all required packages
% Font
\RequirePackage[utf8]{inputenc}
\RequirePackage[french,english]{babel}
\RequirePackage[T1]{fontenc}
\RequirePackage{libertine}
\RequirePackage{listings}
\renewcommand{\baselinestretch}{1.5}
\RequirePackage{fontawesome}

% Maths
\usepackage{amsmath,amssymb,amsfonts}
\RequirePackage{bm}

% Figures
\RequirePackage{graphicx}
\RequirePackage[compatibility=false]{caption}
\RequirePackage{subcaption}
\RequirePackage{enumitem}
\RequirePackage{hyperref, breakurl}

% Design
\RequirePackage[left=2cm,right=2cm,top=2.5cm,bottom=2.5cm]{geometry}
\RequirePackage{xspace}
\RequirePackage{xcolor}
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
\usetikzlibrary{arrows,decorations.pathmorphing,backgrounds,positioning,fit,petri,shapes}
\usepgfplotslibrary{dateplot,groupplots,polar}

% Specific variables
\newcommand{\name}[1]{\def\@name{#1}}
\newcommand{\logocpe}[1]{\def\@logocpe{#1}}
\newcommand{\academicYear}[1]{\def\@academicYear{#1}}
\newcommand{\level}[1]{\def\@level{#1}}
\newcommand{\titlei}[1]{\def\@titlei{#1}}
\newcommand{\titleii}[1]{\def\@titleii{#1}}
\newcommand{\titleiii}[1]{\def\@titleiii{#1}}

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



