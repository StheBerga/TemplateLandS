#' Corporate Design: Title Page
#'
#' Example function to generate a title page
#'
#' @param title Document title
#' @param subtitle Document subtitle
#' @param date Document creation date
#' @return Object of class `"knit_asis"` (so that knitr will treat it as is). LaTeX code for title page.
#' @export
#' @examples
#' cd_page_title(
#'   title = "My Title",
#'   subtitle = "My Subtitle"
#' )
cd_page_title <- function(studytitle = default(rmarkdown::metadata$studytitle, "Study title"),
                          reporttitle = default(rmarkdown::metadata$reporttitle, "Report title"),
                          date = default(rmarkdown::metadata$date, format(Sys.Date(), ("%d-%m-%Y"))),
                          department = default(rmarkdown::metadata$department, "Your Department"),
                          unit = default(rmarkdown::metadata$unit, "Your research Unit"),
                          authorone = default(rmarkdown::metadata$authorone, "First author"),
                          roleone = default(rmarkdown::metadata$roleone, "First author role"), 
                          emailone = default(rmarkdown::metadata$emailone, "name.surname@email.com"),
                          authortwo = default(rmarkdown::metadata$authortwo, "Second author"),
                          roletwo = default(rmarkdown::metadata$roletwo, "Second author role"), 
                          emailtwo = default(rmarkdown::metadata$emailtwo, "name.surname@email.com"),
                          authorthree = default(rmarkdown::metadata$authorthree, "Third author"),
                          rolethree = default(rmarkdown::metadata$rolethree, "Third author role"), 
                          emailthree = default(rmarkdown::metadata$emailthree, "name.surname@email.com"), 
                          authorfour = default(rmarkdown::metadata$authorfour, "Fourth author"),
                          rolefour = default(rmarkdown::metadata$rolefour, "Fourth author role"), 
                          emailfour = default(rmarkdown::metadata$emailfour, "name.surname@email.com"), 
                          tableofcontents = default(rmarkdown::metadata$tableofcontents, "true"),
                          tocname = default(rmarkdown::metadata$tocname, "Table of Contents"), 
                          tocdepth = default(rmarkdown::metadata$tocdepth, "2"),
                          linestretchtable = default(rmarkdown::metadata$linestretchtable, "0.8"),
                          linestretch = default(rmarkdown::metadata$linestretch, "1.5")) {

  logo_path <- indiedown_path_tex("res/logoINT.jpg")

  indiedown_glue("
\\newgeometry{margin=2.5cm}
\\fontsize{12}{14}\\selectfont
\\thispagestyle{empty}
\\begin{center}
  \\begin{figure}[t]
    \\includegraphics[width=1\\columnwidth]{ <<logo_path>> } \\par
  \\end{figure}
  \\vspace*{0.3in}
  {\\large\\textbf{ <<studytitle>> }}\\par
  \\vskip 0.5in
  \\hrule
  \\vskip 0.4in
  {\\huge { <<reporttitle>> }}\\par
  \\vskip 0.4in
  \\hrule
  \\vskip 0.5in
  \\large{
    <<authorone>>\\footnote{<<roleone>>; email: \\url{<<emailone>>}} 
    \\ifthenelse{\\equal{<<authortwo>>}{}}{}{\ \ \ <<authortwo>> \\footnote{<<roletwo>>; email: \\url{<<emailtwo>>}}}
    \\ifthenelse{\\equal{<<authorthree>>}{}}{}{\ \ \ <<authorthree>> \\footnote{<<rolethree>>; email: \\url{<<emailthree>>}}}
    \\ifthenelse{\\equal{<<authorfour>>}{}}{}{\ \ \ <<authorfour>> \\footnote{<<rolefour>>; email: \\url{<<emailfour>>}}}
  }
  \\vskip 0.4in
  <<department>> \\par
  \\vskip 0.4in
  \\textbf{<<unit>>} \\par
  \\vskip 0.8in
  <<date>> \\par
  \\end{center}

\\clearpage

\\newboolean{tocvar}
\\setboolean{tocvar}{<<tableofcontents>>}
\\setcounter{tocdepth}{<<tocdepth>>}
\\renewcommand{\\contentsname}{<<tocname>>}
\\ifthenelse{\\boolean{tocvar}}{
    \\tableofcontents
}{}

\\restoregeometry
\\renewcommand{\\baselinestretch}{<<linestretch>>}\\selectfont
\\renewcommand{\\arraystretch}{<<linestretchtable>>}
")
  
}
