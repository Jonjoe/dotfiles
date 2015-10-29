VERSION="0.6.4"

mkdir $@
cd $@
wget https://ghost.org/zip/ghost-$VERSION.zip
unzip ghost-$VERSION.zip
rm -rf ghost-$VERSION.zip

npm install --production
npm start
