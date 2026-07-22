# typed: false
# frozen_string_literal: true

# This file is generated automatically. DO NOT EDIT.
class AwsSsoTools < Formula
  desc "QoL improvements for engineers using AWS SSO"
  homepage "https://github.com/nathforge/aws-sso-tools"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nathforge/aws-sso-tools/releases/download/v0.1.1/aws-sso-tools_darwin_arm64.tar.gz"
      sha256 "0c9b6605af8162ee3333f147d0bed3cf748d1ea649786398266f03879e02961a"
    end
    if Hardware::CPU.intel?
      url "https://github.com/nathforge/aws-sso-tools/releases/download/v0.1.1/aws-sso-tools_darwin_amd64.tar.gz"
      sha256 "22241b0c51a382f9e82eefd6d67a31ef64e227c6ab0c6dff382aafbc673e8f66"
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
