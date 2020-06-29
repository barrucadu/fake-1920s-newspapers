\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{newspaper1920}[barrucadu's 1920s newspaper class]

\LoadClass[10pt]{article}

\RequirePackage[paperheight=14.75in,paperwidth=11.75in,margin=0.5in]{geometry}
\RequirePackage{calc}
\RequirePackage{multicol}

\newcommand{\@minipagerestore}{\setlength{\parindent}{1pc}}

\pagestyle{empty}

\RequirePackage{fontspec}
\newfontfamily\newspaperBody{OldStyHPLHS.otf}[
  Path = \string~/s/fonts/hplhs/,
  ItalicFont    = OldstItaHPLHS.otf,
  SmallCapsFont = OldstSCHPLHS.otf]
\newfontfamily\newspaperSlab{SlabSerHPLHS.otf}[
  Path = \string~/s/fonts/hplhs/]
\newfontfamily\headlineOne{HeadlOneHPLHS.otf}[
  Path = \string~/s/fonts/hplhs/]
\newfontfamily\headlineTwo{HeadlTwoHPLHS.otf}[
  Path = \string~/s/fonts/hplhs/]
\newfontfamily\headlineThree{HeadlModifiedHPLHS.otf}[
  Path = \string~/s/fonts/hplhs/]

% this is newspaperBody
\setmainfont{OldStyHPLHS.otf}[
  Path = \string~/s/fonts/hplhs/,
  ItalicFont    = OldstItaHPLHS.otf,
  SmallCapsFont = OldstSCHPLHS.otf]

\nonfrenchspacing

\setlength{\topskip}{0pt}
\setlength{\lineskiplimit}{-10pt}
\setlength{\lineskip}{0pt}

\newcommand\Headline[5]{\@startsection{section}{1}{\z@}{#1\baselineskip}{#2\baselineskip}{\centering\fontsize{#3}{#4}\selectfont#5}}
\newcommand\headlineMainSuper{\Headline{-0.5}{0.5}{72}{86}{\headlineThree}}
\newcommand\headlineMain{\Headline{-0.5}{0.5}{32}{38}{\headlineOne}}
\newcommand\headlineMainSub{\Headline{-0.5}{0.5}{24}{28}{\newspaperSlab}}
\newcommand\headlineMainInner{\Headline{-0.5}{0.5}{\baselineskip}{\baselineskip}{\normalfont\itshape}}
\newcommand\headline{\Headline{-0.5}{0.5}{24}{28}{\headlineTwo}}
\newcommand\headlineSmall{\Headline{-0.5}{0.5}{\baselineskip}{\baselineskip}{\normalfont\scshape}}
\setcounter{secnumdepth}{0}

\newcommand\fullrule{\noindent\smash{\noindent\rule{\linewidth}{0.2mm}}}
\newcommand\halfrule{\noindent\smash{\noindent\centerline{\rule{0.25\linewidth}{0.2mm}}}}
\newcommand\fancyrule{\noindent\smash{\noindent\centerline{\headlineOne\Huge—}}}
