\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{figSA}[2019/09/18]

% Base class
\LoadClass{standalone}


% List all required packages
% Font
\RequirePackage[utf8]{inputenc}
\RequirePackage[french]{babel}
\RequirePackage[T1]{fontenc}
\RequirePackage{libertine}
\RequirePackage{fontawesome}

% Maths
\usepackage{amsmath,amssymb,amsfonts}
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
\definecolor{col3}{HTML}{8C5383}
\definecolor{col4}{HTML}{E94F37}
\definecolor{col5}{HTML}{21897E}
\definecolor{col6}{HTML}{68D89B}%green
\definecolor{blueCPE}{HTML}{0087CC}

% Schemes
\RequirePackage[]{animate}
\RequirePackage{pgfplots}
\pgfplotsset{compat=1.8}
\usetikzlibrary{arrows,decorations.pathmorphing,backgrounds,positioning,fit,petri,shapes}
\usepgfplotslibrary{dateplot,groupplots,polar}
\pgfkeys{/pgf/number format/1000 sep={}}
\pgfkeys{/pgf/number format/fixed}
\pgfkeys{/pgf/number format/precision=3}
\RequirePackage{tikz}




