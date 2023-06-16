while getopts p:t: opt 
do
  case $opt in
    p) path="$OPTARG";;
    t) containerName="$OPTARG";;

  esac
done

mvn clean package -DskipTests -f $path

docker build -f Dockerfiledeps --build-arg JAR_FILE=$path/target/*.jar -t $containerName .