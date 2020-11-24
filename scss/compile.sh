echo "/* ------------------------------------------"> neoca/__note.scss
echo " neoca.css">> neoca/__note.scss
echo " https://github.com/tacoen/neocatema">> neoca/__note.scss
date +" Compiled Time Stamp: %D %T" >> neoca/__note.scss
echo " License: MIT ">> neoca/__note.scss
echo " ------------------------------------------ */ ">> neoca/__note.scss

date +"// %D %T" > _configuration.scss

ls -1 configuration/* \
	| sed -e 's/\.scss$/";/' \
	| sed -e 's/^configuration\/_/@import "configuration\//' \
	>> '_configuration.scss'

date +"// %D %T" > neoca/_grav.scss

ls -1 neoca/grav/* \
	| sed -e 's/\.scss$/";/' \
	| sed -e 's/^neoca\/grav\/_/@import "grav\//' \
	>> 'neoca/_grav.scss'

date +"// %D %T" > neoca/_generic.scss

ls -1 neoca/generic/* \
	| sed -e 's/\.scss$/";/' \
	| sed -e 's/^neoca\/generic\/_/@import "generic\//' \
	>> 'neoca/_generic.scss'

date +"// %D %T" > neoca/_function.scss
ls -1 neoca/function/* \
	| sed -e 's/\.scss$/";/' \
	| sed -e 's/^neoca\/function\/_/@import "function\//' \
	>> 'neoca/_function.scss'


date +"// %D %T" > neoca/_component.scss

ls -1 neoca/component/* \
	| sed -e 's/\.scss$/";/' \
	| sed -e 's/^neoca\/component\/_/@import "component\//' \
	>> 'neoca/_component.scss'

date +"// %D %T" > neoca/_element.scss

ls -1 neoca/element/* \
	| sed -e 's/\.scss$/";/' \
	| sed -e 's/^neoca\/element\/_/@import "element\//' \
	>> 'neoca/_element.scss'

date +"// %D %T" > neoca/_combine.scss

ls -1 neoca/combine/* \
	| sed -e 's/\.scss$/";/' \
	| sed -e 's/^neoca\/combine\/_/@import "combine\//' \
	>> 'neoca/_combine.scss'



date +"// %D %T" > neoca/_utilities.scss

ls -1 neoca/utilities/* \
	| sed -e 's/\.scss$/";/' \
	| sed -e 's/^neoca\/utilities\/_/@import "utilities\//' \
	>> 'neoca/_utilities.scss'
	

date +"// %D %T" > _dev.scss

echo " "> _dev.scss
ls -1 dev/* \
	| sed -e 's/\.scss$/";/' \
	| sed -e 's/^dev\/_/@import "dev\//' \
	>> '_dev.scss'	
	
	
	