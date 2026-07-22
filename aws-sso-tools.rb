# typed: false
# frozen_string_literal: true

# This file is generated automatically. DO NOT EDIT.
class AwsSsoTools < Formula
  desc "QoL improvements for engineers using AWS SSO"
  homepage "https://github.com/nathforge/aws-sso-tools"
  version "0.5.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nathforge/aws-sso-tools/releases/download/v0.5.1/aws-sso-tools_darwin_arm64.tar.gz"
      sha256 "0738dbb3540f9870788b743367e18f8baf1462804d0f05f3fe6db705b66b7d86"
    end
    if Hardware::CPU.intel?
      url "https://github.com/nathforge/aws-sso-tools/releases/download/v0.5.1/aws-sso-tools_darwin_amd64.tar.gz"
      sha256 "54184d12ebbf4b49e7e33922054d3f1d186eb3653819d05de3251a3f7cc5bb0b"
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
