FILE_NAME=movie.mov
FRAME=10
QUALITY=60
RESIZE=60%

# 結果ファイル、途中生成ファイルの削除
rm result.gif
rm -rf work

mkdir work
ffmpeg -i $FILE_NAME -an -r $FRAME work/%04d.png  # 10frames/secでpng作成
convert work/*.png -quality $QUALITY -resize $RESIZE work/output_%04d.jpg  # 作成したpngを40%にリサイズ
convert work/output_*.jpg result.gif  #  gifに変換

