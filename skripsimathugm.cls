%Created by Ari Dwi Hartanto, Alumni S1 Math Universitas Gadjah Mada, Yogyakarta, Indonesia
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{skripsimathugm}[2013/06/07 v2.0 The Universitas Gadjah Mada Mathematics Thesis Class]

\LoadClass[a4paper,12pt]{report}
\RequirePackage[english,bahasa]{babel}
\RequirePackage{times}
\RequirePackage{setspace}
\RequirePackage{indentfirst}

\RequirePackage{graphicx,latexsym}
\RequirePackage{amssymb}
\RequirePackage{amsfonts}
\RequirePackage{amstext}
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{listings}
\RequirePackage{color}
\RequirePackage{float}
\RequirePackage{longtable}
\RequirePackage{enumerate}
\RequirePackage{multirow}
\RequirePackage[center,font=footnotesize,labelfont=bf,textfont=bf,labelsep=space,aboveskip=1.5ex,singlelinecheck=off]{caption}
\RequirePackage{pdfpages}
\RequirePackage{tikz}
\RequirePackage{cases}
\usetikzlibrary{matrix,arrows}

\RequirePackage{natbib}
\bibliographystyle{plainnat}

\renewcommand{\baselinestretch}{1.5}
\parskip0.15cm

\renewcommand{\normalsize}{\fontsize{12bp}{14bp}\selectfont}
\frenchspacing

%------------------------------------------------------------
%Layout
%------------------------------------------------------------
\setlength{\topmargin}{0cm}
\setlength{\headheight}{0.46cm}
\setlength{\headsep}{1cm}
\setlength{\topskip}{0cm}
\setlength{\oddsidemargin}{1.46cm}
\setlength{\evensidemargin}{1.46cm}
\setlength{\textwidth}{14cm}
\setlength{\textheight}{22.7cm}
\setlength{\footskip}{1.3cm}
\setlength{\marginparsep}{0pt}
\setlength{\marginparwidth}{0pt}
\setlength{\parindent}{3em} %Indent approx 6 character

\pagestyle{myheadings}


\setcounter{secnumdepth}{2}
\renewcommand{\thechapter}{\Roman{chapter}}
\renewcommand{\thesection}{\arabic{chapter}.\arabic{section}.}
\renewcommand{\thesubsection}{\arabic{chapter}.\arabic{section}.\arabic{subsection}.}
%\renewcommand{\thesubsubsection}{\arabic{chapter}.\arabic{section}.\arabic{subsection}.\arabic{subsubsection}.}

\renewcommand{\thetable}{\arabic{chapter}.\arabic{table}}
\renewcommand{\thefigure}{\arabic{chapter}.\arabic{figure}}
\renewcommand{\theequation}{\arabic{chapter}.\arabic{equation}}

\usepackage{titlesec}
\titleformat{\chapter}
%[hang]
%[runin]
%[leftmargin]
[display]
{\center\large\bfseries}
{\large\MakeUppercase{\chaptertitlename} \thechapter}{1ex}{\large}
\titlespacing{\chapter}{0cm}{-1.2cm}{2cm}

\titleformat{\section}
[hang]
{\bfseries}
{\bfseries\thesection}{1ex}{\bfseries}
\titlespacing{\section}{0cm}{3ex}{0ex}


\titleformat{\subsection}
[hang]
{\bfseries}
{\bfseries\thesubsection}{1ex}{\bfseries}
\titlespacing{\subsection}{0cm}{3ex}{0ex}


%Untuk setting penomoran teorema, lemma, definisi, dll..
\newtheoremstyle{dotlesstheorem}  % follow `plain` defaults but change HEADSPACE.
  {}   % ABOVESPACE
  {0.4cm}   % BELOWSPACE
  {\itshape}  % BODYFONT
  {0pt}       % INDENT (empty value is the same as 0pt)
  {\bfseries} % HEADFONT
  {}         % HEADPUNCT
  {  }  % HEADSPACE. `plain` default: {5pt plus 1pt minus 1pt}
  {}          % CUSTOM-HEAD-SPEC
