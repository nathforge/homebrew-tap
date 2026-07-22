# typed: false
# frozen_string_literal: true

# This file is generated automatically. DO NOT EDIT.
class AwsSsoTools < Formula
  desc "QoL improvements for engineers using AWS SSO"
  homepage "https://github.com/nathforge/aws-sso-tools"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nathforge/aws-sso-tools/releases/download/v0.1.0/aws-sso-tools_darwin_arm64.tar.gz"
      sha256 "ada6876012e27747c713820fc8b3fe11139dd4a2e4b71322b9ab0d8ecb7fb56b"
    end
    if Hardware::CPU.intel?
      url "https://github.com/nathforge/aws-sso-tools/releases/download/v0.1.0/aws-sso-tools_darwin_amd64.tar.gz"
      sha256 "5086ce23bbed36fcda2c0b0eb5424f08b10e4f8a987a1d8975214ee4fae75db2"
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
