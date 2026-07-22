# typed: false
# frozen_string_literal: true

# This file is generated automatically. DO NOT EDIT.
class AwsSsoTools < Formula
  desc "QoL improvements for engineers using AWS SSO"
  homepage "https://github.com/nathforge/aws-sso-tools"
  version "0.4.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nathforge/aws-sso-tools/releases/download/v0.4.3/aws-sso-tools_darwin_arm64.tar.gz"
      sha256 "9ad14f86eaf35fe11c9cdb78e544b5a2440abf3ac81ce1614aa0407fc8fc80f9"
    end
    if Hardware::CPU.intel?
      url "https://github.com/nathforge/aws-sso-tools/releases/download/v0.4.3/aws-sso-tools_darwin_amd64.tar.gz"
      sha256 "6d26d1e67dcd061f23b510d9f0dd6e9bbbf2048da45709bf9415fdee4fa33eca"
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
