%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%     Resume Class
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
\ProvidesClass{resume}[resume class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

\usepackage{enumitem}
\usepackage[lmargin=0.9cm, vmargin=0.85cm, rmargin=0.9cm]{geometry}
\usepackage{graphicx}
\usepackage[hidelinks]{hyperref}
\usepackage{multicol}
\usepackage{pifont}
\usepackage[document]{ragged2e}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%     Color Definitions
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\usepackage[usenames,dvipsnames]{xcolor}
\definecolor{main}{HTML}{2b2b2b}
\definecolor{primary}{HTML}{386B87}
\definecolor{secondary}{HTML}{DC4239}
\definecolor{subsections}{HTML}{333333}
\definecolor{light}{HTML}{5A5A5A}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%     Font Definitions
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def \fontpath {fonts/sourcesanspro/} 
\def \primaryfont {sourcesanspro-SemiBold}
\def \secondaryfont {sourcesanspro-light}
\def \mainfont {sourcesanspro-light}
\def \mainfontbold {sourcesanspro-SemiBold}
\def \mainsansfont {sourcesanspro-light}
\def \mainfontsize {11}

%%%%% Section %%%%%
\def \sectionsize {18}
\def \sectionbaseline {22pt}
\def \sectionfont {\color{primary}\fontspec[Path = \fontpath ]{\primaryfont}\fontsize{\sectionsize}{\sectionbaseline}\selectfont\raggedright}

%%%%% Subsection %%%%%
\def \subsectionsize {12}
\def \subsectionbaseline {14pt}
\def \subsectionfont {\color{subsections}\fontspec[Path = \fontpath]{\primaryfont}\fontsize{\subsectionsize}{\subsectionbaseline}\selectfont\bfseries}
  
%%%%% Descriptor %%%%%
\def \descriptorsize {12}
\def \descriptorbaseline {14pt}
\def \descriptorfont {\color{light}\raggedright\scshape\fontspec[Path = \fontpath]{\secondaryfont}\fontsize{\descriptorsize}{\descriptorbaseline}\selectfont}

%%%%% Location %%%%%
\def \locationsize {9.5}
\def \locationbaseline {12pt}
\def \locationfont {\color{light}\raggedright\fontspec[Path = \fontpath]{\primaryfont}\fontsize{\locationsize}{\locationbaseline}\selectfont}
   
%%%%% Set main fonts %%%%%
\usepackage{fontspec}
\setmainfont[Path=\fontpath, Color=main, BoldFont=\mainfontbold, UprightFeatures={SizeFeatures={Size=\mainfontsize}}, BoldFeatures={SizeFeatures={Size=\mainfontsize}}]{\mainfont}
\setsansfont[Path=\fontpath, Scale=MatchLowercase, Mapping=tex-text, UprightFeatures={SizeFeatures={Size=\mainfontsize}}]{\mainsansfont}

%%%%% Section spacing %%%%%
\usepackage{titlesec}
\titlespacing{\section}{0pt}{5pt}{5pt}
\titlespacing{\subsection}{0pt}{0pt}{0pt}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%     Commands
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
\newcommand{\resetfont}{
  \color{main} \normalfont
}
 
%%%%%% Spacing %%%%%
\newcommand{\separatorS}{\vspace{2pt}}
\newcommand{\separatorM}{\vspace{6pt}}
\newcommand{\separatorL}{\vspace{10pt}}
\newcommand{\separatorLine}{\vspace{-6pt}\noindent\rule{\textwidth}{0.5pt}\separatorS}
   
%%%%% Name %%%%%
\newcommand{\namesection}[2]{
\begin{center}
\color{primary}\fontsize{50pt}{60pt}
\fontspec[Path = \fontpath]{\primaryfont}\selectfont #1 
\fontspec[Path = \fontpath]{\secondaryfont}\selectfont #2 \\
\resetfont
\end{center}
}

%%%%% Contact Line %%%%%
\newcommand{\contactline}[3]{
  \centerline{#1 \hspace{0.1pt} | \hspace{0.1pt} #2 \hspace{0.1pt} | \hspace{0.1pt} #3}
  \vspace{-8pt}
}
 
\newcommand{\contactlinegraphics}[4]{
\vspace{-28pt}
\begingroup\setbox0=\hbox{
\fontspec[Path = \fontpath ]{\primaryfont}\fontsize{\locationsize}{13pt}\selectfont \normalfont
\includegraphics[scale=0.25,trim={0cm 0.5cm -0.5cm 0cm}]{icons/location.png}{#1}\hspace{0.8cm}
\includegraphics[scale=0.25,trim={0cm 0.5cm -0.8cm 0cm}]{icons/email.png}{#2}\hspace{0.5cm}
\includegraphics[scale=0.25,trim={0cm 0.5cm -0.8cm 0cm}]{icons/phone.png}{#3}\hspace{0.8cm}
\includegraphics[scale=0.25,trim={0cm 0.5cm -0.8cm 0cm}]{icons/home.png}{#4}\hspace{0.8cm}
}\parbox{\wd0}{\box0}\endgroup
}

%%%%% Summary %%%%%
\newcommand{\summaryFn}[1]{
  \separatorL
  \fontspec[Path = \fontpath]{\primaryfont}\fontsize{\locationsize}{14pt}\selectfont {#1} \resetfont
}

%%%%% Subsection %%%%%
\newcommand{\subsectionFn}[1]{
  \separatorS
  \subsectionfont {#1} \resetfont
}

%%%%% Descriptor %%%%%
\newcommand{\descriptorFn}[1]{
  \descriptorfont {#1} \resetfont
}

%%%%% Location %%%%%
\newcommand{\locationFn}[1]{
  \locationfont {#1} \resetfont
}

%%%%%%%%%%%%%%%%%%%
%    Misc
%%%%%%%%%%%%%%%%%%%
 
%%%%% Inline Centered Logo %%%%%
\newcommand{\vcenteredinclude}[2]{\begingroup
\setbox0=\hbox{\includegraphics[scale=0.10,trim={0 0.7cm 0cm 0cm}]{#1} {#2}}
\parbox{\wd0}{\box0}\endgroup}

%%%%% Bullet Lists %%%%%
\newenvironment{tightemize}
{\vspace{-\topsep}\begin{itemize}\itemsep4pt \parskip0pt \parsep0pt}
{\end{itemize}\vspace{-\topsep}}
% [label=\ding{213}]

