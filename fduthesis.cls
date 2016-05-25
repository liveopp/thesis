%
% Fudan University Thesis Template Master
%
%   Version
%       Beta
%   Created 
%       2016.01.26 by opphang@gmail.com
%
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{fduthesis}[2016/01/26 FDUthesis document class.]
%Pass all unprocessed/unknown options to ctexbook. If a wrong option is
%specified, perhaps ctexbook will throw an error.
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions
\LoadClass[a4paper,zihao=-4,linespread=1.38]{ctexbook} %%A4纸, 小四号, 行距20磅
\pagestyle{plain}

% Alter some LaTeX defaults for better treatment of figures:
% See p.105 of "TeX Unbound" for suggested values.
% See pp. 199-200 of Lamport's "LaTeX" book for details.
%   General parameters, for ALL pages:
%\renewcommand{\topfraction}{0.9}	% max fraction of floats at top
%\renewcommand{\bottomfraction}{0.8}	% max fraction of floats at bottom
%%   Parameters for TEXT pages (not float pages):
%\setcounter{topnumber}{2}
%\setcounter{bottomnumber}{2}
%\setcounter{totalnumber}{4}     % 2 may work better
%\setcounter{dbltopnumber}{2}    % for 2-column pages
%\renewcommand{\dbltopfraction}{0.9}	% fit big float above 2-col. text
%\renewcommand{\textfraction}{0.07}	% allow minimal text w. figs
%%   Parameters for FLOAT pages (not text pages):
%\renewcommand{\floatpagefraction}{0.7}	% require fuller float pages
%% N.B.: floatpagefraction MUST be less than topfraction !!
%\renewcommand{\dblfloatpagefraction}{0.7}	% require fuller float pages
%remember to use [htp] or [htpb] for placement
	
%load basic packages
\RequirePackage{mathtools,amsthm,amsfonts,amssymb}
\RequirePackage[
	left=3.17cm,
	right=3.17cm,
	top=2.54cm,
	bottom=2.54cm,
    nohead,
	footskip=0.79cm,
%	showframe%uncomment this if you want to check the page setup.
	]{geometry}
\RequirePackage[numbers,sort&compress,square]{natbib}
\RequirePackage{subcaption}
\RequirePackage{algorithm,algpseudocode}

% 选择参考文献的排版格式。注意fdubib这个格式不保证完全符合要求，请自行决定是否使用
\bibliographystyle{fdubib}%{GBT7714-2005NLang-UTF8}
\def\bibfont{\zihao{5}} %参考文献字体五号
\setlength{\bibsep}{0pt plus1pt minus1pt}
%\setlength{\bibhang}{2\ccwd}%Applied only to author-year style
%\RequirePackage[format=hang,labelsep=quad]{caption}
%\DeclareCaptionFont{c5size}{\wuhao}
%\captionsetup{labelfont={c5size,bf}}
%\captionsetup{textfont=c5size}
\RequirePackage{hyperref}

%Title setup
\ctexset{
  chapter={
    format={\bfseries\zihao{3}\centering}, %章节标题三号
    beforeskip={0pt},
    afterskip={18pt}
  },
  section/format={\bfseries\zihao{4}\flushleft},%规定14pt，即四号
  subsection/format={\bfseries\fontsize{13pt}\baselineskip}%规定13pt
}

%New mathematical environments
\newtheorem{theorem}{\indent\textbf{定理}}[section]
\newtheorem{lemma}{\indent\textbf{引理}}[section]
\newtheorem{example}{\indent\textbf{例}}[section]
\newtheorem{definition}{\indent\textbf{定义}}[section]
\newtheorem{axiom}{\indent\textbf{公理}}[section]
\newtheorem{property}{\indent\textbf{性质}}[section]
\newtheorem{proposition}{\indent\textbf{命题}}[section]
\newtheorem{corollary}{\indent\textbf{推论}}[section]
\newtheorem{remark}{\indent\textbf{注解}}[section]
\newtheorem{condition}{\indent\textbf{条件}}[section]
\newtheorem{conclusion}{\indent\textbf{结论}}[section]
\newtheorem{assumption}{\indent\textbf{假设}}[section]
\newtheorem{prove}{\indent\textbf{证明}}[section]
\renewcommand{\proofname}{证明}
\floatname{algorithm}{算法}

%New autorefname
\def\equationautorefname{式}
\def\footnoteautorefname{脚注}
\def\itemautorefname{项}
\def\figureautorefname{图}
\def\subfigureautorefname{图}
\def\tableautorefname{表}
\def\partautorefname{篇}
\def\appendixautorefname{附录}
\def\chapterautorefname{章}
\def\sectionautorefname{节}
\def\subsectionautorefname{小节}
\def\theoremautorefname{定理}
\def\lemmaautorefname{引理}
\def\definitionautorefname{定义}
\def\assumptionautorefname{假设}
\def\corollaryautorefname{推论}
\def\propertyautorefname{性质}
\def\algorithmautorefname{算法}

