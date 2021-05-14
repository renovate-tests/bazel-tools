load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def golangci_lint_dependencies():
    http_archive(
        name = "golangci-lint-linux-amd64",
        urls = ["https://github.com/golangci/golangci-lint/releases/download/v1.38.0/golangci-lint-1.38.0-linux-amd64.tar.gz"],
        sha256 = "97be8342ac9870bee003904bd8de25c0f3169c6b6238a013d6d6862efa5af992",
        build_file = "@com_github_danmx_bazel_tools//golangci-lint:golangci-lint.BUILD",
        strip_prefix = "golangci-lint-1.38.0-linux-amd64",
    )
    http_archive(
        name = "golangci-lint-darwin-amd64",
        urls = ["https://github.com/golangci/golangci-lint/releases/download/v1.38.0/golangci-lint-1.38.0-darwin-amd64.tar.gz"],
        sha256 = "a9b5eb572ce55ae900a3935640fa5e199729e784a6f058e8077a9a2126e00857",
        build_file = "@com_github_danmx_bazel_tools//golangci-lint:golangci-lint.BUILD",
        strip_prefix = "golangci-lint-1.38.0-darwin-amd64",
    )
    http_archive(
        name = "golangci-lint-windows-amd64",
        urls = ["https://github.com/golangci/golangci-lint/releases/download/v1.40.1/golangci-lint-1.40.1-windows-amd64.zip"],
        sha256 = "0dd4397b714a4c19a4a72cfd814f42789eeb7ba90dccd65bce47738231c15898",
        build_file = "@com_github_danmx_bazel_tools//golangci-lint:golangci-lint_windows.BUILD",
        strip_prefix = "golangci-lint-1.40.1-windows-amd64",
    )
