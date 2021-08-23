\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lettreCPE}[2019/11/15]

% Base class
\LoadClass{letter}


% List all required packages
% Font
\RequirePackage[utf8]{inputenc}
\RequirePackage[french,english]{babel}
\RequirePackage[T1]{fontenc}
\RequirePackage{lmodern}	
\renewcommand*\familydefault{\sfdefault}

\RequirePackage{scrextend}
\changefontsizes{10pt}

% Figures
\RequirePackage{graphicx}
\RequirePackage[compatibility=false]{caption}
\RequirePackage{subcaption}
\RequirePackage{enumitem}
\RequirePackage{hyperref, breakurl}

% Design
\RequirePackage[headheight=97pt,top=5cm,bottom=5cm,footskip=1mm,footskip=1mm]{geometry}
\setlength{\headsep}{3cm}
\RequirePackage{fancyhdr}
\RequirePackage{xspace}
\RequirePackage{xcolor}
\RequirePackage{array}
\RequirePackage{multirow}
\RequirePackage{placeins}
\definecolor{col1}{HTML}{FFA630}
\definecolor{col2}{HTML}{247696}
\definecolor{col3}{HTML}{8C5383}
\definecolor{col4}{HTML}{E94F37}
\definecolor{col5}{HTML}{21897E}
\definecolor{col6}{HTML}{68D89B}%green
\definecolor{blueCPE}{HTML}{0087CC}
\definecolor{gray}{rgb}{.5 .5 .5} 


% Specific variables
\newcommand{\logocpe}[1]{\def\@logocpe{#1}}
\newcommand{\logoul}[1]{\def\@logoul{#1}}
\newcommand{\header}[1]{\def\@header{#1}}

% Specific commands
\pagestyle{fancy}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\fancyheadoffset{1.7cm}
\fancyfootoffset{1.7cm}

\rhead{\includegraphics[width=19.53cm]{\@header}}

\cfoot{\color{blueCPE}
	\begin{tabular}{m{8cm}m{7cm}m{6cm}}
		\textbf{Campus LyonTech - la Doua} && \multirow{2}{*}{\includegraphics[height=1.5cm]{\@logoul}}\\
		43, bd du 11 Novembre 1918 & \\
		Bâtiment Hubert Curien & Tél. : (33) 04 72 43 17 00\\
		B.P. 82077 - 69616 Villeurbanne cedex & {\scriptsize SIRET 391 895 109 00026 – APE 8542 Z} & \\
		\textbf{www.cpe.fr} & \scriptsize {TVA INTRACOM FR40 391 895 109}
	\end{tabular}
}



% Allow boldmaths in section titles
\makeatletter
\g@addto@macro\bfseries{\boldmath}
\makeatother
