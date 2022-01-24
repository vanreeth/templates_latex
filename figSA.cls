\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{figSA}[2019/09/18]

% Base class
\LoadClass{standalone}


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

% Maths
\usepackage{amsmath,amssymb,amsfonts}
\usepackage{siunitx}
\RequirePackage{bm}

% Figures
\RequirePackage{graphicx}
\RequirePackage[compatibility=false]{caption}
\RequirePackage{subcaption}
\RequirePackage{enumitem}
\RequirePackage{hyperref}

% Design
\RequirePackage{enumitem}
\RequirePackage{xspace}
\RequirePackage{adjustbox}
\RequirePackage{xcolor}
\definecolor{col1}{HTML}{FFA630}
\definecolor{col2}{HTML}{247696}
\definecolor{col3}{HTML}{646536}
\definecolor{col4}{HTML}{FE4A49}
\definecolor{col5}{HTML}{002500}
\definecolor{col6}{HTML}{68D89B}%green
\definecolor{col7}{HTML}{C4B7CB}
\definecolor{blueCPE}{HTML}{0087CC}

% Schemes
\RequirePackage{animate}
\RequirePackage{pgfplots}
\pgfplotsset{compat=1.8}
\usetikzlibrary{calc,arrows,decorations.pathmorphing,backgrounds,positioning,fit,petri,shapes,patterns}
\usepgfplotslibrary{dateplot,groupplots,polar,fillbetween,patchplots}
\pgfkeys{/pgf/number format/1000 sep={}}
\pgfkeys{/pgf/number format/fixed}
%\pgfkeys{/pgf/number format/fixed zerofill=true}
\pgfkeys{/pgf/number format/precision=3}
\RequirePackage{tikz}
\tikzstyle{every node}=[font=\footnotesize]





