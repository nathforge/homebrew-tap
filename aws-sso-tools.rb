# typed: false
# frozen_string_literal: true

# This file is generated automatically. DO NOT EDIT.
class AwsSsoTools < Formula
  desc "QoL improvements for engineers using AWS SSO"
  homepage "https://github.com/nathforge/aws-sso-tools"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nathforge/aws-sso-tools/releases/download/v0.3.0/aws-sso-tools_darwin_arm64.tar.gz"
      sha256 "ee54be1c5e7cc878ae7e4fabb8f1f667ec213856231d7cc932ea13a23a8d0dcb"
    end
    if Hardware::CPU.intel?
      url "https://github.com/nathforge/aws-sso-tools/releases/download/v0.3.0/aws-sso-tools_darwin_amd64.tar.gz"
      sha256 "96a8b69b58dd5d260acbc0da542f30146bd476cbed4cc66d9bfeb8211fd7f7d1"
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
