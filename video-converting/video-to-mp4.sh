
echo "Note: The filename of input file need to have no spaces!"

if [ -z "$1" ]
then
  echo "Input file not informed!"
  echo "Inform file name with extension."
  echo "Accepted extensions: .mov, .mp4, .m4a, .3gp, .3g2, .mj2"
  echo "For more informations, see the documentation on: https://www.ffmpeg.org/ffmpeg.html"
  exit 1
fi

# mac OS command
ffmpeg -i $1 -vcodec h264 converted_video.mp4