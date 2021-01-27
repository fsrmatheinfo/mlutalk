%! Class = mlutalk
%! Author = Fachschaftsrat Mathematik/Informatik der Studierendenschaft der Martin-Luther-Universität Halle-Wittenberg
%! Date = 2020/04/20

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mlutalk}[2020/04/20 v1.0]

% Encoding:
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}

% Load base class (report) and basic utilities.
\LoadClass{beamer}

% Basic utilities:
\RequirePackage{babel}
\RequirePackage{hyperref}
\RequirePackage{color,xcolor}
\RequirePackage{graphicx}

% Page layout:
\setbeamersize{text margin left=0.5cm, text margin right=0.5cm}

% Font:
\RequirePackage{mlutext}
\usefonttheme[onlymath]{serif}
\RequirePackage{lmodern} % "Latin Modern" font for paragraphs and headings.
\RequirePackage{libertine}
\setbeamerfont{title}{series=\bfseries,parent=structure}

% Math:
\RequirePackage{mlumath}

% Bibliography & cites:
\RequirePackage[autostyle=true]{csquotes} % Anführungszeichen und direkte Zitate
\RequirePackage[
    backend=biber,
    style=authoryear, % Don't group bibliography items.
    citestyle=alphabetic, % Cite using short-code of author and year.
    url=false,doi=false,isbn=false, % Exclude URLs/DOIs/ISBNs from bibliography items.
    dashed=false, % Repeat author name in bibliography.
]{biblatex}
\renewcommand{\bibfont}{\footnotesize}
\setlength{\bibhang}{0pt} % Remove hanging indent in bibliography list.
\AtEveryCite{\footnotesize\color{fg!30!bg}} % Make cites appear smaller and slightly transparent.

% Standard frames:
\newcommand{\bibliographyframe}{
    \begin{frame}[allowframebreaks]{\bibname}
        \begin{thebibliography}{10}
            \beamertemplatebookbibitems
            \printbibliography
            % References
        \end{thebibliography}
    \end{frame}
}
\newcommand{\titleframe}{
    \begin{frame}
        \titlepage
        % Title frame
    \end{frame}
}

% Beamer behavior:
\setbeamercovered{transparent} % Show covered elements slightly transparent instead of hiding them completely.
\beamertemplatenavigationsymbolsempty % Hide navigation controls.
\setbeamertemplate{frametitle continuation}[from second][\usebeamercolor{normal text}\color{fg!30!bg}\insertcontinuationtext] % Indicator for continued slides.
\setbeamertemplate{footline}[frame number] % Show frame number.
\setbeamertemplate{page number in head/foot}[framenumber]
\RequirePackage{appendixnumberbeamer} % Restart frame numbering at appendix.
\defbeamertemplate{description item}{align left}{\insertdescriptionitem\hfill}
\setbeamertemplate{description item}[align left]

% Set simple beamer theme.
\usetheme{boxes} % Simple

% University theme:
\definecolor{MluGreen}{RGB}{0,81,51}
\setbeamercolor{structure}{fg=MluGreen}

% Pro/contra items in lists:
\RequirePackage{bm}
\newcommand{\pro}{\item[\(\bm{+}\)]} % Pro item
\newcommand{\contra}{\item[\(\bm{-}\)]} % Contra item

% "Thank you!" banner.
\newcommand{\thankyouname}{}
\addto\captionsenglish{\renewcommand{\thankyouname}{Thank you!}}
\addto\captionsgerman{\renewcommand{\thankyouname}{Vielen Dank!}}
\addto\captionsngerman{\renewcommand{\thankyouname}{Vielen Dank!}}
\newcommand{\thankyou}{\vfill\hfill\emph{\thankyouname}}