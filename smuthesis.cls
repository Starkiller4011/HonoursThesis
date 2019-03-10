%%
%% This is file `smuthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% smuthesis.dtx  (with options: `smuthesis')
%% 
%% This file was generated from the smuthesis package.
%% --------------------------------------------------------------
%% 
%% Copyright (C) 2001
%% Michael McNeil Forbes
%% mforbes@lns.mit.edu
%% 
%% This file may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.2
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%    http://www.latex-project.org/lppl.txt
%% and version 1.2 or later is part of all distributions of LaTeX
%% version 1999/12/01 or later.
%% 
%% This program consists of the files smuthesis.dtx, smuthesis.ins, and
%% the sample figures fig.eps and fig.fig.
%% 
%% This file may only be distributed together with a copy of this
%% program. You may, however, distribute this program without generated
%% files such as this one.
%% 


\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{smuthesis}[2002/02/12 v1.11
 Saint Mary's University Thesis Class]
\newcommand\@ptsize{}
\newif\if@restonecol
\newif\if@chaptertocdots \@chaptertocdotstrue
\newcount\hours
\newcount\minutes
\def\SetTime{\hours=\time
        \global\divide\hours by 60
        \minutes=\hours
        \multiply\minutes by 60
        \advance\minutes by-\time
        \global\multiply\minutes by-1 }
\def\now{\number\hours:\ifnum\minutes<10 0\fi\number\minutes}
\newcommand\@toupper[1]{\if@upper\MakeUppercase{#1}\else{#1}\fi}
\newcommand\@toctoupper[1]{\if@tocupper\MakeUppercase{#1}\else{#1}\fi}
\newlength\oldtextwidth
\newlength\oldlinewidth
\newlength\oldparindent
\newlength\oldmarginparsep
\newlength\oldmarginparwidth
\newlength\oldoddsidemargin
\newlength\oldevensidemargin
\providecommand*{\@startonecolumn}{
  \if@twocolumn
    \@restonecoltrue

    \global\setlength\oldtextwidth{\textwidth}
    \global\setlength\oldlinewidth{\linewidth}
    \setlength\@tempdima{\paperwidth}
    \addtolength\@tempdima{-2in}
    \ifcase\@ptsize\relax
      \setlength\@tempdimb{345\p@}
    \or
      \setlength\@tempdimb{360\p@}
    \or
      \setlength\@tempdimb{390\p@}
    \fi
    \ifdim\@tempdima>\@tempdimb\relax
      \global\setlength\textwidth{\@tempdimb}
    \else
      \global\setlength\textwidth{\@tempdima}
    \fi
    \global\@settopoint\textwidth
    \global\setlength\linewidth{\textwidth}
    \global\setlength\oldmarginparsep{\marginparsep}
    \global\setlength\marginparsep{7\p@}

    \global\setlength\oldparindent{\parindent}
    \ifcase\@ptsize\relax
      \global\setlength\parindent{15\p@}
    \or
      \global\setlength\parindent{17\p@}
    \or
      \global\setlength\parindent{1.5em}
    \fi
    \global\setlength\oldmarginparwidth{\marginparwidth}
    \global\setlength\oldoddsidemargin{\oddsidemargin}

    \if@twoside
      \setlength\@tempdima        {\paperwidth}
      \addtolength\@tempdima      {-\textwidth}
      \global\setlength\oddsidemargin {.4\@tempdima}
      \addtolength\oddsidemargin  {-1in}
      \global\setlength\marginparwidth   {.6\@tempdima}
      \global\addtolength\marginparwidth {-\marginparsep}
      \global\addtolength\marginparwidth {-0.4in}
    \else
      \setlength\@tempdima        {\paperwidth}
      \addtolength\@tempdima      {-\textwidth}
      \global\setlength\oddsidemargin    {.5\@tempdima}
      \global\addtolength\oddsidemargin  {-1in}
      \global\setlength\marginparwidth   {.5\@tempdima}
      \global\addtolength\marginparwidth {-\marginparsep}
      \global\addtolength\marginparwidth {-0.4in}
      \global\addtolength\marginparwidth {-.4in}
    \fi
    \ifdim \marginparwidth >2in
      \global\setlength\marginparwidth{2in}
    \fi
    \global\@settopoint\oddsidemargin
    \global\@settopoint\marginparwidth
    \global\setlength\oldevensidemargin{\evensidemargin}

    \global\setlength\evensidemargin  {\paperwidth}
    \global\addtolength\evensidemargin{-2in}
    \global\addtolength\evensidemargin{-\textwidth}
    \global\addtolength\evensidemargin{-\oddsidemargin}

    \global\@settopoint\evensidemargin
    \onecolumn
  \else
    \@restonecolfalse
  \fi
}
\providecommand*{\@endonecolumn}{
  \if@restonecol
    \global\setlength\textwidth{\oldtextwidth}
    \global\setlength\linewidth{\oldlinewidth}
    \global\setlength\parindent{\oldparindent}
    \global\setlength\marginparsep{\oldmarginparsep}
    \global\setlength\marginparwidth{\oldmarginparwidth}
    \global\setlength\oddsidemargin{\oldoddsidemargin}
    \global\setlength\evensidemargin{\oldevensidemargin}
    \twocolumn
  \fi}
\newif\if@openright
\newif\if@mainmatter \@mainmattertrue
\newif\if@subtitle \@subtitlefalse
\newcommand*{\subtitle}[1]{\@subtitletrue \gdef\@subtitle{#1}}
\newcommand*{\institution}[1]{\gdef\@institution{#1}}
\def\@institution{\@latex@warning@no@line{No \noexpand\institution\ given}}
\newcommand*{\institutionaddress}[1]{\gdef\@institutionaddress{#1}}
\def\@institutionaddress{\@latex@warning@no@line{No
    \noexpand\institutionaddress\ given}}
\newcommand*{\degreetitle}[1]{\gdef\@degreetitle{#1}}
\def\@degreetitle{\@latex@warning@no@line{No \noexpand\degreetitle\ given}}
\newcommand*{\department}[1]{\gdef\@department{#1}}
\def\@department{\@latex@warning@no@line{No \noexpand\department\ given}}
\institution{Mount Saint Vincent University}
\institutionaddress{Halifax, Canada}
\department{Co-Supervised by Dr. Tina Harriott, Mount Saint Vincent University, Department of Mathematics and Dr. Luigi Gallo, Saint Mary's University, Department of Astronomy and Physics and Mount Saint Vincent University, Adjunct Professor}
\newcommand*{\numberofsignatures}[1]{\gdef\@numberofsignatures{#1}}
\numberofsignatures{0}
\newcommand*{\copyrightyear}[1]{\gdef\@copyrightyear{#1}}
\newcommand*{\submitdate}[1]{\gdef\@submitdate{#1}}
\copyrightyear{\number\year}
\submitdate{\today}
\newcommand\@previousdegrees{}
\newcommand*\previousdegree[1]{
  \expandafter\gdef\expandafter\@previousdegrees\expandafter
  {\@previousdegrees{#1}\\}}
\newcommand\titlefont{}
\newcommand\subtitlefont{}
\newcommand\authorfont{}
\newcommand\abstractfont{}
\newcommand\partfont{}
\newcommand\partnamefont{}
\newcommand\chapterfont{}
\newcommand\chaptertitlefont{}
\newcommand\chapterauthorfont{}
\newcommand\sectionfont{}
\newcommand\subsectionfont{}
\newcommand\subsubsectionfont{}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 		aastex start of input 		%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\eps@scaling{1.0}%
\newcommand\epsscale[1]{\gdef\eps@scaling{#1}}%
\newcommand\plotone[1]{%
 \centering
 \leavevmode
 \includegraphics[width={\eps@scaling\columnwidth}]{#1}%
}%
\newcommand\plottwo[2]{%
 \centering
 \leavevmode
 \columnwidth=.45\columnwidth
 \includegraphics[width={\eps@scaling\columnwidth}]{#1}%
 \hfil
 \includegraphics[width={\eps@scaling\columnwidth}]{#2}%
}%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%              aastex end of input             %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
\newcommand\paragraphfont{}
\newcommand\subparagraphfont{}
\newcommand\translatorfont{}
\newcommand\institutionfont{}
\newcommand\theoremheaderfont{}
\newcommand\theorembodyfont{}
\newcommand\itemfont{}
\newcommand\examplefont{}
\newcommand\headingstextfont{}
\newcommand\pagenumberfont{}
\newcommand\captionheaderfont{}
\newcommand\captionbodyfont{}
\newcommand\figurefont{}
\newcommand\tablefont{}
\newcommand\indexsize{}
\newcommand\bibsize{}
\newlength{\partbetweenskip}
\newlength{\chapterbeforeskip}
\newlength{\chapterbetweenskip}
\newlength{\chapterafterskip}
\newlength{\sectionindent}
\newlength{\sectionbeforeskip}
\newlength{\sectionafterskip}
\newlength{\subsectionindent}
\newlength{\subsectionbeforeskip}
\newlength{\subsectionafterskip}
\newlength{\subsubsectionindent}
\newlength{\subsubsectionbeforeskip}
\newlength{\subsubsectionafterskip}
\newlength{\paragraphindent}
\newlength{\paragraphbeforeskip}
\newlength{\paragraphafterskip}
\newlength{\subparagraphindent}
\newlength{\subparagraphbeforeskip}
\newlength{\subparagraphafterskip}
\DeclareOption{a4paper}
   {\setlength\paperheight {297mm}%
    \setlength\paperwidth  {210mm}}
\DeclareOption{a5paper}
   {\setlength\paperheight {210mm}%
    \setlength\paperwidth  {148mm}}
\DeclareOption{b5paper}
   {\setlength\paperheight {250mm}%
    \setlength\paperwidth  {176mm}}
\DeclareOption{letterpaper}
   {\setlength\paperheight {11in}%
    \setlength\paperwidth  {8.5in}}
\DeclareOption{legalpaper}
   {\setlength\paperheight {14in}%
    \setlength\paperwidth  {8.5in}}
\DeclareOption{executivepaper}
   {\setlength\paperheight {10.5in}%
    \setlength\paperwidth  {7.25in}}
\DeclareOption{landscape}
   {\setlength\@tempdima   {\paperheight}%
    \setlength\paperheight {\paperwidth}%
    \setlength\paperwidth  {\@tempdima}}
\DeclareOption{10pt}{\renewcommand\@ptsize{0}}
\DeclareOption{11pt}{\renewcommand\@ptsize{1}}
\DeclareOption{12pt}{\renewcommand\@ptsize{2}}
\DeclareOption{oneside}{\@twosidefalse \@mparswitchfalse}
\DeclareOption{twoside}{\@twosidetrue  \@mparswitchtrue}
\newif\if@final \@finaltrue
\DeclareOption{draft}{\setlength\overfullrule{5pt}\@finalfalse \SetTime}
\DeclareOption{final}{\setlength\overfullrule{0pt}\@finaltrue}
\newif\if@committee \@committeefalse
\DeclareOption{committee}{\@committeetrue}
\DeclareOption{openright}{\@openrighttrue}
\DeclareOption{openany}{\@openrightfalse}
\DeclareOption{onecolumn}{\@twocolumnfalse}
\DeclareOption{twocolumn}{\@twocolumntrue}
\newif\if@runningheaders \@runningheaderstrue
\DeclareOption{runningheaders}{\@runningheaderstrue}
\DeclareOption{norunningheaders}{\@runningheadersfalse}
\newif\if@centerheadline \@centerheadlinetrue
\DeclareOption{centerheadline}{\@centerheadlinetrue}
\DeclareOption{nocenterheadline}{\@centerheadlinefalse}
\newif\if@headline \@headlinetrue
\DeclareOption{headline}{\@headlinetrue}
\DeclareOption{noheadline}{\@headlinefalse}
\DeclareOption{leqno}{\input{leqno.clo}}
\DeclareOption{fleqn}{\input{fleqn.clo}}
\newif\if@uppertitle \@uppertitlefalse
\DeclareOption{uppertitle}{\@uppertitletrue}
\newif\if@upperauthor \@upperauthorfalse
\DeclareOption{upperauthor}{\@upperauthortrue}
\DeclareOption{phd}{\degreetitle{DOCTOR OF PHILOSOPHY}}
\DeclareOption{msc}{\degreetitle{MASTER OF SCIENCE}}
\DeclareOption{bsc}{\degreetitle{BACHELOR OF SCIENCE}}
\newif\if@chapterheads \@chapterheadstrue
\DeclareOption{chapterheads}{\@chapterheadstrue}
\DeclareOption{nochapterheads}{\@chapterheadsfalse}
\newif\if@headcount \@headcounttrue
\newif\if@partheads \@partheadstrue
\DeclareOption{partheads}{\@partheadstrue}
\DeclareOption{nopartheads}{\@partheadsfalse}
\newif\if@headcount \@headcounttrue
\DeclareOption{headcount}{\@headcounttrue}
\DeclareOption{noheadcount}{\@headcountfalse}
\newif\if@upper \@upperfalse
\DeclareOption{upper}{\@uppertrue}
\DeclareOption{noupper}{\@upperfalse}
\newif\if@tocupper \@tocupperfalse
\DeclareOption{tocupper}{\@tocuppertrue}
\DeclareOption{notocupper}{\@tocupperfalse}
\newcommand\@headingalignment{\raggedright}
\DeclareOption{leftheads}{\renewcommand\@headingalignment{\raggedleft}}
\DeclareOption{centerheads}{\renewcommand\@headingalignment{\centering}}
\DeclareOption{rightheads}{\renewcommand\@headingalignment{\raggedright}}
\newif\if@hangingcaptions \@hangingcaptionstrue
\DeclareOption{hangingcaptions}{\@hangingcaptionstrue}
\DeclareOption{nohangingcaptions}{\@hangingcaptionsfalse}
\newif\if@appendixpart \@appendixpartfalse
\DeclareOption{appendixpart}{\@appendixparttrue}
\DeclareOption{noappendixpart}{\@appendixpartfalse}
\newif\if@appendixpage \@appendixpagetrue
\DeclareOption{appendixpage}{\@appendixpagetrue}
\DeclareOption{noappendixpage}{\@appendixpagefalse}
\DeclareOption{openbib}{%
  \AtEndOfPackage{%
   \renewcommand\@openbib@code{%
      \advance\leftmargin\bibindent
      \itemindent -\bibindent
      \listparindent \itemindent
      \parsep \z@
      }%
   \renewcommand\newblock{\par}}%
}
\newif\if@crosshair \@crosshairtrue
\DeclareOption{crosshair}{\@crosshairfalse}
\DeclareOption{crosshair}{\@crosshairtrue}
\DeclareOption{defaultfonts}{
    \renewcommand\titlefont{\Large}
    \renewcommand\abstractfont{\large\slshape}
    \renewcommand\subtitlefont{\large}
    \renewcommand\authorfont{}
    \renewcommand\partfont{\huge \bfseries}
    \renewcommand\partnamefont{\Huge \bfseries}
    \renewcommand\chapterfont{\huge\bfseries}
    \renewcommand\chaptertitlefont{\Huge\bfseries}
    \renewcommand\chapterauthorfont{\large}
    \renewcommand\sectionfont{\Large\bfseries}
    \renewcommand\subsectionfont{\large\bfseries}
    \renewcommand\subsubsectionfont{\normalsize\bfseries}
    \renewcommand\paragraphfont{\normalsize\bfseries}
    \renewcommand\subparagraphfont{\normalsize\bfseries}
    \renewcommand\institutionfont{\slshape}
    \renewcommand\translatorfont{}
    \renewcommand\theoremheaderfont{\upshape}
    \renewcommand\theorembodyfont{}
    \renewcommand\itemfont{\slshape}
    \renewcommand\examplefont{}
    \renewcommand\headingstextfont{\slshape}
    \renewcommand\pagenumberfont{}
    \renewcommand\captionheaderfont{}
    \renewcommand\captionbodyfont{}
    \renewcommand\figurefont{}
    \renewcommand\tablefont{}
    \setlength{\partbetweenskip}{20pt}
    \setlength{\chapterbeforeskip}{30pt}
    \setlength{\chapterbetweenskip}{20pt}
    \setlength{\chapterafterskip}{30pt}
    \renewcommand\sectionindent{\z@}
    \renewcommand\sectionbeforeskip{-3.5ex \@plus -1ex \@minus -.2ex}
    \renewcommand\sectionafterskip{2.3ex \@plus.2ex}
    \renewcommand\subsectionindent{\z@}
    \renewcommand\subsectionbeforeskip{-3.25ex \@plus -1ex \@minus -.2ex}
    \renewcommand\subsectionafterskip{1.5ex \@plus.2ex}
    \renewcommand\subsubsectionindent{\z@}
    \renewcommand\subsubsectionbeforeskip{-3.25ex\@plus -1ex \@minus -.2ex}
    \renewcommand\subsubsectionafterskip{1.5ex \@plus .2ex}
    \renewcommand\paragraphindent{\z@}
    \renewcommand\paragraphbeforeskip{3.25ex \@plus1ex \@minus.2ex}
    \renewcommand\paragraphafterskip{-1em}
    \renewcommand\subparagraphindent{\parindent}
    \renewcommand\subparagraphbeforeskip{3.25ex \@plus1ex \@minus .2ex}
    \renewcommand\subparagraphafterskip{-1em}
}
\DeclareOption{slanted}{
    \renewcommand\titlefont{\LARGE}
    \renewcommand\abstractfont{\large\slshape}
    \renewcommand\subtitlefont{\large}
    \renewcommand\authorfont{}
    \renewcommand\partfont{\Large}
    \renewcommand\chapterfont{\large}
    \renewcommand\chaptertitlefont{\large}
    \renewcommand\chapterauthorfont{\large}
    \renewcommand\sectionfont{\large\slshape}
    \renewcommand\subsectionfont{\slshape}
    \renewcommand\subsubsectionfont{\slshape}
    \renewcommand\paragraphfont{\slshape}
    \renewcommand\subparagraphfont{\slshape}
    \renewcommand\institutionfont{\slshape}
    \renewcommand\translatorfont{}
    \renewcommand\theoremheaderfont{\upshape}
    \renewcommand\theorembodyfont{}
    \renewcommand\itemfont{\slshape}
    \renewcommand\examplefont{}
    \renewcommand\headingstextfont{\small\slshape}
    \renewcommand\pagenumberfont{\small}
    \renewcommand\captionheaderfont{\slshape\small}
    \renewcommand\captionbodyfont{\small}
    \renewcommand\figurefont{}
    \renewcommand\tablefont{}
    \setlength{\partbetweenskip}{20pt}
    \setlength{\chapterbeforeskip}{30pt}
    \setlength{\chapterbetweenskip}{20pt}
    \setlength{\chapterafterskip}{30pt}
    \renewcommand\sectionindent{\z@}
    \renewcommand\sectionbeforeskip{-3.5ex \@plus -1ex \@minus -.2ex}
    \renewcommand\sectionafterskip{2.3ex \@plus.2ex}
    \renewcommand\subsectionindent{\z@}
    \renewcommand\subsectionbeforeskip{-3.25ex \@plus -1ex \@minus -.2ex}
    \renewcommand\subsectionafterskip{1.5ex \@plus.2ex}
    \renewcommand\subsubsectionindent{\z@}
    \renewcommand\subsubsectionbeforeskip{-3.25ex\@plus -1ex \@minus -.2ex}
    \renewcommand\subsubsectionafterskip{1.5ex \@plus .2ex}
    \renewcommand\paragraphindent{\z@}
    \renewcommand\paragraphbeforeskip{3.25ex \@plus1ex \@minus.2ex}
    \renewcommand\paragraphafterskip{-1em}
    \renewcommand\subparagraphindent{\parindent}
    \renewcommand\subparagraphbeforeskip{3.25ex \@plus1ex \@minus .2ex}
    \renewcommand\subparagraphafterskip{-1em}
}
\DeclareOption{bold}{%
    \renewcommand\titlefont{\LARGE\bfseries}
    \renewcommand\abstractfont{\Large\bfseries}
    \renewcommand\subtitlefont{\large}
    \renewcommand\authorfont{}
    \renewcommand\partfont{\LARGE\bfseries}
    \renewcommand\chapterfont{\LARGE\bfseries}
    \renewcommand\chaptertitlefont{\LARGE\bfseries}
    \renewcommand\chapterauthorfont{\large}
    \renewcommand\sectionfont{\Large\bfseries}
    \renewcommand\subsectionfont{\large\bfseries}
    \renewcommand\subsubsectionfont{\bfseries}
    \renewcommand\paragraphfont{\bfseries}
    \renewcommand\subparagraphfont{\bfseries}
    \renewcommand\translatorfont{}
    \renewcommand\institutionfont{\slshape}
    \renewcommand\theoremheaderfont{\bfseries}
    \renewcommand\theorembodyfont{\itshape}
    \renewcommand\itemfont{\bfseries}
    \renewcommand\examplefont{}
    \renewcommand\headingstextfont{\small\bfseries}
    \renewcommand\pagenumberfont{\small}
    \renewcommand\captionheaderfont{\bfseries}
    \renewcommand\captionbodyfont{}
    \renewcommand\figurefont{}
    \renewcommand\tablefont{}
    \setlength{\partbetweenskip}{20pt}
    \setlength{\chapterbeforeskip}{30pt}
    \setlength{\chapterbetweenskip}{20pt}
    \setlength{\chapterafterskip}{30pt}
    \renewcommand\sectionindent{\z@}
    \renewcommand\sectionbeforeskip{-3.5ex \@plus -1ex \@minus -.2ex}
    \renewcommand\sectionafterskip{2.3ex \@plus.2ex}
    \renewcommand\subsectionindent{\z@}
    \renewcommand\subsectionbeforeskip{-3.25ex \@plus -1ex \@minus -.2ex}
    \renewcommand\subsectionafterskip{1.5ex \@plus.2ex}
    \renewcommand\subsubsectionindent{\z@}
    \renewcommand\subsubsectionbeforeskip{-3.25ex\@plus -1ex \@minus -.2ex}
    \renewcommand\subsubsectionafterskip{1.5ex \@plus .2ex}
    \renewcommand\paragraphindent{\z@}
    \renewcommand\paragraphbeforeskip{3.25ex \@plus1ex \@minus.2ex}
    \renewcommand\paragraphafterskip{-1em}
    \renewcommand\subparagraphindent{\parindent}
    \renewcommand\subparagraphbeforeskip{3.25ex \@plus1ex \@minus .2ex}
    \renewcommand\subparagraphafterskip{-1em}
}
\DeclareOption{sfbold}{%
    \renewcommand\titlefont{\LARGE\sffamily\bfseries}
    \renewcommand\abstractfont{\large\sffamily\bfseries}
    \renewcommand\subtitlefont{\large\sffamily}
    \renewcommand\authorfont{\Large\sffamily\slshape}
    \renewcommand\partfont{\LARGE\sffamily\bfseries}
    \renewcommand\chapterfont{\LARGE\sffamily\bfseries}
    \renewcommand\chaptertitlefont{\LARGE\sffamily\bfseries}
    \renewcommand\chapterauthorfont{\Large\sffamily\bfseries}
    \renewcommand\sectionfont{\large\sffamily\bfseries}
    \renewcommand\subsectionfont{\large\sffamily\bfseries}
    \renewcommand\subsubsectionfont{\sffamily\bfseries}
    \renewcommand\paragraphfont{\sffamily\bfseries}
    \renewcommand\subparagraphfont{\sffamily}
    \renewcommand\translatorfont{}
    \renewcommand\institutionfont{\sffamily}
    \renewcommand\theoremheaderfont{\sffamily}
    \renewcommand\theorembodyfont{}
    \renewcommand\itemfont{\sffamily}
    \renewcommand\examplefont{}
    \renewcommand\headingstextfont{\small\sffamily}
    \renewcommand\pagenumberfont{\small\rmfamily}
    \renewcommand\captionheaderfont{\sffamily}
    \renewcommand\captionbodyfont{}
    \renewcommand\figurefont{}
    \renewcommand\tablefont{}
    \setlength{\partbetweenskip}{20pt}
    \setlength{\chapterbeforeskip}{30pt}
    \setlength{\chapterbetweenskip}{20pt}
    \setlength{\chapterafterskip}{30pt}
    \renewcommand\sectionindent{\z@}
    \renewcommand\sectionbeforeskip{-3.5ex \@plus -1ex \@minus -.2ex}
    \renewcommand\sectionafterskip{2.3ex \@plus.2ex}
    \renewcommand\subsectionindent{\z@}
    \renewcommand\subsectionbeforeskip{-3.25ex \@plus -1ex \@minus -.2ex}
    \renewcommand\subsectionafterskip{1.5ex \@plus.2ex}
    \renewcommand\subsubsectionindent{\z@}
    \renewcommand\subsubsectionbeforeskip{-3.25ex\@plus -1ex \@minus -.2ex}
    \renewcommand\subsubsectionafterskip{1.5ex \@plus .2ex}
    \renewcommand\paragraphindent{\z@}
    \renewcommand\paragraphbeforeskip{3.25ex \@plus1ex \@minus.2ex}
    \renewcommand\paragraphafterskip{-1em}
    \renewcommand\subparagraphindent{\parindent}
    \renewcommand\subparagraphbeforeskip{3.25ex \@plus1ex \@minus .2ex}
    \renewcommand\subparagraphafterskip{-1em}
}
\ExecuteOptions{%
  letterpaper,%
  10pt,%
  twoside,%
  onecolumn,%
  final,%
  openright,%
  noupper,%
  defaultfonts}
\ProcessOptions
\input{bk1\@ptsize.clo}
\setlength\lineskip{1\p@}
\setlength\normallineskip{1\p@}
\renewcommand\baselinestretch{}
\setlength\parskip{0\p@ \@plus \p@}
\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301
\setcounter{topnumber}{2}
\renewcommand\topfraction{.7}
\setcounter{bottomnumber}{1}
\renewcommand\bottomfraction{.3}
\setcounter{totalnumber}{3}
\renewcommand\textfraction{.2}
\renewcommand\floatpagefraction{.5}
\setcounter{dbltopnumber}{2}
\renewcommand\dbltopfraction{.7}
\renewcommand\dblfloatpagefraction{.5}
\newlength{\headlinespace}
\setlength{\headlinespace}{5pt}
\newcommand{\e@skip}{{\headingstextfont \phantom{y}}}
\if@twoside
  \def\ps@plain{%
    \let\@oddfoot\@empty\let\@evenfoot\@empty
    \def\@evenhead{
      \parbox{0.99\textwidth}{%
        \makebox[0.99\textwidth]{{\pagenumberfont\thepage}\hfill}
        \if@headline\vspace{\headlinespace}\fi}%
    }%
    \def\@oddhead{
      \parbox{0.99\textwidth}{%
        \makebox[0.99\textwidth]{\hfill{\pagenumberfont\thepage}}
        \if@headline
          \vspace{\headlinespace}%
        \fi}%
      }%
  }%
\else
  \def\ps@plain{%
    \let\@oddfoot\@empty
    \def\@oddhead{
      \parbox{0.99\textwidth}{%
        \makebox[0.99\textwidth]{\hfill{\pagenumberfont\thepage}}%
        \if@headline
          \vspace{\headlinespace}%
        \fi}%
    }%
  }%
\fi
\if@twoside
  \def\ps@headings{%
      \let\@oddfoot\@empty\let\@evenfoot\@empty
      \def\@evenhead{
        \parbox{0.99\textwidth}{%
          \makebox[0.99\textwidth]{%
            {\pagenumberfont\thepage}\hfill{\headingstextfont\leftmark}%
            \e@skip%
            \if@centerheadline\hfill\fi
          }%
        \if@headline
          \vspace{\headlinespace}%
          \hrule%
        \fi}%
      }%
      \def\@oddhead{
        \parbox{0.99\textwidth}{%
          \makebox[0.99\textwidth]{%
            \if@centerheadline\hfill\fi%
            {\headingstextfont\rightmark}\e@skip\hfill{\pagenumberfont\thepage}%
          }%
        \if@headline
          \vspace{\headlinespace}%
          \hrule%
        \fi}%
      }%
      \let\@mkboth\markboth
    \def\chaptermark##1{%
      \markboth {
        \ifnum \c@secnumdepth >\m@ne
          \if@mainmatter
            \@toupper{\@chapapp}\
            \if@headcount
               \thechapter. \ %
            \fi
          \fi
        \fi
        \@toupper{##1}}{}}%
    \def\sectionmark##1{%
      \markright {
        \ifnum \c@secnumdepth >\z@
          \if@headcount
            \thesection. \ %
          \fi
        \fi
        \@toupper{##1}}}}
\else
  \def\ps@headings{%
    \let\@oddfoot\@empty
    \def\@oddhead{
      \parbox{0.99\textwidth}{%
        \makebox[0.99\textwidth]{%
          \if@centerheadline\hfill\fi%
          {\headingstextfont\rightmark}\e@skip\hfill{\pagenumberfont\thepage}%
        }%
      \if@headline%
        \vspace{\headlinespace}%
        \hrule}%
      \fi%
      }%
    \let\@mkboth\markboth
    \def\chaptermark##1{%
      \markright {
        \ifnum \c@secnumdepth >\m@ne
          \if@mainmatter
            \@toupper{\@chapapp\ }
            \if@headcount
              \thechapter. \ %
            \fi
          \fi
        \fi
        \@toupper{##1}}}}
\fi
\def\ps@draft{%
  \let\@oddfoot\@empty\let\@evenfoot\@empty
  \def\@oddhead{
    \parbox{0.99\textwidth}{%
      \makebox[0.99\textwidth]{%
        {\pagenumberfont\today\ \now\ ---%
          {\headingstextfont\draftname: ``\jobname''}%
          \hfil\e@skip%
          \thepage}%
      }%
      \if@headline
        \vspace{\headlinespace}%
        \hrule%
      \fi
    }%
  }%
  \def\@evenhead{
    \parbox{0.99\textwidth}{%
      \makebox[0.99\textwidth]{%
        {\pagenumberfont\thepage%
          \e@skip\hfil%
          {\headingstextfont\draftname: ``\jobname''}%
          --- \today\ \now}%
      }%
      \if@headline
        \vspace{\headlinespace}%
        \hrule%
      \fi
    }%
  }%
  \let\@mkboth\@gobbletwo
  \let\chaptermark\@gobble
  \let\sectionmark\@gobble
}
\if@crosshair
  \def\clap#1{\hbox to 0pt{\hss#1\hss}} \newdimen\@crosshairrule
  \@crosshairrule=.24pt \def\@crosshairs{\vbox to
    0pt{\hsize=0pt\baselineskip=0pt\lineskip=0pt \vss \clap{\vrule
        height .125in width \@crosshairrule depth 0pt} \clap{\vrule
        width .25in height \@crosshairrule depth 0pt} \clap{\vrule
        height .125in width \@crosshairrule depth 0pt} \vss}}
  \def\ps@clear{%
    \let\@oddfoot\@empty\let\@evenfoot\@empty
    \def\@oddhead{\hfil\raise\headheight\@crosshairs}
    \let\@evenhead\@oddhead}
\fi
\def\ps@myheadings{%
  \let\@oddfoot\@empty\let\@evenfoot\@empty
  \def\@evenhead{
    \parbox{0.99\textwidth}{%
      \makebox[0.99\textwidth]{%
        {\pagenumberfont\thepage}\hfil{\headingstextfont\leftmark}%
        \e@skip%
        \if@centerheadline\hfil\fi
      }%
    \if@headline
      \vspace{\headlinespace}%
      \hrule%
    \fi}%
  }%
  \def\@oddhead{
    \parbox{0.99\textwidth}{%
      \makebox[0.99\textwidth]{%
        \if@centerheadline\hfil\fi%
        {\headingstextfont\rightmark}\e@skip\hfil{\pagenumberfont\thepage}%
      }%
      \if@headline
        \vspace{\headlinespace}%
        \hrule%
      \fi}%
    }%
  \let\@mkboth\@gobbletwo
  \let\chaptermark\@gobble
  \let\sectionmark\@gobble
  }
\newcommand*{\signatures}[1]{
  \count0=0
  \loop\ifnum\count0<#1 \advance\count0 by 1
  { \begin{minipage}{4in}
      \par
      \vspace{.25in}
      \hbox to 4in{\dotfill}
    \end{minipage}}
  \endgraf\repeat
  }
\newcommand\maketitle{
  \thispagestyle{empty}
  \setcounter{page}\@ne
  \@startonecolumn
  \setlength\@tempdima{\paperheight}
  \addtolength\@tempdima{-2in}
  \addtolength\@tempdima{-\textheight}
  \enlargethispage*{\@tempdima}
    \edef\@tempbaselinestretch{\baselinestretch}
    \renewcommand{\baselinestretch}{1}
    \normalfont
  \null\vfil
  \begin{center}%
    {\titlefont
      \if@uppertitle\MakeUppercase\fi{\@title}
      \par}%
    \vspace{1em}%
    \if@subtitle
      {\subtitlefont
        \if@uppertitle\MakeUppercase\fi{\@subtitle}
        \par}%
      \vspace{1em}%
    \fi
    by \par%
    \vspace{1em}%
    {\authorfont
      \lineskip .75em%
      \begin{tabular}[t]{c}%
        \if@upperauthor\MakeUppercase\fi{\@author}
      \end{tabular}\par}%
    \vspace{1em}
    \vfil
    \begin{tabular}[t]{c}
      \@previousdegrees\relax
    \end{tabular}\par%
      \vfil
    A THESIS SUBMITTED IN PARTIAL FULFILMENT OF\par%
    THE REQUIREMENTS FOR THE DEGREE OF\par%
    \vspace{1em}
    \MakeUppercase{\@degreetitle}\par%
    \vspace{1em}
    in \par%
    \vspace{1em}
    Honours Mathematics\par%
    \vspace{1em}
    (\@department)\par%
    \vspace{1em}
    \vspace{3ex}
%    We accept this thesis as conforming \par%
%    to the required standard \par%
%    \vspace{5ex}
    \signatures{\@numberofsignatures}
    \vspace{5ex}
    \MakeUppercase{\@institution} \par%
    \vspace{1em}
    \@submitdate \par%
    \vspace{1em}
    \copyright\ \@author, \@copyrightyear
  \end{center}
  \vfil\null
  \clearpage
  \@endonecolumn
  \edef\baselinestretch{\@tempbaselinestretch}
  \global\let\thanks\relax
  \selectfont
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
}
\newcommand{\ubcauthorizationform}{
  \thispagestyle{clear}
  \cleardoublepage
  \thispagestyle{empty}

  \@startonecolumn
  \edef\@tempbaselinestretch{\baselinestretch}
  \renewcommand{\baselinestretch}{1}
  \selectfont
  In presenting this thesis in partial fulfilment of the requirements
  for an advanced degree at  Mount Saint Vincent University, I
  agree that the Library shall make it freely available for reference
  and study. I further agree that permission for extensive copying of
  this thesis for scholarly purposes may be granted by the head of my
  department or by his or her representatives. It is understood that
  copying or publication of this thesis for financial gain shall not
  be allowed without my written permission.

  \vfil
  \begin{flushright}
    (Signature) \rule{2in}{0.5pt}
  \end{flushright}
  \vfil

  \noindent
  \@department

  \vspace{2em}
  \noindent
  \@institution\par
  \@institutionaddress

  \vspace{2em}
  \noindent
  Date \rule{2in}{0.5pt}

  % The authorization form should not count as a page, but this will
  % be taken care of in the abstract.

  \clearpage
  \@endonecolumn
  \edef\baselinestretch{\@tempbaselinestretch}
  \global\let\thanks\relax
  \selectfont
}

\newcommand{\authorizationform}{\ubcauthorizationform}
\newcommand{\preface}{\chaptertoc{\prefacename}{\prefacename}}
\newcommand{\foreword}{\chaptertoc{\forewordname}{\forewordname}}
\newcommand*{\acknowledgements}{\chaptertoc{\acknowledgementsname}{\acknowledgementsname}}
\newcommand*\chaptermark[1]{}
\setcounter{secnumdepth}{2}
\newcounter {part}
\newcounter {chapter}
\newcounter {section}[chapter]
\newcounter {subsection}[section]
\newcounter {subsubsection}[subsection]
\newcounter {paragraph}[subsubsection]
\newcounter {subparagraph}[paragraph]
\renewcommand\thepart {\@Roman\c@part}
\renewcommand\thechapter {\@arabic\c@chapter}
\renewcommand\thesection {\thechapter.\@arabic\c@section}
\renewcommand\thesubsection   {\thesection.\@arabic\c@subsection}
\renewcommand\thesubsubsection{\thesubsection .\@arabic\c@subsubsection}
\renewcommand\theparagraph    {\thesubsubsection.\@arabic\c@paragraph}
\renewcommand\thesubparagraph {\theparagraph.\@arabic\c@subparagraph}
\newcommand\@chapapp{\chaptername}
\newcommand\frontmatter{%
    \cleardoublepage
  \@mainmatterfalse
  \pagenumbering{roman}}
\newcommand\mainmatter{%
    \cleardoublepage
  \@mainmattertrue
  \pagenumbering{arabic}}
\newcommand\backmatter{%
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \@mainmatterfalse}
\newcommand\part{%
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \thispagestyle{plain}%
  \if@twocolumn
    \onecolumn
    \@tempswatrue
  \else
    \@tempswafalse
  \fi
  \null\vfil
  \secdef\@part\@spart
}
\def\@part[#1]#2{%
  \ifnum \c@secnumdepth >-2\relax
    \refstepcounter{part}%
    \addcontentsline{toc}{part}{\thepart\hspace{1em}\@toctoupper{#1}}%
  \else
    \addcontentsline{toc}{part}{\@toctoupper{#1}}%
  \fi
  \@mkboth{}{}%
  {\centering
    \interlinepenalty \@M
    \normalfont
    \if@partheads
      \ifnum \c@secnumdepth >-2\relax
        {\partnamefont\@toupper{\partname}\nobreakspace\thepart\par}
        \vspace{\partbetweenskip}
      \fi
    \fi
    {\partnamefont #2\par}%
  }%
  \@endpart
}
\def\@spart#1{%
  {\centering
    \interlinepenalty \@M
    \normalfont
    {\partnamefont #1\par}%
  }%
  \@endpart
}
\def\@endpart{\vfil\newpage
  \if@twoside
    \if@openright
      \null
      \thispagestyle{clear}%
      \newpage
    \fi
  \fi
  \if@tempswa
    \twocolumn
  \fi}
\newcommand\chapter{\if@openright\cleardoublepage\else\clearpage\fi
                    \global\@topnum\z@
                    \@afterindentfalse
                    \secdef\@chapter\@schapter}
\def\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
                       \if@mainmatter
                         \refstepcounter{chapter}%
                         \typeout{\@chapapp\space\thechapter.}%
                         \addcontentsline{toc}{chapter}%
                                   {\protect\numberline{\thechapter}\@toctoupper{#1}}%
                       \else
                         \addcontentsline{toc}{chapter}{\@toctoupper{#1}}%
                       \fi
                    \else
                      \addcontentsline{toc}{chapter}{\@toctoupper{#1}}%
                    \fi
                    \chaptermark{#1}%
                    \addtocontents{lof}{\protect\addvspace{10\p@}}%
                    \addtocontents{lot}{\protect\addvspace{10\p@}}%
                    \if@twocolumn
                      \@topnewpage[\@makechapterhead{#2}]%
                    \else
                      \@makechapterhead{#2}%
                      \@afterheading
                    \fi}
\def\@makechapterhead#1{%
  \setlength{\@tempdima}{\chapterbeforeskip}
  \if@chapterheads
    \if@mainmatter
      \settoheight{\@tempdimb}{\chapterfont
        \@toupper{\@chapapp}
        \space
        \thechapter}
      \addtolength{\@tempdima}{-\@tempdimb}
      \addtolength{\@tempdima}{-\chapterbetweenskip}
    \fi
  \fi
  \vspace*{\@tempdima}%
  {\parindent \z@
    \@headingalignment \normalfont
    \interlinepenalty\@M
    \ifnum \c@secnumdepth >\m@ne
      \if@chapterheads
        \if@mainmatter
          {\chapterfont%
            \@toupper{\@chapapp}%
            \if@headcount\space\thechapter\fi
          }%
          \par\nobreak
          \vspace{\chapterbetweenskip}
        \fi
      \fi
    \fi
    \interlinepenalty\@M
    {\chaptertitlefont %
      \if@chapterheads\else
        \if@headcount
          \thechapter.\space%
        \fi
      \fi
      \@toupper{#1}}%
    \par\nobreak
    \vspace*{\chapterafterskip}%
  }
}
\def\@schapter#1{\if@twocolumn
                   \@topnewpage[\@makeschapterhead{#1}]%
                 \else
                   \@makeschapterhead{#1}%
                   \@afterheading
                 \fi}
\def\@makeschapterhead#1{%
  \vspace*{\chapterbeforeskip}%
  {\parindent \z@
    \@headingalignment
    \normalfont
    \interlinepenalty\@M
    {\chaptertitlefont \@toupper{#1}}
    \par\nobreak
    \vspace*{\chapterafterskip}%
  }
}
\newcommand*{\section}{\@ifstar\@sectionstar\@section}%
\newcommand\@section[2][]{%
  \@startsection {section}{1}{\sectionindent}%
                 {\sectionbeforeskip}%
                 {\sectionafterskip}%
                 {\@headingalignment\normalfont\sectionfont}%
                 [\@toctoupper{\ifx\empty#1\empty%
                   #2%
                 \else%
                   #1%
                 \fi}]{#2}}
\newcommand\@sectionstar[2][]{%
  \@startsection{section}{1}{\sectionindent}%
                {\sectionbeforeskip}%
                {\sectionafterskip}%
                {\@headingalignment\normalfont\sectionfont}*{#2}}
\newcommand*{\subsection}{\@ifstar\@subsectionstar\@subsection}%
\newcommand\@subsection[2][]{%
  \@startsection {subsection}{2}{\subsectionindent}%
                 {\subsectionbeforeskip}%
                 {\subsectionafterskip}%
                 {\@headingalignment\normalfont\subsectionfont}%
                 [\@toctoupper{\ifx\empty#1\empty%
                   #2%
                 \else%
                   #1%
                 \fi}]{#2}}
\newcommand\@subsectionstar[2][]{%
  \@startsection{subsection}{2}{\subsectionindent}%
                {\subsectionbeforeskip}%
                {\subsectionafterskip}%
                {\@headingalignment\normalfont\subsectionfont}*{#2}}
\newcommand*{\subsubsection}{\@ifstar\@subsubsectionstar\@subsubsection}%
\newcommand\@subsubsection[2][]{%
  \@startsection {subsubsection}{3}{\subsubsectionindent}%
                 {\subsubsectionbeforeskip}%
                 {\subsubsectionafterskip}%
                 {\@headingalignment\normalfont\subsubsectionfont}%
                 [\@toctoupper{\ifx\empty#1\empty%
                   #2%
                 \else%
                   #1%
                 \fi}]{#2}}
\newcommand\@subsubsectionstar[2][]{%
  \@startsection{subsubsection}{3}{\subsubsectionindent}%
                {\subsubsectionbeforeskip}%
                {\subsubsectionafterskip}%
                {\@headingalignment\normalfont\subsubsectionfont}*{#2}}
\newcommand*{\paragraph}{\@ifstar\@paragraphstar\@paragraph}%
\newcommand\@paragraph[2][]{%
  \@startsection {paragraph}{4}{\paragraphindent}%
                 {\paragraphbeforeskip}%
                 {\paragraphafterskip}%
                 {\@headingalignment\normalfont\paragraphfont}%
                 [\@toctoupper{\ifx\empty#1\empty%
                   #2%
                 \else%
                   #1%
                 \fi}]{#2}}
\newcommand\@paragraphstar[2][]{%
  \@startsection{paragraph}{4}{\paragraphindent}%
                {\paragraphbeforeskip}%
                {\paragraphafterskip}%
                {\@headingalignment\normalfont\paragraphfont}*{#2}}
\newcommand*{\subparagraph}{\@ifstar\@subparagraphstar\@subparagraph}%
\newcommand\@subparagraph[2][]{%
  \@startsection {subparagraph}{5}{\subparagraphindent}%
                 {\subparagraphbeforeskip}%
                 {\subparagraphafterskip}%
                 {\@headingalignment\normalfont\subparagraphfont}%
                 [\@toctoupper{\ifx\empty#1\empty%
                   #2%
                 \else%
                   #1%
                 \fi}]{#2}}
\newcommand\@subparagraphstar[2][]{%
  \@startsection{subparagraph}{5}{\subparagraphindent}%
                {\subparagraphbeforeskip}%
                {\subparagraphafterskip}%
                {\@headingalignment\normalfont\subparagraphfont}*{#2}}
\newcommand*{\parttoc}[2]{
  \def\@tempname{\@toupper{#1}}
  \part*{\@tempname}
  \@mkboth{\@tempname}{\@tempname}
  \addcontentsline{toc}{part}{\@toctoupper{#2}}
  }
\newcommand*{\chaptertoc}[2]{
  \def\@tempname{\@toupper{#1}}
  \chapter*{\@tempname}
  \@mkboth{\@tempname}{\@tempname}
  \addcontentsline{toc}{chapter}{\@toctoupper{#2}}
  }
\newcommand*{\sectiontoc}[2]{
  \def\@tempname{\@toupper{#1}}
  \section*{\@tempname}
  \@mkboth{\@tempname}{\@tempname}
  \addcontentsline{toc}{section}{\@toctoupper{#2}}
  }
\newcommand*{\subsectiontoc}[2]{
  \def\@tempname{\@toupper{#1}}
  \subsection*{\@tempname}
  \@mkboth{\@tempname}{\@tempname}
  \addcontentsline{toc}{subsection}{\@toctoupper{#2}}
  }
\newcommand*{\subsubsectiontoc}[2]{
  \def\@tempname{\@toupper{#1}}
  \subsubsection*{\@tempname}
  \@mkboth{\@tempname}{\@tempname}
  \addcontentsline{toc}{subsubsection}{\@toctoupper{#2}}
  }
\newcommand*{\paragraphtoc}[2]{
  \def\@tempname{\@toupper{#1}}
  \paragraph*{\@tempname}
  \@mkboth{\@tempname}{\@tempname}
  \addcontentsline{toc}{paragraph}{\@toctoupper{#2}}
  }
\newcommand*{\subparagraphtoc}[2]{
  \def\@tempname{\@toupper{#1}}
  \subparagraph*{\@tempname}
  \@mkboth{\@tempname}{\@tempname}
  \addcontentsline{toc}{subparagraph}{\@toctoupper{#2}}
  }
\if@twocolumn
  \setlength\leftmargini  {2em}
\else
  \setlength\leftmargini  {2.5em}
\fi
\leftmargin  \leftmargini
\setlength\leftmarginii  {2.2em}
\setlength\leftmarginiii {1.87em}
\setlength\leftmarginiv  {1.7em}
\if@twocolumn
  \setlength\leftmarginv  {.5em}
  \setlength\leftmarginvi {.5em}
\else
  \setlength\leftmarginv  {1em}
  \setlength\leftmarginvi {1em}
\fi
\setlength  \labelsep  {.5em}
\setlength  \labelwidth{\leftmargini}
\addtolength\labelwidth{-\labelsep}
\@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty
\@itempenalty     -\@lowpenalty
\renewcommand\theenumi{\@arabic\c@enumi}
\renewcommand\theenumii{\@alph\c@enumii}
\renewcommand\theenumiii{\@roman\c@enumiii}
\renewcommand\theenumiv{\@Alph\c@enumiv}
\newcommand\labelenumi{\theenumi.}
\newcommand\labelenumii{(\theenumii)}
\newcommand\labelenumiii{\theenumiii.}
\newcommand\labelenumiv{\theenumiv.}
\renewcommand\p@enumii{\theenumi}
\renewcommand\p@enumiii{\theenumi(\theenumii)}
\renewcommand\p@enumiv{\p@enumiii\theenumiii}
\newcommand\labelitemi{\textbullet}
\newcommand\labelitemii{\normalfont\bfseries \textendash}
\newcommand\labelitemiii{\textasteriskcentered}
\newcommand\labelitemiv{\textperiodcentered}
\newenvironment{description}
{\list{}{\labelwidth\z@ \itemindent-\leftmargin
    \let\makelabel\descriptionlabel}}
{\endlist}
\newcommand*\descriptionlabel[1]{\hspace\labelsep
  \normalfont\bfseries #1}
\newenvironment{abstract}{%
  \if@twoside\else
    \setcounter{page}{2}
  \fi
  \if@twocolumn\@startonecolumn\fi
    \chaptertoc{\abstractname}{\abstractname}
}
{\clearpage\@endonecolumn}
\newenvironment{verse}
               {\let\\\@centercr
                \list{}{\itemsep      \z@
                        \itemindent   -1.5em%
                        \listparindent\itemindent
                        \rightmargin  \leftmargin
                        \advance\leftmargin 1.5em}%
                \item\relax}
               {\endlist}
\newenvironment{quotation}
               {\list{}{\listparindent 1.5em%
                        \itemindent    \listparindent
                        \rightmargin   \leftmargin
                        \parsep        \z@ \@plus\p@}%
                \item\relax}
               {\endlist}
\newenvironment{quote}
               {\list{}{\rightmargin\leftmargin}%
                \item\relax}
               {\endlist}
\newcommand\appendix{\par
  \setcounter{chapter}{0}%
  \setcounter{section}{0}%
  \gdef\@chapapp{\appendixname}%
  \gdef\thechapter{\@Alph\c@chapter}}
\setlength\arraycolsep{5\p@}
\setlength\tabcolsep{6\p@}
\setlength\arrayrulewidth{.4\p@}
\setlength\doublerulesep{2\p@}
\setlength\tabbingsep{\labelsep}
\skip\@mpfootins = \skip\footins
\setlength\fboxsep{3\p@}
\setlength\fboxrule{.4\p@}
\@addtoreset {equation}{chapter}
\renewcommand\theequation
  {\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@equation}
\newcounter{figure}[chapter]
\renewcommand \thefigure
     {\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@figure}
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{\figurename\nobreakspace\thefigure}
\newenvironment{figure}
               {\@float{figure}}
               {\end@float}
\newenvironment{figure*}
               {\@dblfloat{figure}}
               {\end@dblfloat}
\newcounter{table}[chapter]
\renewcommand \thetable
     {\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@table}
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{\tablename\nobreakspace\thetable}
\newenvironment{table}
               {\@float{table}}
               {\end@float}
\newenvironment{table*}
               {\@dblfloat{table}}
               {\end@dblfloat}
\newlength\abovecaptionskip
\newlength\belowcaptionskip
\setlength\abovecaptionskip{10\p@}
\setlength\belowcaptionskip{0\p@}
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{{\captionheaderfont #1:} {\captionbodyfont #2}}%
  \ifdim \wd\@tempboxa >\hsize
  \if@hangingcaptions
    \@hangfrom{\captionheaderfont #1: }{\captionbodyfont #2\par}%
  \else
    #1: #2\par%
  \fi
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}
\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\DeclareRobustCommand*\cal{\@fontswitch\relax\mathcal}
\DeclareRobustCommand*\mit{\@fontswitch\relax\mathnormal}
\newcommand\@pnumwidth{1.55em}
\newcommand\@tocrmarg{2.55em}
\newcommand\@dotsep{4.5}
\setcounter{tocdepth}{2}
\newcommand\tableofcontents{%
  \cleardoublepage
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chaptertoc{\contentsname}{\contentsname}
    \@starttoc{toc}%
    \if@restonecol\twocolumn\fi
    }
\newcommand*\l@part[2]{%
  \ifnum \c@tocdepth >-2\relax
    \addpenalty{-\@highpenalty}%
    \addvspace{2.25em \@plus\p@}%
    \setlength\@tempdima{3em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      {\leavevmode
       \large \bfseries #1\hfil \hb@xt@\@pnumwidth{\hss #2}}\par
       \nobreak
         \global\@nobreaktrue
         \everypar{\global\@nobreakfalse\everypar{}}%
    \endgroup
  \fi}
\newcommand*\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus\p@
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      {\bfseries #1}\nobreak%
       \if@chaptertocdots
         \leaders\hbox{$\m@th%
           \mkern \@dotsep mu\hbox{.}\mkern \@dotsep%
           mu$}\hfil
       \else
         \hfil
       \fi
      \hb@xt@\@pnumwidth{\hfil\normalfont \normalcolor #2}\par%
      \penalty\@highpenalty
    \endgroup
  \fi}
\newcommand*\l@section[2]{%
  \@dottedtocline{1}{1.5em}{2.3em}{#1}{#2}%
}
\newcommand*\l@subsection[2]{\@dottedtocline{2}{3.8em}{3.2em}{#1}{#2}}
\newcommand*\l@subsubsection[2]{\@dottedtocline{3}{7.0em}{4.1em}{#1}{#2}}
\newcommand*\l@paragraph[2]{\@dottedtocline{4}{10em}{5em}{#1}{#2}}
\newcommand*\l@subparagraph[2]{\@dottedtocline{5}{12em}{6em}{#1}{#2}}
\newcommand\listoffigures{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chaptertoc{\listfigurename}{\listfigurename}%
    \@starttoc{lof}%
    \if@restonecol\twocolumn\fi
    }
\newcommand*\l@figure{\@dottedtocline{1}{1.5em}{2.3em}}
\newcommand\listoftables{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chaptertoc{\listtablename}{\listtablename}%
    \@starttoc{lot}%
    \if@restonecol\twocolumn\fi
    }
\let\l@table\l@figure
\newenvironment{thebibliography}[1]{}{}
\AtBeginDocument{
\newdimen\bibindent
\setlength\bibindent{1.5em}
\renewenvironment{thebibliography}[1]
{
  \chaptertoc{\bibname}{\bibname}%
  \list{\@biblabel{\@arabic\c@enumiv}}%
  {\settowidth\labelwidth{\@biblabel{#1}}%
    \leftmargin\labelwidth
    \advance\leftmargin\labelsep
    \@openbib@code
    \usecounter{enumiv}%
    \let\p@enumiv\@empty
    \renewcommand\theenumiv{\@arabic\c@enumiv}}%
  \sloppy
  \clubpenalty4000
  \@clubpenalty \clubpenalty
  \widowpenalty4000%
  \sfcode`\.\@m}
{\def\@noitemerr
  {\@latex@warning{Empty `thebibliography' environment}}%
  \endlist}
\newcommand\newblock{\hskip .11em\@plus.33em\@minus.07em}
\let\@openbib@code\@empty
} % AtBeginDocument
\newenvironment{theindex}
               {\if@twocolumn
                  \@restonecolfalse
                \else
                  \@restonecoltrue
                \fi
                \columnseprule \z@
                \columnsep 35\p@
                \twocolumn[\@makeschapterhead{\indexname}]%
                \@mkboth{\@toupper{\indexname}}{\@toupper{\indexname}}%
                \thispagestyle{plain}\parindent\z@
                \parskip\z@ \@plus .3\p@\relax
                \let\item\@idxitem}
               {\if@restonecol\onecolumn\else\clearpage\fi}
\newcommand\@idxitem{\par\hangindent 40\p@}
\newcommand\subitem{\@idxitem \hspace*{20\p@}}
\newcommand\subsubitem{\@idxitem \hspace*{30\p@}}
\newcommand\indexspace{\par \vskip 10\p@ \@plus5\p@ \@minus3\p@\relax}
\renewcommand\footnoterule{%
  \kern-3\p@
  \hrule\@width.4\columnwidth
  \kern2.6\p@}
\@addtoreset{footnote}{chapter}
\newcommand\@makefntext[1]{%
    \parindent 1em%
    \noindent
    \hb@xt@1.8em{\hss\@makefnmark}#1}
\newcommand\contentsname{Contents}
\newcommand\listfigurename{List of Figures}
\newcommand\listtablename{List of Tables}
\newcommand\bibname{Bibliography}
\newcommand\indexname{Index}
\newcommand\figurename{Figure}
\newcommand\tablename{Table}
\newcommand\partname{Part}
\newcommand\chaptername{Chapter}
\newcommand\appendixname{Appendix}
\newcommand\abstractname{Abstract}
\newcommand\prefacename{Preface}
\newcommand\forewordname{Foreword}
\newcommand\acknowledgementsname{Acknowledgements}
\newcommand\draftname{Preliminary Draft}
\def\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space\number\day, \number\year}
\setlength\columnsep{10\p@}
\setlength\columnseprule{0\p@}
\if@final
  \if@runningheaders
    \pagestyle{headings}
  \else
    \pagestyle{plain}
  \fi
\else
  \pagestyle{draft}
\fi
\pagenumbering{arabic}
\if@twoside
\else
  \raggedbottom
\fi
\if@twocolumn
  \twocolumn
  \sloppy
  \flushbottom
\else
  \onecolumn
\fi
\newcommand{\committeespacing}{1.5}
\AtBeginDocument{
  \renewcommand\baselinestretch{%
    \if@committee%
      \committeespacing%
    \else 2%
    \fi%
  }%
}%
\endinput
%%
%% End of file `smuthesis.cls'.

