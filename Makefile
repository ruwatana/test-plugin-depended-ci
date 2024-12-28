MAKEFILE_DIR = $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
PROJECT_PATH = ${MAKEFILE_DIR}/App/Test.xcodeproj
SCHEME = Test

.PHONY: build-for-testing
build-for-testing:
	xcodebuild build-for-testing \
		-project ${PROJECT_PATH} \
		-scheme ${SCHEME} \
		-sdk iphonesimulator \
		-destination 'platform=iOS Simulator,name=iPhone 16,OS=18.2' \
		-skipPackagePluginValidation

.PHONY: test-without-building
test-without-building:
	xcodebuild test-without-building \
		-project ${PROJECT_PATH} \
		-scheme ${SCHEME} \
		-sdk iphonesimulator \
		-destination 'platform=iOS Simulator,name=iPhone 16,OS=18.2' \
		-resultBundlePath TestResults
