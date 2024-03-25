%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%     Resume1 Class
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
\ProvidesClass{resume1}[resume1 class]
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
  \sectionfont {#1} \\ \resetfont \separatorLine
}
 
%%%%% Experience %%%%%
\newcommand{\experienceFn}[4] {
  \subsectionFn{#1} \hfill \locationFn{#3} \\
  \descriptorFn{#2} \hfill \locationFn{#4} \\
  \resetfont
}

%%%%% Skill %%%%%
\newcommand{\skillFn}[1]{
  \raggedright\fontspec[Path = \fontpath]{\primaryfont}\fontsize{\locationsize}{14pt}\selectfont {#1} \resetfont
}

