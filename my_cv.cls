% CV Class
% Awjin Ahn, 12.14.14
% 
% https://www.sharelatex.com/blog/2011/03/27/how-to-write-a-latex-class-file-and-design-your-own-cv.html

\LoadClass[10pt, letterpaper]{article}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{my_cv}

\RequirePackage[top=.5in, right=.5in, bottom=.5in, left=.5in]{geometry}
\RequirePackage{changepage}
\RequirePackage{titlesec}
\RequirePackage{setspace}
\RequirePackage{xcolor}
\RequirePackage{enumitem}

\pagenumbering{gobble}       % remove page numbers

%% 
% Name
% 
\newcommand{\name}[1] {
  \centerline{
    \sffamily{
      \huge{#1}
    }
  }
  \vspace{.5em}
}


%% 
% Contact Info
%
\newcommand{\contact}[4] {
    \centerline{
      \sffamily{
        \color{darkgray}{
          #1 \hspace{.25em} $\cdot$ \hspace{.25em} #2 \hspace{.25em} $\cdot$ \hspace{.25em}
          #3 \hspace{.25em} $\cdot$ \hspace{.25em} #4 
      }\vspace{0em}
    }
  }
}


%% 
% Section
% 
\titleformat{\section}
{\sffamily\Large \vspace{-1em}}
{}{0em}           % prefix a string to all sections (default: none)
{}                % code before the heading (default: none)
[\vspace{-.25em}]  % control margin under header


%% 
% Entry
% 
\newcommand{\entryA}[2] {
  \sffamily{
    \vspace{-.6em}
    \noindent \hspace{1em} \textbf{#1} \hfill \small{\color{gray}{#2}}
    \vspace{-.6em}
  }
}


%% 
% Entry with secondary
% 
\newcommand{\entryB}[3] {
  \sffamily{
    \vspace{-.6em}
    \noindent \hspace{1em} \textbf{#1} \color{gray}{\ $\cdot$\ } \color{darkgray}{#2} \hfill \small{\color{gray}{#3}}
    \vspace{-.6em}
  }
}


%% 
% Entry Detail
% 
\setlist[1]{itemsep=-.2em,leftmargin=2em}
\newcommand{\entrydetail}[1] {
  \small{
    \item
    \begin{adjustwidth}{1em}{10em}  % set left and right margins
      \color{darkgray}\sffamily{#1}
    \end{adjustwidth}
  }
}


%% 
% Prose
% 
\newcommand{\prose}[1] {
  \begin{adjustwidth}{1.3em}{.4em}
    \rmfamily{#1}
  \end{adjustwidth}
}


%% 
% Prose Detail
% 
\newcommand{\prosedetail}[1] {
  \item
    \begin{adjustwidth}{0em}{.4em}
      \rmfamily{#1}
    \end{adjustwidth}
}


%% 
% No Bullets
% 
\renewcommand{\labelitemi} {}