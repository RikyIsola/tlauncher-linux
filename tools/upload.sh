set -e
cd package
debuild -S
cd ..
dput ppa:isola/tlauncher tlauncher_*_source.changes
rm tlauncher_*