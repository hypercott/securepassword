S3BUCKET="s3://securepassword.net"
FILES="index.html resources.html about.html privacy.html encrypt_file.html"

for FILE in $FILES
do	    
    aws s3 cp $FILE $S3BUCKET --acl public-read --cache-control "max-age=600"
done

DIRS="vendor img"
for DIR in $DIRS
do
    aws s3 cp $DIR $S3BUCKET/$DIR --acl public-read --cache-control "max-age=600" --recursive
done

    
