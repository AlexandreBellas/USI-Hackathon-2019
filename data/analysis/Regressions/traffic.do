
    
cd "/Users/abramo/Repos/USI-Hackathon-2019/data/analysis/Regressions/"
use traffic, clear
set more off
gen con = 1

global SORT   = ""
global NAME   = "traffic"
global OUTREG = "outreg2 using $NAME.txt, asterisk(coef) r2 tstat nonotes dec(2) sortvar( $SORT )"
        

ivreg2  traffic Italy Switzerland , cluster(  )
$OUTREG replace addtext(  "Ses Clustered By", "-" )


ivreg2  traffic Italy Switzerland temp prec hotel_guests parkings , cluster(  )
$OUTREG append addtext(  "Ses Clustered By", "-" )


exit, STATA clear 
