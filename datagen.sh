#!/bin/bash

letters=(
    А Б В Г Ґ Д Е Є Ж З И І Ї Й К Л М Н О П Р С Т У Ф Х Ц Ч Ш Щ Ь Ю Я
    а б в г ґ д е є ж з и і ї й к л м н о п р с т у ф х ц ч ш щ ь ю я)
    
fonts=(
	DejaVu-Serif-Bold Lato-Black-Italic Symbola DejaVu-Serif-Condensed-Bold
	Trebuchet-MS Georgia Century-Schoolbook-L-Bold FreeSerif-Italic 
	DejaVu-Serif-Condensed-Bold-Italic  Nimbus-Sans-L-Bold-Italic Liberation-Sans 
	Nimbus-Mono-L-Bold Nimbus-Mono-L DejaVu-Sans-Condensed Bookman-DemiItalic 
	Lato-Semibold URW-Palladio-L-Italic Nimbus-Roman-No9-L-Regular-Italic 
	Ubuntu-Light-Italic Lato-Semibold-Italic Nimbus-Sans-L-Bold 
	DejaVu-Serif-Bold-Italic Nimbus-Roman-No9-L-Medium-Italic Georgia-Italic 
	URW-Bookman-L-Light FreeSans Lato-Heavy-Italic Ubuntu-Italic 
	URW-Palladio-L-Roman Times-New-Roman-Bold-Italic FreeMono-Bold 
	Liberation-Sans-Bold FreeSans-Bold Lato-Light-Italic Bookman-Demi 
	DejaVu-Serif-Condensed FreeMono DejaVu-Sans Century-Schoolbook-L-Roman 
	Ubuntu-Condensed Nimbus-Sans-L-Regular-Italic FreeSerif Times-New-Roman-Italic 
	Arial URW-Palladio-L-Bold-Italic Verdana-Italic Ubuntu-Light 
	Liberation-Serif-Italic Ubuntu-Mono-Bold Liberation-Sans-Narrow-Italic 
	Liberation-Sans-Narrow DejaVu-Sans-Condensed-Bold-Oblique Nimbus-Sans-L 
	Ubuntu-Medium Liberation-Serif-Bold DejaVu-Sans-Mono Liberation-Sans-Narrow-Bold-Italic 
	DejaVu-Serif Lato-Thin Ubuntu-Medium-Italic Century-Schoolbook-L-Bold-Italic 
	Nimbus-Sans-L-Regular-Condensed-Italic DejaVu-Sans-Bold Ume-Mincho-S3 Liberation-Serif 
	Liberation-Serif-Bold-Italic Liberation-Sans-Bold-Italic Ume-P-Mincho-S3 
	URW-Gothic-L-Book-Oblique DejaVu-Sans-Condensed-Oblique URW-Gothic-L-Demi 
	Liberation-Sans-Italic Arial-Bold-Italic Courier-BoldOblique DejaVu-Serif-Italic 
	Ubuntu-Bold WenQuanYi-Micro-Hei Ume-Mincho Nimbus-Roman-No9-L-Medium Verdana-Bold-Italic
	Lato-Italic Lato-Bold Verdana Palatino-Italic Liberation-Mono Ubuntu-Bold-Italic 
	Liberation-Mono-Bold-Italic URW-Bookman-L-Demi-Bold Liberation-Mono-Bold 
	Lato-Bold-Italic Andale-Mono Nimbus-Mono-L-Bold-Oblique Lato-Thin-Italic 
	FreeSans-Oblique FreeMono-Bold-Oblique Nimbus-Sans-L-Regular-Condensed 
	Liberation-Mono-Italic DejaVu-Sans-ExtraLight Georgia-Bold Nimbus-Mono-L-Regular-Oblique
	Ubuntu-Mono Times-New-Roman FreeSerif-Bold-Italic Nimbus-Roman-No9-L 
	Trebuchet-MS-Bold-Italic Lato-Medium-Italic FreeSans-Bold-Oblique 
	URW-Bookman-L-Light-Italic Comic-Sans-MS URW-Gothic-L-Demi-Oblique 
	URW-Bookman-L-Demi-Bold-Italic DejaVu-Serif-Condensed-Italic Lato-Regular 
	Arial-Black Lato-Light FreeMono-Oblique DejaVu-Sans-Condensed-Bold 
	Nimbus-Sans-L-Bold-Condensed Lato-Medium DejaVu-Sans-Mono-Bold 
	Courier-Oblique DejaVu-Sans-Oblique Lato-Hairline-Italic FreeSerif-Bold 
	Verdana-Bold Lato-Hairline Trebuchet-MS-Italic Georgia-Bold-Italic 
	Liberation-Sans-Narrow-Bold Times-New-Roman-Bold  Trebuchet-MS-Bold 
	Century-Schoolbook-L-Italic DejaVu-Sans-Bold-Oblique URW-Palladio-L-Bold 
	Lato-Black Ubuntu Impact Comic-Sans-MS-Bold Lato-Heavy Arial-Bold 
	DejaVu-Sans-Mono-Bold-Oblique URW-Gothic-L-Book Courier-New-Bold-Italic 
	Courier-New-Italic Courier-New Ubuntu-Mono-Italic Ubuntu-Mono-Bold-Italic 
	DejaVu-Sans-Mono-Oblique Ume-P-Mincho Arial-Italic Courier-New-Bold)

rot_degr=(-45 -30 -15 0 15 30 45)

len=${#letters[@]}
COUNTER=0

while [ $COUNTER -lt $len ]; do
    for font in ${fonts[@]}; do
    	for degr in ${rot_degr[@]}; do
   	        convert -background black \
   	        		-fill white \
   	        		-gravity center \
   	        		-rotate $degr \
   	        		-resize 28x28! \
   	        		-depth 8 \
   	        		-font $font \
   	        	label:${letters[$COUNTER]} img_good/$COUNTER.$font.$degr.png;
	        echo $COUNTER.$font.$degr.png
	    done
    done
    let COUNTER=COUNTER+1
done