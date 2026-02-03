% ITB LaTeX by Ahmad Zaini Zahrandika
% 

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{itb-thesis}
\LoadClass[a4paper,12pt]{report}

\RequirePackage{setspace}
\RequirePackage{graphicx,latexsym}

\usepackage{layout}
\usepackage[left=4cm, right=3cm, top=3cm, bottom=3cm]{geometry}
\usepackage{fontspec}
\setmainfont{Times New Roman}
\usepackage[titles]{tocloft}
%\usepackage{newtxtext}
%\usepackage{newtxmath}
\usepackage{amsmath, amssymb}  % Required for \mathbb{R}
\usepackage{anyfontsize}
\usepackage[letterspace=20]{microtype}
\usepackage{hanging}
%\usepackage[none]{hyphenat} % Load the package with the 'none' option
\usepackage{array}
\usepackage{longtable}
\usepackage{enumitem}
\usepackage{parskip}           % Enables paragraph spacing
\usepackage{titlesec}
\usepackage{caption}
\usepackage{float}     % For precise placement (H option)

\usepackage[none]{hyphenat}
\emergencystretch 5em

%\usepackage{showframe} % Margin diagnostics

% Layout
%\setlength{\topmargin}{0pt}
%\setlength{\headheight}{0pt}
%\setlength{\headsep}{0.46cm}
%\setlength{\oddsidemargin}{1.46cm}
%\setlength{\evensidemargin}{1.46cm}
%\setlength{\textwidth}{14cm}
%\setlength{\textheight}{23.7cm}
\setlength{\footskip}{1.5cm}
%\setlength{\marginparsep}{0pt}
\setlength{\marginparwidth}{0pt}

% Redefine chapter & section
\renewcommand{\chaptername}{Bab}
\renewcommand \thechapter {\@Roman\c@chapter}
\titleformat{\chapter}{\fontsize{14}{14}\bfseries\centering}{\chaptername\space\thechapter}{1em}{}
%\titleformat{\section}{\bfseries}{\thesection}{2em}{}
\titleformat{\section}
	{\bfseries}
	{\makebox[3.1em][l]{\thesection}}
	{0pt}
	{}
%\titleformat{\subsection}{\bfseries}{\thesubsection}{1.3em}{}
\titleformat{\subsection}
	{\bfseries}
	{\makebox[3.15em][l]{\thesubsection}}
	{0pt}
	{}
\titlespacing*{\chapter}{0pt}{-2\baselineskip}{0pt}
\titlespacing*{\section}{0pt}{3.5ex plus 1ex minus .2ex}{0pt}
\titlespacing*{\subsection}{0pt}{3.25ex plus 1ex minus .2ex}{0pt}
\titlespacing*{\subsubsection}{0pt}{3.25ex plus 1ex minus .2ex}{0pt}

% Redefine figure and table caption
\renewcommand{\figurename}{Gambar}
\renewcommand{\tablename}{Tabel}

% Set custom label separation space for images
\usepackage{calc}  % For length calculations

% Hanging caption settings
\captionsetup{
	format=hang,          % Enables hanging indent
	margin=0pt,  % This affects spacing around the entire caption
	singlelinecheck=false,      % Don't center single-line captions
	labelsep=space,            % Colon after "Figure X"
	skip=1\baselineskip,                  % Space between figure and caption
	indention=0em,             % First line indent (default)
	hangindent=0em,           % Hanging indent amount
}

