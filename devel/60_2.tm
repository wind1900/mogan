<TeXmacs|2.1.2>

<style|<tuple|tmdoc|chinese>>

<\body>
  <tmdoc-title|Failed to show maxima help menu>

  <section|Bug metadata>

  <\description>
    <item*|Reporter>Darcy
  </description>

  <section|Description>

  Here is the error message when launch the maxima plugin on Windows 11:

  <\code>
    ;string-append first argument, #f, is boolean but should be a string

    ; \ \ \ (list "maxima_toc.html" "maxima_0.html")

    ; \ \ \ C:\\Users\\darcy\\git\\mogan\\build\\packages\\app.mogan\\data\\progs\\texmacs\\texmacs\\tm-print.scm,
    line 161, position: 0

    ; concat-html-path: (list "maxima_toc.html"...

    ; maxima-help: ((car-or-false (filter url-e...

    ; (list-values 'gui-normalize (list-values ...

    ; ((eval (cadr p)))

    \;

    TeXmacs] Guile error: ((wrong-type-arg "[not-implemented]" "~A ~:D
    argument, ~S, is ~A but should be ~A" (string-append 1 #f "boolean" "a
    string")))
  </code>

  And the mode toolbar becomes empty.

  <tmdoc-copyright|2023|Darcy Shen>

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