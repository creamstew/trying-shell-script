#! /bin/bash

currentDir=$1
afterDir=$2

if [ ! -d $currentDir ]; then
echo "移動元ディレクトリ[$currentDir]が存在しません。"
exit
fi

if [ ! -d $afterDir ]; then
echo "移動先ディレクトリ[$afterDir]が存在しません。"
exit
fi

cd $currentDir

mv ".*\.(png|jpg|jpeg|tif|tiff|bmp)" $2

# for fName in `find -E . -type f -iregex ".*\.(png|jpg|jpeg|tif|tiff|bmp)"`