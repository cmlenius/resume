%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%     Resume2 Class
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
\ProvidesClass{resume2}[resume2 class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{resume}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%     Commands
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%% Section %%%%%
\newcommand{\sectionFn}[1]{
  \separatorM
  \sectionfont {#1} \\ \resetfont
}

%%%%% Experience %%%%%
\newcommand{\experienceFn}[3] {
  \subsectionFn{#1} \descriptorFn{#2} \\
  \locationFn{#3}
}
 
%%%%% Skill Proficiency %%%%%
\newcommand{\skillproficiencyFn}[2]{
  \color{secondary}\fontspec[Path = \fontpath]{\mainfont}\fontsize{\mainfontsize}{14pt}\selectfont {> }
  \color{main} {#1} \hfill \color{light} {#2 \\}
  \resetfont
  \separatorS
}

%%%%% Skill %%%%%
\newcommand{\skillFn}[1]{
  \color{secondary}\fontspec[Path = \fontpath]{\mainfont}\fontsize{\mainfontsize}{14pt}\selectfont {> }
  \color{main}{#1 \\} 
  \resetfont
  \separatorS
}
 
%%%%% Minor %%%%%
\newcommand{\minorFn}[1]{
  \vspace{3pt}
  \color{main}\raggedright\fontspec[Path = \fontpath]{\mainfont}\fontsize{8.5pt}{10.5pt}\selectfont {#1} \resetfont
  \resetfont
}

