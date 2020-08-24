/**
 To see the status of test discovery on Linux consult:
 - https://github.com/apple/swift-package-manager/pull/2174
 - https://forums.swift.org/t/test-discovery-on-linux/26203
 - https://bugs.swift.org/browse/SR-11951
 
 Currently, running tests on Linux require passing `--enable-test-discovery`, so
 we fail hard here.
 */
fatalError("Run tests using `swift test --enable-test-discovery`")
