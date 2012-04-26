%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% author (>>>USER_NAME<<<)
%% date   (>>>ISO_DATE<<<) (>>>TIME<<<)
%% 
%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 


\documentclass{article}
\let\tldocenglish=1  % for live4ht.cfg

\usepackage{tikz}
\usetikzlibrary{arrows,shadows} % for pgf-umlsd
\usepackage{soul} % hereby we are able to \hl == highlight some strings, or to \ul underline specials
% \usepackage[underline=true,rounded corners=false]{pgf-umlsd} % changed to following parameter-values:
\usepackage[underline=false,rounded corners=true]{pgf-umlsd}

\usepackage{tex-live-zh-cn, indentfirst}

\begin{document}

\title{%
  {\huge \textit{文档的名称}\\\smallskip}%
}

\author{(>>>USER_NAME<<<) 编写 \\[3mm]
        \url{https://github.com/RichardLuo/X-Live}
       }

\date{(>>>ISO_DATE<<<)}

\maketitle

\begin{multicols}{2}
\tableofcontents
%\listoftables
\end{multicols}

\input{(>>>POINT<<<)}

\end{document}




