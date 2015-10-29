# Set working variables
WP_URL="http://wordpress.org"
WP_ZIP="latest.zip"

# Plugins Array
PLUGINS[0]="https://downloads.wordpress.org/plugin/custom-post-type-ui.0.8.5.zip"
PLUGINS[1]="https://downloads.wordpress.org/plugin/advanced-custom-fields.zip"
PLUGINS[2]="https://downloads.wordpress.org/plugin/timber-library.0.21.8.zip"
PLUGINS[3]="http://downloads.indee.io/jsCore.zip"
PLUGINS[4]="http://downloads.indee.io/jsUltimate.zip"
PLUGINS[5]="http://downloads.indee.io/jsTables.zip"
PLUGINS[6]="https://downloads.wordpress.org/plugin/wp-mail-smtp.0.9.5.zip"
PLUGINS[7]="https://downloads.wordpress.org/plugin/reorder-post-within-categories.1.1.6.zip"
PLUGINS[8]="https://downloads.wordpress.org/plugin/formidable.2.0.11.zip"

# Get Wordpress
echo "------ Get Wordpress -----"
wget http://wordpress.org/latest.zip
echo "------ Unzip Wordpress -----"
unzip latest.zip
echo "------ Delete Zipfile -----"
rm -rf latest.zip
echo "------ Rename Wordpress to $@ -----"
mv wordpress $1

# Clean wordpress from all the default templates files
echo "------ Clean Wordpress -----"
rm -rf ./$1/wp-content/themes/tw*
rm -rf ./$1/wp-content/plugins/hello.php
rm -rf ./$1/wp-content/plugins/akismet/
cd ./$1/wp-content/plugins

# Loop though plugins array:
#    - Download the zipfiles
#    - Get the file names
#    - Unzip the files
#    - Delete the zip files
echo "------ Get Wordpress Plugins -----"
for PLUGIN in "${PLUGINS[@]}"; do
  wget $PLUGIN
  ZIP=${PLUGIN##*/}
  unzip $ZIP
  rm -rf $ZIP
done

cd ../themes
git clone git@github.com:WeAreIndee/wordpress-gulp-theme.git $1
cd $1
sh init.sh
