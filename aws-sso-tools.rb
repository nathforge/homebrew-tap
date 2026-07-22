# typed: false
# frozen_string_literal: true

# This file is generated automatically. DO NOT EDIT.
class AwsSsoTools < Formula
  desc "QoL improvements for engineers using AWS SSO"
  homepage "https://github.com/nathforge/aws-sso-tools"
  version "0.4.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nathforge/aws-sso-tools/releases/download/v0.4.2/aws-sso-tools_darwin_arm64.tar.gz"
      sha256 "aa800c9b94c9bc48ecfba21c832a1e9630524caa0667cafcbf287d4df723057b"
    end
    if Hardware::CPU.intel?
      url "https://github.com/nathforge/aws-sso-tools/releases/download/v0.4.2/aws-sso-tools_darwin_amd64.tar.gz"
      sha256 "5cdb7bce5810443b733540b613562dccbf6b5e87898813b0efe63d37b2279cff"
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