%% 用来产生封面的命令
\newcommand{\makefrontcover}[8]{
\begin{titlepage}
\setcounter{page}{0}
\begin{flushright}
  {
  \fontsize{9pt}{11pt}\selectfont
  \begin{tabular}{rl}
	学校代码：& 10246 \\
	学\hspace{2em}号：& #1 \\
  \end{tabular}
  }
\end{flushright}
\vspace{1.5cm}
\begin{center}
  \includegraphics[width=7.68cm,height=2.86cm]{fudan.eps}\\
  \vspace{0.6cm}
  {
  \fontsize{22pt}{22pt}\selectfont
  硕\hspace{.5em}士\hspace{.5em}学\hspace{.5em}位\hspace{.5em}论\hspace{.5em}文\\
  }
  \vspace{0.4cm}
  {
  \fontsize{15pt}{15pt}\selectfont
  （学术学位）\\
  }
  \vspace{1.8cm}
  {
  \fontsize{18pt}{18pt}\selectfont
  \textbf{#2}\\
  }
  \vspace{0.5cm}
  {
  \fontsize{14pt}{14pt}\selectfont
  \textbf{#3}
  }
\end{center}
\vspace{2.8cm}
\begin{flushright}
  {\fontsize{14pt}{24pt}\selectfont
  \begin{tabular}{p{90pt}p{200pt}}
	院\hspace{3.5em}系：& #4 \\
	专\hspace{3.5em}业：& #5 \\
	姓\hspace{3.5em}名：& #6 \\
	指\hspace{.5em}导\hspace{.5em}教\hspace{.5em}师：& #7 \\
	完\hspace{.5em}成\hspace{.5em}日\hspace{.5em}期：& #8 \\
  \end{tabular}}
\end{flushright}
\end{titlepage}
}

%% 产生扉页
\newcommand{\makeheadpage}[3]{
\begin{titlepage}
\vspace*{\fill}
  \begin{center}
    {\zihao{3}\bfseries 指\hspace{.5em}导\hspace{.5em}老\hspace{.5em}师:}\\
    \vspace{1cm}
    {\zihao{4} #1}\\
    \vspace{2cm}
    {\zihao{3}\bfseries 指\hspace{.5em}导\hspace{.5em}小\hspace{.5em}组\hspace{.5em}成\hspace{.5em}员:}\\
    \vspace{1cm}
    {\zihao{4}#2}\\
    \vspace{4mm}
    {\zihao{4}#3}\\
  \end{center}
\vspace*{\fill}
\end{titlepage}
}

%% 用来产生封底的命令
\newcommand{\makebackcover}{\newpage\thispagestyle{empty}
  {
  \linespread{2}\selectfont
    \begin{center}
  \textbf{\Large 复旦大学} \\
    \textbf{\Large 学术论文独创性声明}
  \end{center}
  \vspace{1em}

  本人郑重声明：所呈交的学位论文，是本人在导师的指导下，独立进行研究
  工作所取得的成果。论文中除特别标注的内容外，不包含任何其他个人或机构
  已经发表或撰写过的研究成果。对本研究做出重要贡献的个人和集体，均已在论文
  中作了明确的声明并表示了谢意。声明的法律结果由本人承担。
  \vspace{1em}
  \begin{flushright}
  作者签名: \underline{\includegraphics[width=6em]{myname}}
  \hspace{0.5em} 日期: \underline{\includegraphics[width=6em]{date}}
  \end{flushright}
  \vspace{5em}
  \begin{center}
  \textbf{\Large 复旦大学} \\
    \textbf{\Large 学位论文使用授权声明}
  \end{center}
  \vspace{1em}

  本人完全了解复旦大学有关收藏和利用博士、硕士学位论文的规定，
  即：学校有权收藏、使用并向国家有关部门或机构送交论文的印刷本和
  电子版本;允许论文被查阅和借阅；学校可以公布论文的全部或部分内容，
  可以采用影印、缩印或其它复制手段保存论文。涉密学位论文在解密后遵守此规定。
  \vspace{1em}
  \begin{flushright}
  作者签名: \underline{\includegraphics[width=6em]{myname}}
  \hspace{0.5em} 导师签名: \underline{\includegraphics[width=6em]{zname}}
  \hspace{0.5em} 日期: \underline{\includegraphics[width=6em]{date}}
  \end{flushright}
  }
}

%Abstracts and thanks
\newcommand{\keywords}[2]{
  \vspace{3.5ex}\noindent \textbf{关键词:~} #1 \\
  \textbf{中图分类号:~} #2
}
\newcommand{\enkeywords}[2]{
  \vspace{3.5ex}\noindent \textbf{Keywords:~} #1 \\
  \textbf{CLC Number:~} #2
}
\newenvironment{cnabstract}{\chapter{摘要}}{}
\newenvironment{enabstract}{\chapter{Abstract}}{}
\renewenvironment{thanks}{\chapter{致谢}}{}
  
\newenvironment{denotation}[1][2.5cm]{
  \chapter{符号说明} % no tocline
  \noindent\begin{list}{}%
    {\vskip-30bp%\xiaosihao[1.6]
     \renewcommand\makelabel[1]{##1\hfil}
     \setlength{\labelwidth}{#1} % 标签盒子宽度
     \setlength{\labelsep}{0.5cm} % 标签与列表文本距离
     \setlength{\itemindent}{0cm} % 标签缩进量
     \setlength{\leftmargin}{\dimexpr\labelwidth+\labelsep} % 左边界
     \setlength{\rightmargin}{0cm}
     \setlength{\parsep}{0cm} % 段落间距
     \setlength{\itemsep}{0cm} % 标签间距
    \setlength{\listparindent}{0cm} % 段落缩进量
    \setlength{\topsep}{0pt}} % 标签与上文的间距
 }{\end{list}}

\endinput
