FILE_NAME=movie.mov
WIDTH=320
FRAME=10

# 結果ファイルを削除（初期化）
rm converted.gif

# 実行
ffmpeg -i $FILE_NAME -vf scale=${WIDTH}:-1 -r $FRAME converted.gif

