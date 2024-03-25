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
\usepackage[hmargin=1.2cm, vmargin=1.0cm]{geometry}
\usepackage{graphicx}
\usepackage[hidelinks]{hyperref}
\usepackage{multicol}
\usepackage{pifont}
\usepackage[document]{ragged2e}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%     Color Definitions
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\usepackage[usenames,dvipsnames]{xcolor}
\definecolor{main}{HTML}{262626}
\definecolor{primary}{HTML}{386B87}
\definecolor{secondary}{HTML}{DC4239}
\definecolor{subsections}{HTML}{2A2A2A}
\definecolor{light}{HTML}{444444}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%     Font Definitions
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%\def \fontpath {fonts/sourcesanspro/} 
%\def \mainfontregular {sourcesanspro-regular}
%\def \mainfontbold {sourcesanspro-SemiBold}
%\def \mainfontlight {sourcesanspro-light}
\def \fontpath {fonts/calibri/} 
\def \mainfontregular {Calibri}
\def \mainfontbold {Calibri_Bold}
\def \mainfontlight {Calibri_Light}
 
\def \mainfontsize {11}
\def \mainbaseline {12}
\def \mainfont {\color{main}\raggedright\fontspec[Path = \fontpath]{\mainfontlight}\fontsize{\mainfontsize}{\mainbaseline}\selectfont}

%%%%% Section %%%%%
\def \sectionsize {18}
\def \sectionbaseline {22}
\def \sectionfont {\color{primary}\fontspec[Path = \fontpath ]{\mainfontbold}\fontsize{\sectionsize}{\sectionbaseline}\selectfont\textsc}

%%%%% Subsection %%%%%
\def \subsectionsize {12}
\def \subsectionbaseline {14}
\def \subsectionfont {\color{subsections}\fontspec[Path = \fontpath]{\mainfontbold}\fontsize{\subsectionsize}{\subsectionbaseline}\selectfont}
  
%%%%% Descriptor %%%%%
\def \descriptorsize {12}
\def \descriptorbaseline {14}
\def \descriptorfont {\color{subsections}\raggedright\fontspec[Path = \fontpath]{\mainfontregular}\fontsize{\descriptorsize}{\descriptorbaseline}\selectfont}

%%%%% Minor %%%%%
\def \minorsize {11}
\def \minorbaseline {12}
\def \minorfont {\color{light}\raggedright\fontspec[Path = \fontpath]{\mainfontbold}\fontsize{\minorsize}{\minorbaseline}\selectfont}
   
%%%%% Set main fonts %%%%%
\usepackage{fontspec}
\setmainfont[Path=\fontpath, Color=main, BoldFont=\mainfontbold, UprightFeatures={SizeFeatures={Size=\mainfontsize}}, BoldFeatures={SizeFeatures={Size=\mainfontsize}}]{\mainfontlight}
\setsansfont[Path=\fontpath, Scale=MatchLowercase, Mapping=tex-text, UprightFeatures={SizeFeatures={Size=\mainfontsize}}]{\mainfontlight}

%%%%% Section spacing %%%%%
\usepackage{titlesec}
\titlespacing{\section}{0pt}{5pt}{5pt}
\titlespacing{\subsection}{0pt}{0pt}{0pt}

\newcommand{\resetfont}{
  \mainfont
}
 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%     Formatting
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
%%%%% Spacing %%%%%
\newcommand{\separatorN}{\vspace{-4pt}}
\newcommand{\separatorS}{\vspace{2pt}}
\newcommand{\separatorM}{\vspace{6pt}}
\newcommand{\separatorL}{\vspace{10pt}}
\newcommand{\separatorLine}{\vspace{-6pt}\noindent\rule{\textwidth}{0.5pt}\separatorS}
 
%%%%% Bullet Lists %%%%%
\newenvironment{tightemize}
{\vspace{-\topsep} \begin{itemize} \itemsep6pt \parskip0pt \parsep0pt}
{\end{itemize}\vspace{-\topsep}}
%[label=\ding{213}]

   
%%%%% Title %%%%%
\newcommand{\titleFn}[2]{
  \begin{center}
    \color{primary}\fontsize{50pt}{60pt}
    \fontspec[Path = \fontpath]{\mainfontbold}\selectfont #1 
    \fontspec[Path = \fontpath]{\mainfontlight}\selectfont #2 \\
    \resetfont
  \end{center}
}
 
%%%%% Contact Line %%%%%
\newcommand{\contactLineFn}[3]{
  \mainfont \centerline{ #1 
  \hspace{0.1pt} | \hspace{0.1pt} #2 
  \hspace{0.1pt} | \hspace{0.1pt} #3 
  \resetfont}
  \vspace{-8pt}
}
 
\newcommand{\contactSectionFn}[4]{
  \resetfont
  \includegraphics[scale=0.16,trim={0cm 0.5cm -0.8cm 0cm}]{icons/email.png}{#1 \\}
  \separatorM
  \includegraphics[scale=0.16,trim={0cm 0.5cm -0.8cm 0cm}]{icons/phone.png}{#2 \\}
  % \separatorM
  % \includegraphics[scale=0.16,trim={0cm 0.5cm -0.5cm 0cm}]{icons/location.png}{#3}
  % \separatorM
  % \includegraphics[scale=0.15,trim={0cm 0.5cm -0.8cm 0cm}]{icons/home.png}{#4 \\}
}
 
%%%%% Summary %%%%%
\newcommand{\summaryFn}[1]{
  \minorfont \centerline{#1} \resetfont
}
 
 
%%%%% Section %%%%%
\newcommand{\sectionFn}[1]{
  \separatorM
  \sectionfont {#1} \\ \resetfont
  \separatorLine
}

%%%%% Subsection %%%%%
\newcommand{\subsectionFn}[1]{
  \separatorS
  \subsectionfont {#1}\resetfont
}

%%%%% Descriptor %%%%%
\newcommand{\descriptorFn}[1]{
  \descriptorfont {#1}\resetfont
}

%%%%% Minor %%%%%
\newcommand{\minorFn}[1]{
  \minorfont {#1}\resetfont
}

%%%%% Normal %%%%%
\newcommand{\normalFn}[1]{
  \resetfont{#1}
}
 
%%%%% Education %%%%%
\newcommand{\educationFn}[3] {
  \subsectionFn{#1} \minorFn{#2} \hfill \minorFn{#3} \\
  \resetfont
}
 
%%%%% Experience %%%%%
\newcommand{\experienceFn}[4] {
  \subsectionFn{#2} \minorFn{#1 — #4} \hfill \minorFn{#3} \\
  \separatorS
  \resetfont
}
 
\newcommand{\experienceFnTwo}[4] {
  \subsectionFn{#2} \hfill \minorFn{#3} \\
  \minorFn{#1} \hfill \minorFn{#4} \\ 
  \separatorS
  \resetfont
}
 
%%%%% Skills %%%%%
\newcommand{\skillLabelFn}[1]{
  \minorFn {#1} \resetfont
}

\newcommand{\skillFn}[1]{
  \mainfont\color{secondary} {> } \color{main}{#1 \\} \resetfont
  \vspace{5pt}
}
 
\newcommand{\skillProficiencyFn}[1]{
  \mainfont\color{light} {#1 \\} \resetfont
  \vspace{5pt}
}
