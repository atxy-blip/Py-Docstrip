\NeedsTeXFormat{LaTeX2e}
\GetIdInfo $Id: cqp-doc.dtx 0.1.1 2022-01-10 15:00:00 +0800
  Yu Xiong <y-xiong22@mails.tsinghua.edu.cn>$
  {Python Docstrip}
\ProvidesExplClass{ptx-doc}
  {\ExplFileDate}{\ExplFileVersion}{\ExplFileDescription}
% 检查 XeTeX 编译环境
\msg_new:nnn { pydoc } { unsupported-engine }
  { You~ must~ change~ your~ typesetting~ engine~ to~ "xelatex". }
\sys_if_engine_xetex:F
  { \msg_fatal:nn { pydoc } { unsupported-engine } }
% 载入文档类
\PassOptionsToClass
  { UTF8, 11pt, linespread=1.4, a4paper, fontset=none, sub3section }
  { ctexart }
\LoadClass { ctexart }
\RequirePackage{
  fontspec,
  caption,
  enumitem,
  etoolbox,
  geometry,
  unicode-math,
  siunitx,
  hypdoc,
  listings,
  cleveref,
  setspace,
  tcolorbox,
  xkcdcolors,
  zref-base
}
\RequirePackage{
  alphalph,
  fancyvrb,
  verbatim
}
\geometry { hmargin=1in, vmargin=1in }
\raggedbottom
\CodelineNumbered
\colorlet { KeyColor } { xkcdFadedBlue }
\captionsetup[figure]{name=图}
\captionsetup[table]{name=表}
% 字体设置
\setmainfont { InriaSerif }
  [
    Extension      = .otf,
    UprightFont    = *-Regular,
    BoldFont       = *-Bold,
    ItalicFont     = *-Italic,
    BoldItalicFont = *-BoldItalic,
  ]
\setsansfont { LexendDeca }
\setmonofont { Iosevka }
  [
    UprightFont = *~Semibold,
    ItalicFont  = *~Semibold~Italic,
    BoldFont    = *~Bold
  ]
\setCJKmainfont{Source~ Han~ Serif~ SC}[
  UprightFont     = *~ SemiBold,
  BoldFont        = *~ Heavy,
  ItalicFont      = *~ SemiBold,
  BoldItalicFont  = *~ SemiBold,
  RawFeature      = +fwid]