\theoremstyle{dotlesstheorem}
\newtheorem{teorema}{Teorema}[section]
\renewcommand{\theteorema}{\arabic{chapter}.\arabic{section}.\arabic{teorema}}
\newtheorem{lemma}[teorema]{Lema}
\newtheorem{sifat}[teorema]{Sifat}
\newtheorem{akibat}[teorema]{Akibat}
\newtheorem{proposisi}[teorema]{Proposisi}
\newtheorem{definisi}[teorema]{Definisi}
\newtheorem{corollary}[teorema]{\textit{Corollary}}

\newtheoremstyle{dotlessexample}  % follow `plain` defaults but change HEADSPACE.
  {}   % ABOVESPACE
  {0.4cm}   % BELOWSPACE
  {}  % BODYFONT
  {0pt}       % INDENT (empty value is the same as 0pt)
  {\bfseries} % HEADFONT
  {}         % HEADPUNCT
  {  }  % HEADSPACE. `plain` default: {5pt plus 1pt minus 1pt}
  {}          % CUSTOM-HEAD-SPEC
\theoremstyle{dotlessexample}
\newtheorem{contoh}[teorema]{Contoh}
\newtheorem{algoritma}{Algoritma}[chapter]
\renewcommand{\thealgoritma}{\arabic{chapter}.\arabic{algoritma}}

\renewenvironment{proof}{\vspace{-2ex}\noindent{\bf Bukti.}}{\hfill$\blacksquare$\newline\vspace{-0.4cm}}
\def\faktor#1#2{\raise0.7ex\hbox{$#1$}\!\!\!\rotatebox{-11}{$\Big/$\!}\!\lower0.7ex\hbox{$#2$}}
\def\faktorr#1#2{\raise0.4ex\hbox{$#1$}\!\!\rotatebox{-11}{$\big/$\!}\lower0.4ex\hbox{$#2$}}
\def\N{\mathbb{N}}
\def\Z{\mathbb{Z}}
\def\Q{\mathbb{Q}}
\def\R{\mathbb{R}}
\def\C{\mathbb{C}}
\def\im{\textrm{Im}}
\def\pustaka#1{\emph{(\citeauthor{#1},~~\!\citeyear{#1})}}
\def\tpustaka#1{\citeauthor{#1} (\citeyear{#1})}
\def\itemset{\vspace{-1ex}\itemsep3pt \parskip0pt \parsep0pt}

\usepackage[pdftex,bookmarks=true]{hyperref}
\usepackage{tabularx}


\def\captionsbahasa{%
\def\prefacename{PRAKATA}%
\def\contentsname{DAFTAR ISI}%
\def\listfigurename{DAFTAR GAMBAR}%
\def\listtablename{DAFTAR TABEL}%
\def\listappendixname{DAFTAR LAMPIRAN}%
\def\nomenclaturename{DAFTAR LAMBANG}%
\def\abstractname{INTISARI}%
\def\partname{BAGIAN}%
\def\chaptername{BAB}%
\def\appendixname{LAMPIRAN}%
\def\refname{DAFTAR PUSTAKA}%
\def\bibname{DAFTAR PUSTAKA}%
\def\indexname{Indek}%
\def\figurename{Gambar}%
\def\tablename{Tabel}%
\def\pagename{Halaman}%
}
\def\captionsenglish{%
\def\prefacename{PREFACE}%
\def\contentsname{CONTENTS}%
\def\listfigurename{LIST OF FIGURES}%
\def\listtablename{LIST OF TABLES}%
\def\listappendixname{LIST OF APPENDICES}%
\def\nomenclaturename{NOMENCLATURE}%
\def\abstractname{ABSTRACT}%
\def\partname{PART}%
\def\chaptername{CHAPTER}%
\def\appendixname{APPENDIX}%
\def\refname{REFERENCES}%
\def\bibname{REFERENCES}%
\def\indexname{Index}%
\def\figurename{Figure}%
\def\tablename{Table}%
\def\pagename{Page}%
}

%------------------------------------------------------------
%The form of page numbering
%------------------------------------------------------------
\pagestyle{myheadings}
\markright{}

\parskip0.12cm

