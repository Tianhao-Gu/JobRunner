.PHONY: test

docker:
	docker build -t kbase/indexrunner .

mock:
	docker build -t mock_app ./test/mock_app

test:
	nosetests -s -x -v --with-coverage --cover-package=. --cover-erase --cover-html --cover-html-dir=./test_coverage --nocapture  --nologcapture .


clean:
	rm -rfv $(LBIN_DIR)
