while getopts p:t: opt 
do
  case $opt in
    p) path="$OPTARG";;
    t) containerName="$OPTARG";;
  esac
done

docker build -f Dockerfilenodeps --build-arg SRC_DIR=$path -t $containerName .