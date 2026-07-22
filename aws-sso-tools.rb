# typed: false
# frozen_string_literal: true

# This file is generated automatically. DO NOT EDIT.
class AwsSsoTools < Formula
  desc "QoL improvements for engineers using AWS SSO"
  homepage "https://github.com/nathforge/aws-sso-tools"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nathforge/aws-sso-tools/releases/download/v0.4.0/aws-sso-tools_darwin_arm64.tar.gz"
      sha256 "df827ef8d2ec8770cb2ea2d3b8d3dcf9463e98a802341e8c3ebd70fc413cddae"
    end
    if Hardware::CPU.intel?
      url "https://github.com/nathforge/aws-sso-tools/releases/download/v0.4.0/aws-sso-tools_darwin_amd64.tar.gz"
      sha256 "cf52a67d2e411b91e09cfcf584ee426c4b2f370145cf8d77f85604d8a13a399b"
    end
  end

  def install
    bin.install "docker-credential-sso-ecr-login"
    bin.install "aws-sso-should-login"
    bin.install "aws-sso-maybe-login"
    bin.install "aws-sso-login-showing-code"
    bin.install "aws-sso-show-code"
  end
end
