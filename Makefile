test:
	@node node_modules/lab/bin/lab -v -m 8000 test/unit test/acceptance
test-cov:
	@node node_modules/lab/bin/lab -r lcov test/unit test/acceptance
test-e2e:
	@node node_modules/protractor/bin/protractor protractor.conf.js
test-e2e-d:
	@node node_modules/protractor/bin/protractor debug protractor.conf.js

.PHONY: test test-cov test-e2e test-e2e-d
