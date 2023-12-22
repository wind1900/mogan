<TeXmacs|2.1.2>

<style|<tuple|tmdoc|devel|british>>

<\body>
  <tmdoc-title|Improvements on UI>

  <section|Tasks>

  <tabular|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|17|20|2|2|cell-background|pastel
  green>|<cwith|23|31|2|2|cell-background|pastel
  green>|<cwith|16|16|2|2|cell-background|pastel
  green>|<cwith|10|10|2|2|cell-background|pastel
  green>|<cwith|6|6|2|2|cell-background|pastel
  green>|<cwith|8|8|2|2|cell-background|pastel
  green>|<cwith|15|15|2|2|cell-background|pastel
  green>|<cwith|14|14|2|2|cell-background|pastel
  green>|<cwith|22|22|2|2|cell-background|pastel
  green>|<cwith|1|3|2|2|cell-background|pastel
  green>|<cwith|7|7|2|2|cell-background|pastel
  green>|<cwith|4|4|2|2|cell-background|pastel
  green>|<table|<row|<cell|Chore>|<cell|71_29>|<cell|v1.2.1>|<cell|<value|da>>|<cell|Disable
  Print buffer and Print page selection by
  default>>|<row|<cell|Chore>|<cell|71_28>|<cell|v1.2.1>|<cell|<value|da>>|<cell|Keep
  macro package name un-translated>>|<row|<cell|Chore>|<cell|71_27>|<cell|v1.2.1>|<cell|<value|da>>|<cell|Fix
  icon for alignment on the focus toolbar>>|<row|<cell|Chore>|<cell|71_26>|<cell|v1.2.1>|<cell|<value|da>>|<cell|Improve
  the menu for recent files>>|<row|<cell|Chore>|<cell|71_25>|<cell|v1.2.1>|<cell|<value|da>>|<cell|Tuning
  the startup command line message>>|<row|<cell|Chore>|<cell|71_24>|<cell|v1.2.1>|<cell|<value|da>>|<cell|Improve
  experimental-preferences-widget>>|<row|<cell|Chore>|<cell|71_23>|<cell|v1.2.1>|<cell|<value|da>>|<cell|Tuning
  the default path of <menu|File|Open>>>|<row|<cell|Chore>|<cell|71_22>|<cell|v1.2.1>|<cell|<value|da>>|<cell|Translate
  the tooltip of the menu entries>>|<row|<cell|Chore>|<cell|71_21>|<cell|>|<cell|<value|da>>|<cell|Search
  in Directory or recent files>>|<row|<cell|Chore>|<cell|71_20>|<cell|v1.2.1>|<cell|<value|da>>|<cell|Do
  not use native file dialog on macOS and translate label
  text>>|<row|<cell|Chore>|<cell|71_19>|<cell|>|<cell|Darcy>|<cell|Better
  icons and tooltip for preferences and render options of
  tag>>|<row|<cell|Chore>|<cell|71_18>|<cell|>|<cell|<value|da>>|<cell|Better
  icons for content tags in the mode tool
  bar>>|<row|<cell|Chore>|<cell|71_17>|<cell|>|<cell|<value|da>>|<cell|Append
  host for buffer names in the Go menu>>|<row|<cell|Chore>|<cell|71_16>|<cell|v1.2.1>|<cell|<value|da>>|<cell|Translate
  the dialog via <scm|notify-now>>>|<row|<cell|Chore>|<cell|71_15>|<cell|v1.2.1>|<cell|<value|da>>|<cell|Prompt
  when saving to the read only file>>|<row|<cell|Chore>|<cell|71_14>|<cell|v1.2.1>|<cell|<value|da>>|<cell|Append
  host for remote files in menu entries>>|<row|<cell|Chore>|<cell|71_13>|<cell|v1.2.1>|<cell|<value|da>>|<cell|Use
  TeXmacs instead of Texmacs in the style
  menu>>|<row|<cell|Chore>|<cell|71_12>|<cell|v1.2.0>|<cell|<value|da>>|<cell|Prevent
  debug options from being translated in Debug
  menu>>|<row|<cell|Chore>|<cell|71_11>|<cell|v1.2.0>|<cell|<value|da>>|<cell|Use
  macOS instead Mac OS>>|<row|<cell|Chore>|<cell|71_10>|<cell|v1.2.0>|<cell|<value|da>>|<cell|Translate
  cancel in user-confirm dialogue>>|<row|<cell|>|<cell|>|<cell|v1.2.1>|<cell|<value|da>>|<cell|>>|<row|<cell|Chore>|<cell|71_9>|<cell|v1.2.1>|<cell|<value|da>>|<cell|adjust
  the window size at startup on Windows>>|<row|<cell|Chore>|<cell|71_8>|<cell|v1.2.0>|<cell|<value|da>>|<cell|Prevent
  beamer theme names from being translated>>|<row|<cell|Chore>|<cell|71_7>|<cell|v1.2.0>|<cell|<value|da>>|<cell|better
  Shortcuts tips for copy/paste/cut on Windows>>|<row|<cell|Chore>|<cell|71_6>|<cell|v1.2.0>|<cell|<value|da>>|<cell|Display
  sys-chinese as \<#9ED8\>\<#8BA4\>\<#5B57\>\<#4F53\>>>|<row|<cell|>|<cell|>|<cell|v1.2.1>|<cell|<value|da>>|<cell|>>|<row|<cell|Bug>|<cell|<dlink|71_5>>|<cell|v1.2.0>|<cell|<value|da>>|<cell|Failed
  to Insert-\<gtr\>N-th root via menu>>|<row|<cell|Chore>|<cell|71_4>|<cell|v1.2.0>|<cell|<value|da>>|<cell|Show
  shortcuts in the context menu>>|<row|<cell|Chore>|<cell|71_3>|<cell|v1.2.0>|<cell|<value|da>>|<cell|Show
  shortcut for Focus-\<gtr\>Numbered>>|<row|<cell|Chore>|<cell|71_2>|<cell|v1.2.0>|<cell|<value|da>>|<cell|Show
  tooltip for (check (balloon)) icon on focus
  tool>>|<row|<cell|Chore>|<cell|71_1>|<cell|v1.2.0>|<cell|<value|da>>|<cell|Add
  'Copy to' and 'Paste from' into the right click menu>>>>>

  <tmdoc-copyright|2023|Darcy>

  <tmdoc-license|Permission is granted to copy, distribute and/or modify this
  document under the terms of the GNU Free Documentation License, Version 1.1
  or any later version published by the Free Software Foundation; with no
  Invariant Sections, with no Front-Cover Texts, and with no Back-Cover
  Texts. A copy of the license is included in the section entitled "GNU Free
  Documentation License".>
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>