set -e
sudo apt remove tlauncher -y || echo ''
cd package
debuild -b -uc -us
cd ..
sudo dpkg -i tlauncher_*_amd64.deb
rm tlauncher_*
rm package/debian/debhelper-build-stamp
rm package/debian/tlauncher.substvars
rm -rf package/debian/.debhelper
rm -rf package/debian/tlauncher