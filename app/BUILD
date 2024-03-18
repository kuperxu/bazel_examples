load("@build_bazel_rules_apple//apple:ios.bzl", "ios_application")
load("@build_bazel_rules_apple//apple:resources.bzl", "objc_intent_library", "swift_intent_library")
load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

objc_intent_library(
    name = "SampleIntentObjc",
    src = "@build_bazel_rules_apple//test/testdata/resources:intent.intentdefinition",
)

objc_library(
    name = "objc_lib",
    srcs = ["objc_lib.m"],
    deps = [":SampleIntentObjc"],
)

ios_application(
    name = "app_objc",
    bundle_id = "my.bundle.id",
    families = ["iphone", "ipad"],
    infoplists = ["Info.plist"],
    minimum_os_version = "16.0",
    deps = [":objc_lib"],
)

swift_intent_library(
    name = "SampleIntentSwift",
    src = "@build_bazel_rules_apple//test/testdata/resources:intent.intentdefinition",
)

swift_library(
    name = "swift_lib",
    srcs = ["swift_lib.swift"],
    deps = [":SampleIntentSwift"],
)

ios_application(
    name = "app_swift",
    bundle_id = "my.bundle.id",
    families = ["iphone", "ipad"],
    infoplists = ["Info.plist"],
    minimum_os_version = "16.0",
    deps = [":swift_lib"],
)
