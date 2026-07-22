# typed: false
# frozen_string_literal: true

# This file is generated automatically. DO NOT EDIT.
class AwsSsoTools < Formula
  desc "QoL improvements for engineers using AWS SSO"
  homepage "https://github.com/nathforge/aws-sso-tools"
  version "0.2.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nathforge/aws-sso-tools/releases/download/v0.2.3/aws-sso-tools_darwin_arm64.tar.gz"
      sha256 "6c71ed7c84399d0c4cf275d03bf6efefc52da8cfc7dda31c044e412d0a4ad1d6"
    end
    if Hardware::CPU.intel?
      url "https://github.com/nathforge/aws-sso-tools/releases/download/v0.2.3/aws-sso-tools_darwin_amd64.tar.gz"
      sha256 "5348635843274178019260f92467c0932e85b49fe3ad7fed675a57be8b9bf8f8"
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
