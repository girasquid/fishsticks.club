BUCKET=s3://fishsticks.club

all:
	git push origin main
	s3cmd mb $(BUCKET)
	s3cmd ws-create $(BUCKET)
	s3cmd put --acl-public --guess-mime-type --recursive * $(BUCKET)