aws s3 cp --recursive --acl public-read ./www s3://arn:aws:s3:us-east-1:844951663216:accesspoint/udigram
aws s3 cp --acl public-read --cache-control="max-age=0, no-cache, no-store, must-revalidate" ./www/index.html s3://arn:aws:s3:us-east-1:844951663216:accesspoint/udigram