\setCJKsansfont{Sarasa~ Gothic~ SC}
\setCJKmonofont{Sarasa~ Mono~ SC}
\setmathfont{NewCMMath-Book}[
  Extension    = .otf,
  StylisticSet = 2,
]%
\setmathfont{NewCMMath-Book}[
  Extension    = .otf,
  StylisticSet = 1,
  range        = {scr,bfscr},
]%
\setmathrm{NewCM10}[
  Extension      = .otf,
  UprightFont    = *-Book,
  BoldFont       = *-Bold,
  ItalicFont     = *-BookItalic,
  BoldItalicFont = *-BoldItalic,
]%
\setmathsf{NewCMSans10}[
  Extension      = .otf,
  UprightFont    = *-Book,
  BoldFont       = *-Bold,
  ItalicFont     = *-BookOblique,
  BoldItalicFont = *-BoldOblique,
]%
\setmathtt{NewCMMono10}[
  Extension      = .otf,
  UprightFont    = *-Book,
  ItalicFont     = *-BookItalic,
  BoldFont       = *-Bold,
  BoldItalicFont = *-BoldOblique,
]%
\unimathsetup{
  math-style = ISO,
  bold-style = ISO,
  partial = upright
}
\newcommand\E{\symup{e}}
\newcommand\I{\symup{i}}
\newcommand\onehalf{\sfrac{1}{2}}
\AtBeginDocument{
  \let\le\leqslant
  \let\ge\geqslant
  \let\leq\leqslant
  \let\geq\geqslant
}
% tcolorbox 设置
\tcbuselibrary { skins, breakable }
\ExplSyntaxOff
\colorlet{inline}{black}
\lstdefinestyle{style@python}{
  language     = python,
  basewidth    = 0.54em,
  keywordstyle = \bfseries\color{keyword},
  commentstyle = \itshape\color{comment},
  emphstyle    = [1]\itshape\color{emph1},
  emphstyle    = [2]\color{emph2},
  stringstyle  = \color{string}
}
\lstdefinestyle{style@shell}{
  language     = bash,
  alsoletter   = {-},
  basewidth    = 0.54em,
  keywordstyle = \bfseries,
  commentstyle = \itshape,
  emphstyle    = [1]\itshape,
  emphstyle    = [2]
}
% \lstdefinestyle{style@shell}{
%   language     = bash,
%   alsoletter   = {-},
%   basewidth    = 0.54em,
%   keywordstyle = \bfseries\color{keyword},
%   commentstyle = \itshape\color{comment},
%   emphstyle    = [1]\itshape\color{emph1},
%   emphstyle    = [2]\color{emph2}
% }
\lstdefinestyle{style@inline}{
  basicstyle   = \ttfamily\color{inline},
  keepspaces   = true
}
\lstnewenvironment{pycode}[1][]{\lstset{
  style        = style@python,
  basicstyle   = \footnotesize\ttfamily,
  gobble       = 2,#1}}{}
\lstnewenvironment{shcode}[1][]{\lstset{
  style        = style@shell,
  basicstyle   = \footnotesize\ttfamily,
  gobble       = 2,#1}}{}
\def\shellcmd{\lstinline[style=style@inline]}
\tcbset{
  breakable,
  enhanced,
  boxrule = .3mm,
  colframe = KeyColor,
  colback  = KeyColor!5,
  attach boxed title to top left={xshift=-2mm,yshift=-2mm},
  boxed title style = {size=small, colback=KeyColor, frame hidden},
  before lower = \textit{Hint:~},
  collower = KeyColor!70
}
\ExplSyntaxOn
% 章节标题设置
\ctexset{
  section/format = \centering\sffamily\Large\bfseries\color{KeyColor!70!black},
  subsection/format = \centering\sffamily\large\bfseries,
  subsubsection/format = \centering\normalsize\sffamily
}
\setlength{\parskip}{10pt \@plus 10pt}
% 列表设置
\setlist{noitemsep}
% 图表注解设置
\captionsetup{
  font          = small,
  labelfont     = bf,
  labelsep      = quad,
  justification = centering
}
% documentation 和 implementation 环境
\bool_new:N \g__codedoc_typeset_problem_bool
\bool_new:N \g__codedoc_typeset_documentation_bool
\bool_new:N \g__codedoc_typeset_implementation_bool
\bool_gset_true:N \g__codedoc_typeset_problem_bool
\bool_gset_true:N \g__codedoc_typeset_documentation_bool
\bool_gset_true:N \g__codedoc_typeset_implementation_bool
\NewDocumentCommand \EnableProblem { }
  { \bool_gset_true:N \g__codedoc_typeset_problem_bool }
\NewDocumentCommand \EnableDocumentation { }
  { \bool_gset_true:N \g__codedoc_typeset_documentation_bool }
\NewDocumentCommand \EnableImplementation { }
  { \bool_gset_true:N \g__codedoc_typeset_implementation_bool }
\NewDocumentCommand \DisableProblem { }
  { \bool_gset_false:N \g__codedoc_typeset_problem_bool }
\NewDocumentCommand \DisableDocumentation { }
  { \bool_gset_false:N \g__codedoc_typeset_documentation_bool }
\NewDocumentCommand \DisableImplementation { }
  { \bool_gset_false:N \g__codedoc_typeset_implementation_bool }
\NewDocumentEnvironment { problem } { O{1} }
  {
    \bool_if:NTF \g__codedoc_typeset_problem_bool
      { \begin { tcolorbox } [ title = 第\zhnumber{#1}题 ] }
      { \comment }
  }
  {
    \bool_if:NTF \g__codedoc_typeset_problem_bool
      { \end { tcolorbox } }
      { \endcomment }
  }
\NewDocumentEnvironment { documentation } { }
  {
    \bool_if:NTF \g__codedoc_typeset_documentation_bool
      { \bool_set_false:N \l__codedoc_in_implementation_bool }
      { \comment }
  }
  { \bool_if:NF \g__codedoc_typeset_documentation_bool { \endcomment } }
\NewDocumentEnvironment { implementation } { }
  {
    \bool_if:NTF \g__codedoc_typeset_implementation_bool
      { \bool_set_true:N \l__codedoc_in_implementation_bool }
      { \comment }
  }
  { \bool_if:NF \g__codedoc_typeset_implementation_bool { \endcomment } }
% 实现 doc 功能
\tl_new:N \l__ctxdoc_format_tl
\seq_new:N \g__ctxdoc_format_seq
\seq_new:N \g__ctxdoc_star_format_seq
\seq_new:N \g__ctxdoc_slash_format_seq
\seq_gput_right:Nn \g__ctxdoc_format_seq { \MacroFont }
\seq_gput_right:Nn \g__ctxdoc_format_seq { \AltMacroFont }
\cs_set_protected:Npn \MacroFont
  {
    \linespread { 1.1 }
    \small
    \fontseries { \mddefault }
    \fontshape  { \updefault }
    \ttfamily
    \xeCJKVerbAddon
  }
\cs_set_protected:Npn \AltMacroFont
  {
    \linespread { 1.1 }
    \small
    \fontseries { \mddefault }
    \fontshape  { \sldefault }
    \ttfamily
    \xeCJKVerbAddon
  }
\AtBeginDocument{\let\macro@font\MacroFont}
% 重定义 macrocode 环境的实现，逐行处理
\cs_set_protected_nopar:Npn \xmacro@code
  { \__ctxdoc_marco_code:w }
\cs_set_protected_nopar:Npn \sxmacro@code
  {
    \fontspec_print_visible_spaces:
    \xmacro@code
  }
\cs_new_protected_nopar:Npn \__ctxdoc_marco_code:w
  {
    \ifcodeline@index
      \__ctxdoc_marco_every_par:n { \__ctxdoc_code_line_no: }
    \else:
      \__ctxdoc_marco_every_par:n { }
    \fi:
    \exp_args:Nx \__ctxdoc_make_finish_tag:n { \@currenvir }
    \__ctxdoc_verbatim_start:w
  }
\cs_new_protected:Npn \__ctxdoc_marco_every_par:n #1
  {
    \everypar
      {
        \everypar {#1}
        \if@inlabel
          \global \@inlabelfalse
          \@noparlistfalse
          \unless \ifvoid \CTEX@labelbox
            \llap { \box \CTEX@labelbox \hskip \leftskip }
          \fi
        \fi
        #1
      }
  }
\ctex_patch_cmd:Nnn \macro@code
  { \if@inlabel \leavevmode \fi }
  {
    \partopsep \z@skip
    \if@inlabel \setbox \CTEX@labelbox \copy \@labels \fi
  }
\newbox \CTEX@labelbox
\group_begin:
  \int_set:Nn \tex_endlinechar:D { -1 }
  \use:n
    {
      \char_set_catcode_active:n { 32 }
      \tl_const:Nn \c__ctxdoc_active_space_tl
    }
    { }
\group_end:
\group_begin:
  \char_set_catcode_active:n { 13 }
  \cs_new_protected:Npx \__ctxdoc_make_finish_tag:n #1
    {
      \tl_set:Nn \exp_not:N \l__ctxdoc_verbatim_finish_tl
        {
          \c_percent_str
          \prg_replicate:nn { 4 }
            { \exp_not:o { \c__ctxdoc_active_space_tl } }
          \exp_not:o { \active@escape@char } end
          \c_left_brace_str #1 \c_right_brace_str
          \exp_not:N ^^M
        }
    }
  \cs_new_protected:Npn \__ctxdoc_verbatim_start:w #1
    {
      \str_if_eq:nnTF {#1} { ^^M }
        { \__ctxdoc_verbatim_read_line:w }
        { \__ctxdoc_verbatim_read_line:w #1 }
    }
  \cs_new_protected:Npn \__ctxdoc_verbatim_read_line:w #1 ^^M
    {
      \tl_set:Nn \l__ctxdoc_verbatim_line_tl { #1 ^^M }
      \tl_if_eq:NNTF \l__ctxdoc_verbatim_line_tl \l__ctxdoc_verbatim_finish_tl
        { \exp_args:Nx \end { \@currenvir } }
        {
          \__ctxdoc_verbatim_process_line:
          \__ctxdoc_verbatim_read_line:w
        }
    }
  \cs_new_protected:Npn \__ctxdoc_swap_cr:
    { \exp_after:wN \__ctxdoc_swap_cr:w \l__ctxdoc_verbatim_line_tl }
  \cs_new_protected:Npn \__ctxdoc_swap_cr:w #1 ^^M
    {
      \group_insert_after:N ^^M
      \tl_set:Nn \l__ctxdoc_verbatim_line_tl {#1}
    }
  \tl_const:Nn \c__ctxdoc_active_cr_tl { ^^M }
\group_end:
\tl_new:N \l__ctxdoc_verbatim_line_tl
\tl_new:N \l__ctxdoc_verbatim_finish_tl
\tl_new:N \g__ctxdoc_verbatim_verb_stop_tl
\cs_new_protected:Npn \__pydoc_check_comment:nnnTF #1#2#3
  {
    \bool_lazy_or:nnTF
      { \str_if_eq_p:nn {#1} {#2} }
      { \str_if_eq_p:nn {#1} {#3} }
  }
\cs_generate_variant:Nn \__pydoc_check_comment:nnnTF { VVV }
\cs_generate_variant:Nn \str_head_ignore_spaces:n { V }
\cs_new_protected_nopar:Npn \__ctxdoc_process_normal_line:
  {
    \str_set:Nx \l__pydoc_tmpa_str
      { \str_head_ignore_spaces:V \l__ctxdoc_verbatim_line_tl }
    \__pydoc_check_comment:VVVTF \l__pydoc_tmpa_str \c_percent_str \c_hash_str
      { \__ctxdoc_check_angle:x { \tl_tail:N \l__ctxdoc_verbatim_line_tl } }
      { \__ctxdoc_output_line: }
  }
\cs_new_eq:NN \__ctxdoc_verbatim_process_line: \__ctxdoc_process_normal_line:
\DeclareDocumentCommand \CheckModules { }
  { \cs_set_eq:NN \__ctxdoc_verbatim_process_line: \__ctxdoc_process_normal_line: }
\DeclareDocumentCommand \DontCheckModules { }
  { \cs_set_eq:NN \__ctxdoc_verbatim_process_line: \__ctxdoc_output_line: }
\cs_new_protected:Npn \__ctxdoc_check_angle:n #1
  {
    \str_if_eq:eeTF { \str_head:n {#1} } { < }
      { \__ctxdoc_check_module:x { \tl_tail:n {#1} } }
      { \__ctxdoc_output_percent_line: }
  }
\cs_generate_variant:Nn \__ctxdoc_check_angle:n { x }

\cs_new_protected:Npn \__ctxdoc_check_module:n #1
  {
    \exp_args:Nx \str_case:nnF { \str_head:n {#1} }
      {
        { * } { \__ctxdoc_module_star:w }
        { / } { \__ctxdoc_module_slash:w }
        { @ } { \__ctxdoc_module_at:w }
        { < } { \__ctxdoc_module_verb:w }
      }
      { \__ctxdoc_module_pm:w }
    #1 \q_stop
  }
\cs_generate_variant:Nn \__ctxdoc_check_module:n { x }
\group_begin:
  \char_set_catcode_active:N \>
  \cs_new_protected:Npn \__ctxdoc_module_star:w #1 > #2 \q_stop
    {
      \__ctxdoc_output_module:nn
        { color@star }
        { \__ctxdoc_module_push:n { \__ctxdoc_module_begin:n {#1} } }
      \__ctxdoc_output_line:n {#2}
      \__ctxdoc_star_format:
    }
  \cs_new_protected:Npn \__ctxdoc_module_slash:w #1 > #2 \q_stop
    {
      \__ctxdoc_output_module:nn
        { color@slash }
        { \__ctxdoc_module_pop:n { \__ctxdoc_module_end:n {#1} } }
      \__ctxdoc_output_line:n {#2}
      \__ctxdoc_slash_format:
    }
  \cs_gset_protected:Npn \__ctxdoc_module_pm:w #1 > #2 \q_stop
    {
      \tex_noindent:D
      \hbox_overlap_left:n
        {
          \__ctxdoc_output_module:nn
            { color@star }
            { #1 }
          \skip_horizontal:n { \leftskip + \smallskipamount }
        }
      \group_begin:
        \__ctxdoc_pm_format:
        \__ctxdoc_output_line:n {#2}
      \group_end:
    }
\group_end:
\cs_new_protected_nopar:Npn \__ctxdoc_output_line:
  {
    \tex_noindent:D
    % TODO: modify this to add highlight feature...
    \tl_use:N \l__ctxdoc_verbatim_line_tl
  }
\cs_new_protected:Npn \__ctxdoc_output_line:n #1
  {
    \tl_set:Nn \l__ctxdoc_verbatim_line_tl {#1}
    \tl_if_eq:NNTF \l__ctxdoc_verbatim_line_tl \c__ctxdoc_active_cr_tl
      { \tl_use:N \l__ctxdoc_verbatim_line_tl }
      {
        \str_if_eq:eeTF
          { \str_head:N \l__ctxdoc_verbatim_line_tl }
          { \c_percent_str }
          { \__ctxdoc_output_percent_line: }
          { \__ctxdoc_output_line: }
      }
  }
% for commented lines
\cs_new_protected:Npn \__ctxdoc_output_percent_line:
  {
    \tex_noindent:D
    \group_begin:
      \color { code@gray }
      \__ctxdoc_swap_cr:
      % \str_if_eq:eeTF { \f@shape } { \updefault }
        % { \slshape }
        % { \upshape }
      \itshape
      \__ctxdoc_output_line:
    \group_end:
  }
\cs_new_protected_nopar:Npn \__ctxdoc_module_push:n
  { \exp_args:No \__ctxdoc_module_push_aux:nn { \int_use:N \c@HD@hypercount } }
\cs_new_protected:Npn \__ctxdoc_module_push_aux:nn #1
  {
    \seq_gpush:Nn \g__ctxdoc_module_dest_seq {#1}
    \hypersetup { hidelinks }
    \exp_args:Nx \hdclindex
      { \zref@extractdefault { HD.#1 } { guard@end } { 1 } } { }
  }
\cs_new_protected_nopar:Npn \__ctxdoc_module_pop:n
  {
    \seq_gpop:NNTF \g__ctxdoc_module_dest_seq \l__ctxdoc_tmp_tl
      { \exp_args:No \__ctxdoc_module_pop_aux:nn { \l__ctxdoc_tmp_tl } }
      { \BOOM \use:n }
  }
\cs_new_protected:Npn \__ctxdoc_module_pop_aux:nn #1
  {
    \zref@labelbylist { HD.#1 } { ctxdoc }
    \hypersetup { hidelinks }
    \hdclindex {#1} { }
  }
\seq_new:N \g__ctxdoc_module_dest_seq
\zref@newlist { ctxdoc }
\zref@newprop { guard@end } [ 1 ]
  { \int_eval:n { \c@HD@hypercount - 1 } }
\zref@addprop { ctxdoc } { guard@end }

\cs_new_protected_nopar:Npn \__ctxdoc_star_format:
  {
    \seq_gpush:No \g__ctxdoc_slash_format_seq { \macro@font }
    \seq_gpop:NNF \g__ctxdoc_star_format_seq \l__ctxdoc_format_tl
      { \__ctxdoc_pop_format: }
    \__ctxdoc_select_format:
  }
\cs_new_protected_nopar:Npn \__ctxdoc_slash_format:
  {
    \seq_gpop:NNTF \g__ctxdoc_slash_format_seq \l__ctxdoc_format_tl
      {
        \seq_gpush:No \g__ctxdoc_star_format_seq { \macro@font }
        \__ctxdoc_select_format:
      }
      { \BOOM }
  }
\cs_new_protected_nopar:Npn \__ctxdoc_pm_format:
  {
    \seq_get:NNF \g__ctxdoc_star_format_seq \l__ctxdoc_format_tl
      {
        \__ctxdoc_pop_format:
        \seq_gpush:No \g__ctxdoc_star_format_seq { \l__ctxdoc_format_tl }
      }
    \cs_if_eq:NNF \macro@font \l__ctxdoc_format_tl
      { \l__ctxdoc_format_tl }
  }
\cs_new_protected_nopar:Npn \__ctxdoc_pop_format:
  {
    \seq_gpop_left:NN \g__ctxdoc_format_seq \l__ctxdoc_format_tl
    \seq_gput_right:No \g__ctxdoc_format_seq { \l__ctxdoc_format_tl }
  }
\cs_new_protected_nopar:Npn \__ctxdoc_select_format:
  {
    \cs_if_eq:NNF \macro@font \l__ctxdoc_format_tl
      {
        \cs_gset_eq:NN \macro@font \l__ctxdoc_format_tl
        \macro@font
      }
  }
% 颜色
\definecolor { code@gray   } { gray } { 0.6 }
\colorlet { color@star  } { KeyColor!60 }
\colorlet { color@slash } { KeyColor!60 }
\colorlet { color@pm    } { green }
% 输出模块名
\cs_new_protected:Npn \__ctxdoc_output_module:nn #1#2
  {
    \tex_noindent:D
    \group_begin: \color {#1} \AltMacroFont #2 \group_end:
  }
% 模块起始，也可以用 \c_hash_str
\str_const:Nn \c__pydoc_module_begin_str
  { #~ start~ of~ module~ }
\str_const:Nn \c__pydoc_module_end_str
  { #~ end~ of~ module~ }
\cs_new_protected:Npn \__ctxdoc_module_begin:n
  { \__pydoc_module:nn { begin } }
\cs_new_protected:Npn \__ctxdoc_module_end:n
  { \__pydoc_module:nn { end } }
\cs_new_protected:Npn \__pydoc_module:nn #1#2
  {
    \tl_set:Nn \l__pydoc_tmpa_tl { #2 }
    \clist_map_inline:nn { *, /, (, ) }
      { \tl_remove_once:Nn \l__pydoc_tmpa_tl { ##1 } }
    \tl_replace_all:Nnn \l__pydoc_tmpa_tl { | }
      { \textcolor { code@gray } { | } }
    \str_use:c { c__pydoc_module_ #1 _str }
    \textcolor { code@gray } { \textlangle }
    \l__pydoc_tmpa_tl
    \textcolor { code@gray } { \textrangle }
  }
% 编号
\cs_new_protected_nopar:Npn \__ctxdoc_code_line_no:
  {
    \int_gincr:N \c@CodelineNo
    \hbox_overlap_left:n
      {
        \hbox_to_wd:nn
          { \MacroIndent }
          {
            \HD@target
            \tex_hss:D
            \__ctxdoc_code_line_no_style:
            \theCodelineNo \enspace
          }
        \tex_kern:D \@totalleftmargin
      }
  }
\tl_set:Nn \theCodelineNo { \arabic { CodelineNo } }
\cs_new_protected_nopar:Npn \__ctxdoc_code_line_no_style:
  { \color { code@gray } \normalfont \sffamily \tiny }

\DeclareRobustCommand*{\id}[1]{\gdef\@id{#1}}

\str_const:Nn \c__pydoc_titleprefix_str
  { Computational~ Quantum~ Physics~ Homework~ }
\RenewDocumentCommand { \maketitle } { }
  {
    \thispagestyle{empty}
    \tex_noindent:D
    \begin{tikzpicture}[overlay, xshift=-1in]
      % \shade [top~color = KeyColor!80, bottom~color = white]
      %   (0,0) rectangle (\paperwidth,5cm);
      \node at (.5\paperwidth,.5in) {
        \Huge \rmfamily \bfseries % \sffamily
        \color{KeyColor!80!black}
        \@title
      };
      \draw [thick, KeyColor] (.2\paperwidth,.2in) -- (.8\paperwidth,.2in);
      \node at (.5\paperwidth,-.05in) {
        \Large \sffamily %\bfseries
        \color{black!70}
        \@id\quad \@author\quad \@date
      };
    \end{tikzpicture}
    \vspace*{.5cm}
  }
