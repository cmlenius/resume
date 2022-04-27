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
\definecolor{subheadings}{HTML}{333333}
\definecolor{light}{HTML}{6A6A6A}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%     Font Definitions
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Title
\def \pathtitlefont {fonts/sourcesanspro/} 
\def \firstnamefont {sourcesanspro-SemiBold}
\def \secondnamefont {sourcesanspro-light}
\def \titlefont {\firstnamefont}
\def \namefontsize {9.5}

% Main Body
\def \pathmainfont {fonts/sourcesanspro/}
\def \mainfont {sourcesanspro-light}
\def \mainfontbold {sourcesanspro-semibold}
\def \mainfontsize {11}
\def \mainsansfont {sourcesanspro-light}

% Subheading
\def \pathsubheadingfont {\pathtitlefont}
\def \subheadingfont {\titlefont}
\def \subheadingsize {13}
 
% Descriptor
\def \pathdescriptorfont {\pathsubheadingfont}
\def \descriptorfont {\secondnamefont}
\def \descriptorsize {12}

% Location
\def \pathlocationfont {\pathsubheadingfont}
\def \locationfont {\subheadingfont}
\def \locationsize {9.5}

% Set main fonts
\usepackage{fontspec}
\setmainfont[Color=main, Path = \pathmainfont,BoldFont=\mainfontbold,UprightFeatures={SizeFeatures={Size=\mainfontsize}},
  BoldFeatures={SizeFeatures={Size=\mainfontsize}}]{\mainfont}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = \pathmainfont,UprightFeatures={SizeFeatures={Size=\mainfontsize}}
  ]{\mainsansfont}

% Section spacing
\usepackage{titlesec}
\titlespacing{\section}{0pt}{5pt}{5pt}
\titlespacing{\subsection}{0pt}{0pt}{0pt}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%     Commands
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   
% Section separators
\newcommand{\separatorS}{\vspace{5pt}}
\newcommand{\separatorM}{\vspace{10pt}}
\newcommand{\separatorL}{\vspace{15pt}}

%Contact Line
\newcommand{\contactline}[4]{\begingroup
\setbox0=\hbox{
\includegraphics[scale=0.25,trim={0cm 0.5cm -0.5cm 0cm}]{icons/location.png}{#1}\hspace{0.8cm}
\includegraphics[scale=0.25,trim={0cm 0.5cm -0.8cm 0cm}]{icons/email.png}{#2}\hspace{0.5cm}
\includegraphics[scale=0.25,trim={0cm 0.5cm -0.8cm 0cm}]{icons/phone.png}{#3}\hspace{0.8cm}
\includegraphics[scale=0.25,trim={0cm 0.5cm -0.8cm 0cm}]{icons/home.png}{#4}\hspace{0.8cm}
}\parbox{\wd0}{\box0}\endgroup}
 
% Name command
\newcommand{\namesection}[2]{
\RaggedRight{
\color{primary}
\fontsize{50pt}{60pt}
\fontspec[Path = \pathtitlefont]{\firstnamefont}\selectfont #1 
\fontspec[Path = \pathtitlefont]{\secondnamefont}\selectfont #2
} \\
}

% Header
\titleformat{\section}{\color{primary}
\scshape\fontspec[Path = \pathtitlefont]{\titlefont}\fontsize{18pt}{24pt}\selectfont \raggedright}{}{0em}{}

% Subheader
\titleformat{\subsection}{
\color{subheadings}\fontspec[Path = \pathsubheadingfont ]{\subheadingfont}\fontsize{\subheadingsize}{13pt}\selectfont\bfseries\uppercase}{}{0em}{}

% Subheader with descriptor
\newcommand{\describedsubsection}[1]{
\color{subheadings}\fontspec[Path = \pathsubheadingfont ]{\subheadingfont}\fontsize{\subheadingsize}{13pt}\selectfont\bfseries\uppercase {#1} \normalfont}

% Descriptor
\newcommand{\descript}[1]{
\color{subheadings}\raggedright\scshape\fontspec[Path = \pathdescriptorfont]{\descriptorfont}\fontsize{\descriptorsize}{15pt}\selectfont {#1 \\} \normalfont}

% Location
\newcommand{\location}[1]{
\color{light}\raggedright\fontspec[Path = \pathlocationfont]{\locationfont}\fontsize{\locationsize}{14pt}\selectfont {#1\\} \normalfont \color{main}}

% Minor
\newcommand{\minor}[1]{
\vspace{3pt}
\color{main}\raggedright\fontspec[Path = \pathmainfont]{\mainfont}\fontsize{8.5pt}{10.5pt}\selectfont {#1\\} \normalfont \color{main}}

% Skill Proficiency
\newcommand{\skillproficiency}[2]{
\color{secondary}\fontspec[Path = \pathmainfont]{\mainfont}\fontsize{\mainfontsize}{14pt}\selectfont {> }
\color{main}{#1}\hfill
\color{light}{#2 \\}
\vspace{1.5pt}
}

% Skill
\newcommand{\skill}[1]{
\color{secondary}\fontspec[Path = \pathmainfont]{\mainfont}\fontsize{\mainfontsize}{13pt}\selectfont {> }
\color{main}{#1\\}
\vspace{1.5pt}
}

%%%%%%%%%%%%%%%%%%%
%    Misc
%%%%%%%%%%%%%%%%%%%
 
% Inline Centered Logo
\newcommand{\vcenteredinclude}[2]{\begingroup
\setbox0=\hbox{\includegraphics[scale=0.10,trim={0 0.7cm 0cm 0cm}]{#1} {#2}}
\parbox{\wd0}{\box0}\endgroup}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{
\vspace{-\topsep}\begin{itemize}[label=\ding{212}]\itemsep1pt \parskip0pt \parsep0pt}
{\end{itemize}\vspace{-\topsep}}

