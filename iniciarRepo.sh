#!/bin/bash
pwd=$(pwd)
pwd=${pwd##*/}
if [ ! -f "README.md" ]; then
	rm -rf README.md
	touch README.md
	echo $pwd >> README.md
fi
read -r -p 'Ingrese la direccion de github:' ghurl
read -r -p 'Ingrese la direccion de gitlab:' glurl
git init
git add README.md
git commit -m "Commit Initial"
git remote add github $ghurl
git remote add gilab $glurl
git remote add origin $ghurl
git remote set-url --add --push origin $glurl
git remote set-url --add --push origin $ghurl
git push --set-upstream origin master
echo 'Listo Sin Errores'