% Command for centered caption
\newcommand{\centeredcaption}[1]{%
	\captionsetup{
		format=hang,          % Enables hanging indent
		margin=0pt,  % This affects spacing around the entire caption
		singlelinecheck=false,      % Don't center single-line captions
		labelsep=space,            % Colon after "Figure X"
		skip=1\baselineskip,                  % Space between figure and caption
		indention=0em,             % First line indent (default)
		hangindent=0em,           % Hanging indent amount
		justification=centering
	}%
	\caption{#1}%
}

% ToC settings
\renewcommand{\cftchapfont}{\normalfont}
\renewcommand{\cftchappagefont}{\normalfont}
\renewcommand{\cftchapleader}{\cftdotfill{\cftdotsep}}
\setlength{\cftbeforechapskip}{0ex}
%\setlength{\cftbeforesecskip}{-1.5ex}
%\setlength{\cftbeforesubsecskip}{-1.5ex}
\renewcommand{\cftdotsep}{0.1}
\setlength{\cftchapnumwidth}{45pt}  % adjust smaller if needed
\setlength{\cftsecindent}{45pt}
\setlength{\cftsecnumwidth}{25pt}  % adjust smaller if needed
\setlength{\cftsubsecnumwidth}{35pt}  % adjust smaller if needed
\setlength{\cftsubsecindent}{72.5pt}
\renewcommand{\cftchappresnum}{Bab~}
\renewcommand{\cftchapaftersnum}{\quad}

%\addtocontents{toc}{\vspace{1em}}

% Image, table list settings
%\setlength{\cftbeforefigskip}{-1.5ex}    % Space between figure entries
\renewcommand\cftfigindent{0pt}  % no indentation
\renewcommand{\cftfigpresnum}{Gambar~}
\renewcommand{\cftfigaftersnum}{\quad}
\setlength{\cftfignumwidth}{70pt}


% Some preference settings 
\renewcommand{\baselinestretch}{1.5}
\setlength{\parindent}{0pt}
\setlength{\parskip}{1.5\baselineskip}
% Adjust both enumerated and itemized lists
\setlist[enumerate]{topsep=-2\baselineskip,itemsep=0pt,partopsep=0pt,parsep=0pt, labelsep=1em, labelwidth=2em, leftmargin=3.1em} % Numbered lists
\setlist[itemize]{topsep=-2\baselineskip,itemsep=0pt,partopsep=0pt,parsep=0pt, labelsep=1em, labelwidth=2em, leftmargin=3.1em} % Bulleted lists

% Redefine caption names
\def\abstractnameid{ABSTRAK}
\def\abstractnameen{\textit{ABSTRACT}}

\def\approvalname{HALAMAN PENGESAHAN}
\def\thesisguidename{PEDOMAN PENGGUNAAN TESIS}
\def\dedicationpagename{HALAMAN PERUNTUKAN}
\def\prefacename{KATA PENGANTAR}
\def\contentsname{DAFTAR ISI}%

\renewcommand{\listfigurename}{DAFTAR GAMBAR DAN ILUSTRASI}
\def\listtablename{DAFTAR TABEL}
\def\nomenclaturename{DAFTAR SINGKATAN DAN LAMBANG}%

% Define inputan data tesis
\gdef\@university{Institut Teknologi Bandung}
\gdef\@city{Bandung}
\newcommand{\faculty}[1]{\gdef\@faculty{#1}}
\newcommand{\thesistitle}[1]{\gdef\@thesistitle{#1}}
\newcommand{\entitle}[1]{\gdef\@entitle{#1}}
\newcommand{\fullname}[1]{\gdef\@fullname{#1}}
\newcommand{\idnum}{\gdef\@idnum}
\newcommand{\degree}{\gdef\@degree}
\newcommand{\egdegree}{\gdef\@egdegree}
\newcommand{\monthsubmit}[1]{\gdef\@monthsubmit{#1}}
\newcommand{\yearsubmit}[1]{\gdef\@yearsubmit{#1}}
\newcommand{\approvaldate}[1]{\gdef\@approvaldate{#1}}
\newcommand{\firstsupervisor}[1]{\gdef\@firstsupervisor{#1}}
\newcommand{\secondsupervisor}[1]{\gdef\@secondsupervisor{#1}}
\newcommand{\thirdsupervisor}[1]{\gdef\@thirdsupervisor{#1}}
\newcommand{\firstnip}[1]{\gdef\@firstnip{#1}}
\newcommand{\secondnip}[1]{\gdef\@secondnip{#1}}
\newcommand{\thirdnip}[1]{\gdef\@thirdnip{#1}}
%\newcommand{\@faculty}{}
%\newcommand{\@thesistitle}{}
%\newcommand{\@fullname}{}
%\newcommand{\@idnum}{}
%\newcommand{\@degree}{}
%\newcommand{\@monthsubmit}{}
%\newcommand{\@yearsubmit}{}

% Define cover
\def\cover{
	\thispagestyle{empty}
	\pagenumbering{roman}
	\setcounter{page}{0}
	\begin{center}
		\begin{singlespace}
			\lsstyle\fontsize{14pt}{16.1pt}\selectfont\MakeUppercase{\normalfont\bfseries\@thesistitle}
			\par\nobreak			
			\vskip 0pt plus 2fill\relax

			% Untuk proposal tesis I
%			\MakeUppercase{\normalfont\bfseries Proposal Tesis}\\	
			
 			% Untuk draft akhir
 			\MakeUppercase{\normalfont\bfseries Tesis}\\	
			\vspace{1em}			
			
			% Untuk proposal tesis I
%			{\fontsize{12pt}{14pt}\selectfont\normalfont\bfseries Karya tulis sebagai salah satu syarat\\untuk melaksanakan seminar Tesis I dari\\ \@university}			
%			\vskip 0pt plus 1fill\relax
			
% 			% Untuk draft akhir
 			{\fontsize{12pt}{13.8pt}\selectfont\normalfont\bfseries Karya tulis sebagai salah satu syarat\\untuk memperoleh gelar Magister dari\\ \vspace{-1.8pt} \@university}			
 			\vskip 0pt plus 1fill\relax
			
			\normalfont\bfseries {\fontsize{12pt}{13.8pt}\selectfont Oleh}\\ {\MakeUppercase{\normalfont\bfseries\@fullname\\NIM: \@idnum}\\(Program Studi \@degree)}		
			\vskip 0pt plus 1fill\relax			
			
			\includegraphics[width=2.35cm,height=3.5cm]{logo-itb.png}
			\vskip 0pt plus 1.5fill\relax
			
			\phantom{xdd}\\
			\MakeUppercase{\normalfont\bfseries \@university}\\
			{\normalfont\bfseries\@monthsubmit \ \@yearsubmit}
		\end{singlespace}
	\end{center}
}

% Abstrak dalam Bahasan Indonesia
\def\abstractid{
	\chapter*{\abstractnameid}
	\begin{center}
		%\vspace{-0.5\baselineskip}	

		\lsstyle\fontsize{14pt}{16pt}\selectfont\MakeUppercase{\normalfont\bfseries\@thesistitle}
		\par\nobreak					
		
		\normalfont{\fontsize{12pt}{14pt}\selectfont Oleh}\\
		{\normalfont\bfseries\@fullname\\NIM: \@idnum}\\
		\fontsize{12pt}{14pt}\selectfont{\bfseries (Program Studi \@degree)}\\			
		\vspace{3\baselineskip}	
	\end{center}	
	\addcontentsline{toc}{chapter}{\abstractnameid}	
}

% Abstrak dalam Bahasa Inggris
\def\abstracten{
	\chapter*{\abstractnameen}
	\begin{center}
		%\vspace{-0.5\baselineskip}	
		
		\lsstyle\fontsize{14pt}{16pt}\selectfont\MakeUppercase{\normalfont\bfseries\@entitle}
		\par\nobreak					
		
		\normalfont{\fontsize{12pt}{14pt}\selectfont By}\\
		{\normalfont\bfseries\@fullname\\NIM: \@idnum}\\
		\fontsize{12pt}{14pt}\selectfont{\bfseries (Master's Program in Computational Science)}\\			
		\vspace{3\baselineskip}	
	\end{center}	
	\addcontentsline{toc}{chapter}{\abstractnameen}	
}

% Define approval page
\def\approvalpage{
	\clearpage
	\begin{center}
		\begin{singlespace}
			\lsstyle\fontsize{14pt}{16pt}\selectfont\MakeUppercase{\normalfont\bfseries\@thesistitle}
			\par\nobreak					
			\vspace{2\baselineskip}
			
			\normalfont{\fontsize{12pt}{14pt}\selectfont Oleh}\\
			{\normalfont\bfseries\@fullname\\NIM: \@idnum}\\
			\fontsize{12pt}{14pt}\selectfont{\bfseries (Program Studi \@degree)}\\			
			\vspace{\baselineskip}	

			\fontsize{12pt}{14pt}\selectfont
			{\normalfont \@university}\\
			\vspace{3\baselineskip}
			
			{\normalfont Menyetujui\\Tim Pembimbing}\\
			\vspace{\baselineskip}
			
			{\normalfont Tanggal \@approvaldate}\\
			\vspace{2\baselineskip}
			
			{\normalfont Ketua}\\		
			\vspace{3\baselineskip}
			
			{\normalfont \underline{\quad \quad \quad \quad \quad \quad \quad \quad \quad \quad \quad}\\
				\vspace{1em} (\@firstsupervisor})\\
			\vspace{3\baselineskip}
			
%			\begin{tabular}{ccc}
%				Anggota & \hspace{1cm} & Anggota\\
%				\rule{0pt}{42pt}  & & \rule{0pt}{42pt} \\
%				
%				\underline{(\@secondsupervisor)} & & \underline{(\@thirdsupervisor)}\\
%				NIP. \@secondnip & & NIP. \@thirdnip    
%   		\end{tabular}    
		\end{singlespace}	
	\end{center}	
	\addcontentsline{toc}{chapter}{\approvalname}
}

% Define thesis guide page
\def\thesisguide{
	\chapter*{\thesisguidename}
	\addcontentsline{toc}{chapter}{\thesisguidename}
}

% Define dedication page
\def\dedicationpage{
	\clearpage
	\addcontentsline{toc}{chapter}{\dedicationpagename}
}

% Define preface
\def\preface{
	\chapter*{\prefacename}
	\addcontentsline{toc}{chapter}{\prefacename}
}

% Define nomenclature
\def\singkatan{
	\chapter*{\nomenclaturename}
	\thispagestyle{plain}
	\addcontentsline{toc}{chapter}{\nomenclaturename}
}	