%------------------------------------------------------------
%Define page numbering in the first chapter
%------------------------------------------------------------
\def\ps@chapterheading{%
  \let\@evenhead\@empty\let\@oddhead\@empty
  \def\@oddfoot{\hfil\thepage\hfil}%
  \def\@evenfoot{\hfil\thepage\hfil}
  }


%------------------------------------------------------------]
%Define thesis's inputs
%------------------------------------------------------------
\gdef\@university{Universitas Gadjah Mada}
\gdef\@faculty{Fakultas Matematika dan Ilmu Pengetahuan Alam}
\gdef\@dept{Departemen Matematika}
\gdef\@program{Program Sarjana Program Studi Matematika}
\gdef\@city{Yogyakarta}
\newcommand{\titleind}[1]{\gdef\@titleind{#1}}
\newcommand{\@titleind}{}
\newcommand{\titleeng}[1]{\gdef\@titleeng{#1}}
\newcommand{\@titleeng}{}
\newcommand{\fullname}[1]{\gdef\@fullname{#1}}
\newcommand{\@fullname}{}
\newcommand{\NIM}[1]{\gdef\@NIM{#1}}
\newcommand{\@NIM}{}
\newcommand{\examdate}[1]{\gdef\@examdate{#1}}
\newcommand{\@examdate}{\number\day~\ifcase\month\or
    Januari\or Pebruari\or Maret\or April\or Mei\or Juni\or
    Juli\or Agustus\or September\or Oktober\or November\or Desember\fi
    \space \number\year}
\newcommand{\degree}[1]{\gdef\@degree{#1}}
\newcommand{\@degree}{}
\newcommand{\yearsubmit}[1]{\gdef\@yearsubmit{#1}}
\newcommand{\@yearsubmit}{}
\newcommand{\yearenrollment}[1]{\gdef\@yearenrollment{#1}}
\newcommand{\@yearenrollment}{}
\newcommand{\headprogram}[1]{\gdef\@headprogram{#1}}
\newcommand{\@headprogram}{}
\newcommand{\firstsupervisor}[1]{\gdef\@firstsupervisor{#1}}
\newcommand{\@firstsupervisor}{}
\newcommand{\firstexaminer}[1]{\gdef\@firstexaminer{#1}}%
\newcommand{\@firstexaminer}{}
\newcommand{\secondexaminer}[1]{\gdef\@secondexaminer{#1}}%
\newcommand{\@secondexaminer}{}
\newcommand{\thirdexaminer}[1]{\gdef\@thirdexaminer{#1}}%
\newcommand{\@thirdexaminer}{}


%------------------------------------------------------------
%Define cover in Indonesian
%------------------------------------------------------------
\def\cover{%
  \thispagestyle{empty}%
  \pagenumbering{roman}
  \setcounter{page}{1}
    \begin{center}
      \begin{singlespace}
      \MakeUppercase{\normalfont\bfseries Skripsi}\\
      \vspace{1.5cm}	
      \MakeUppercase{\normalfont\bfseries\@titleind}\par\nobreak
      \vspace{0.7cm}
      {\bfseries( }\MakeUppercase{\normalfont\slshape\bfseries\@titleeng} {\bfseries )}\par\nobreak
       \vfill
       \includegraphics[width=5.5cm]{logougm}
       \vfill
       {\normalfont
        \@fullname\\
        \@NIM}\\
       \vspace{1.5cm}
       {\normalfont
         \MakeUppercase{\normalfont\bfseries \@program}\\
         \MakeUppercase{\normalfont\bfseries \@dept}\\
         \MakeUppercase{\normalfont\bfseries\@faculty}\\
         \MakeUppercase{\normalfont\bfseries\@university}\\
         \MakeUppercase{\normalfont\bfseries\@city}\\
         \vspace{0.3cm}
         {\normalfont\bfseries\@yearsubmit}}\\
      \end{singlespace}
      \end{center}
}


%------------------------------------------------------------
%Define titlepage in Indonesian
%------------------------------------------------------------
\def\titlepage{%
  \newpage\thispagestyle{empty}%
  \setcounter{page}{1}
  \phantomsection
    \begin{center}
      \begin{singlespace}
      \MakeUppercase{\normalfont\bfseries Skripsi}\\
      \vspace{1.5cm}	
      \MakeUppercase{\normalfont\bfseries\@titleind}\par\nobreak
      \vspace{0.7cm}
      {\bfseries( }\MakeUppercase{\normalfont\slshape\bfseries\@titleeng} {\bfseries )}\par\nobreak
      \vspace{1.5cm}
        {\normalfont Diajukan untuk memenuhi salah satu syarat memperoleh derajat\\
         {\@degree} \@program}\\
       \vfill
       \includegraphics[width=5.5cm]{logougm}
       \vfill
       {\normalfont
        \@fullname\\
        \@NIM}\\
       \vspace{1.5cm}
       {\normalfont
         \MakeUppercase{\normalfont\bfseries \@program}\\
         \MakeUppercase{\normalfont\bfseries \@dept}\\
         \MakeUppercase{\normalfont\bfseries\@faculty}\\
         \MakeUppercase{\normalfont\bfseries\@university}\\
         \MakeUppercase{\normalfont\bfseries\@city}\\
         \vspace{0.3cm}
         {\normalfont\bfseries\@yearsubmit}}\\
      \end{singlespace}
      \end{center}
\addcontentsline{toc}{chapter}{HALAMAN JUDUL}
}



%------------------------------------------------------------
%Approval Page
%------------------------------------------------------------
\def\approvalpage{%
  \newpage\thispagestyle{empty}%
  \phantomsection
  \begin{center}
  \begin{singlespace}
  \MakeUppercase{\normalfont\bfseries\expandafter{HALAMAN PENGESAHAN}}\\
  \vspace{1cm}
  \MakeUppercase{\normalfont\bfseries\expandafter{SKRIPSI}}\\
  \vspace{0.5cm}
      \MakeUppercase{\normalfont\bfseries\@titleind}\par\nobreak
  \vspace{1cm}
Telah dipersiapkan dan disusun oleh\\
\vspace{0.8cm}
\@fullname\\
\@NIM\\
\vspace{0.8cm}
Telah dipertahankan di depan Tim Penguji\\
pada tanggal \expandafter{\@examdate}\\
\vspace{0.5cm}
Susunan Tim Penguji

\vspace{3cm}
\begin{tabular}{p{7.5cm}p{7cm}}
\underline{\@firstsupervisor}&\underline{\@firstexaminer}\\
Pembimbing Utama&Ketua Tim Penguji
\end{tabular}

\vspace{2cm}
\begin{tabular}{p{7.5cm}p{7cm}}
&\underline{\@secondexaminer}\\
&Penguji
\end{tabular}

\vspace{2cm}
\begin{tabular}{p{7.5cm}p{7cm}}
&\underline{\@thirdexaminer}\\
&Penguji
\end{tabular}

    \end{singlespace}
    \end{center}
\addcontentsline{toc}{chapter}{HALAMAN PENGESAHAN}
}

\def\approvalpagescan{%
  \newpage\thispagestyle{empty}%
  \phantomsection
\addcontentsline{toc}{chapter}{HALAMAN PENGESAHAN}
\includepdf[fitpaper]{pengesahanskripsi}
}

%------------------------------------------------------------
%Declare Page
%------------------------------------------------------------
\def\declarepage{%
  \newpage\thispagestyle{chapterheading}%
  \phantomsection
  \begin{center}
  {\normalfont\large\bfseries\expandafter{PERNYATAAN BEBAS PLAGIASI}}
  \par\nobreak
  \end{center}
  \vspace{1.0cm}
    \noindent
Saya yang bertanda tangan di bawah ini:

\begin{tabular}{lcp{10cm}}
Nama &:& \@fullname\\
NIM &:& \@NIM\\
Tahun terdaftar &:& \@yearenrollment\\
Program Studi &:& \@program\\
Fakultas &:& \@faculty
\end{tabular}
menyatakan bahwa dalam dokumen ilmiah skripsi ini tidak terdapat bagian dari
karya ilmiah lain yang telah diajukan untuk memperoleh gelar akademik di suatu
lembaga Pendidikan Tinggi, dan juga tidak terdapat karya atau pendapat yang
pernah ditulis atau diterbitkan oleh oleh orang/lembaga lain, kecuali yang
secara tertulis disitasi dalam dokumen ini dan disebutkan sumbernya secara
lengkap dalam daftar pustaka.
\par\noindent
Dengan demikian saya menyatakan bahwa dokumen ilmiah ini bebas dari unsur-unsur
plagiasi dan apabila dokumen ilmiah skripsi ini di kemudian hari terbukti
merupakan plagiasi dari hasil karya penulis lain dan/atau dengan sengaja
mengajukan karya atau pendapat yang merupakan hasil karya penulis lain, maka
penulis bersedia menerima sanksi akademik dan/atau sanksi hukum yang berlaku.


\vspace{1.5cm}
\begin{tabular}{p{7cm}c}
&\@city,\space\@examdate\\
&\\
&\\
& {\scriptsize\it Materai Rp6.000,00} \\
&\\
&\space\@fullname\\
&\space\@NIM
\end{tabular}
\vfill \addcontentsline{toc}{chapter}{HALAMAN PERNYATAAN BEBAS PLAGIASI} }

\def\declarepagescan{%
  \newpage\thispagestyle{chapterheading}%
  \phantomsection
\addcontentsline{toc}{chapter}{HALAMAN PERNYATAAN}
\includepdf[fitpaper]{pernyataan}
}

%------------------------------------------------------------
%Acknowlegment
%------------------------------------------------------------
\def\acknowledment{%
  \clearpage\thispagestyle{chapterheading}%
  \chapter*{}%
\null\vfill%Force the content of acknowledment to bottom page
\addcontentsline{toc}{chapter}{HALAMAN PERSEMBAHAN}
}

%------------------------------------------------------------
%Motto
%------------------------------------------------------------
\def\motto{%
  \clearpage\thispagestyle{chapterheading}%
  \chapter*{}%
\null\vfill%Force the content of acknowledment to bottom page
\addcontentsline{toc}{chapter}{HALAMAN MOTTO}
}

%------------------------------------------------------------
%Preface
%------------------------------------------------------------
\def\preface{%
  \chapter*{PRAKATA}%
\addcontentsline{toc}{chapter}{PRAKATA}
}

%------------------------------------------------------------
%Nomenclature
%------------------------------------------------------------
\def\lambang{%
  \clearpage\thispagestyle{chapterheading}%
  \chapter*{DAFTAR LAMBANG}%
  \vspace{0.5cm}
\addcontentsline{toc}{chapter}{\nomenclaturename}
}

%------------------------------------------------------------
%Redefine Abstract in Indonesian
%------------------------------------------------------------
\def\abstractind{%
  \clearpage\thispagestyle{chapterheading}%
  \chapter*{}%
  {\centering \normalfont
  {\vspace{-1.97cm}\textbf{\abstractname}} \\
  \vspace{1.5cm}
   {\textbf{\@titleind}}
        \par\nobreak
        \vskip 12\p@
    \interlinepenalty\@M
    {\normalsize Oleh\par
   \vspace{0.5cm}
    \@fullname\\
    \@NIM\\
    \vskip 10\p@
    }\par\nobreak
    }
  \begin{singlespace}%
  \vskip 12\p@
  \addcontentsline{toc}{chapter}{\abstractname}
}
\def\endabstractind{\par\vfil\null\end{singlespace}}

%------------------------------------------------------------
%Redefine Abstract in English
%------------------------------------------------------------
\def\abstracteng{%
  \clearpage\thispagestyle{chapterheading}\selectlanguage{english}%
  \chapter*{}%
  {\centering \normalfont
  {\vspace{-1.97cm}\textbf{\abstractname}}\\
  \vspace{1.5cm}
   {\textbf{\@titleeng}}
        \par\nobreak
        \vskip 12\p@
    \interlinepenalty\@M
    {\normalsize By\par
   \vspace{0.5cm}
    \@fullname\\
    \@NIM\\
    \vskip 10\p@
    }\par\nobreak
    }
  \begin{singlespace}%
  \vskip 12\p@
  \addcontentsline{toc}{chapter}{\abstractname}
  }
\def\endabstracteng{\par\vfil\null\end{singlespace}%
\clearpage\pagenumbering{arabic}\setcounter{page}{1}}

\endinput
