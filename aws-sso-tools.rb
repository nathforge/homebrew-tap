# typed: false
# frozen_string_literal: true

# This file is generated automatically. DO NOT EDIT.
class AwsSsoTools < Formula
  desc "QoL improvements for engineers using AWS SSO"
  homepage "https://github.com/nathforge/aws-sso-tools"
  version "0.6.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nathforge/aws-sso-tools/releases/download/v0.6.1/aws-sso-tools_darwin_arm64.tar.gz"
      sha256 "b00a0e7fca8d7b4078a8cce4066cc35c4de9a1791bec55f2277e49ff23c70a70"
    end
    if Hardware::CPU.intel?
      url "https://github.com/nathforge/aws-sso-tools/releases/download/v0.6.1/aws-sso-tools_darwin_amd64.tar.gz"
      sha256 "19d69056ea82b92d434535687af02eaf2b372e40495f4f6185499faeac5ec332"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nathforge/aws-sso-tools/releases/download/v0.6.1/aws-sso-tools_linux_arm64.tar.gz"
      sha256 "2c3c4ed96dc89fc843be6804c6b320167c20ad4a853766d8a210d7614b84aa13"
    end
    if Hardware::CPU.intel?
      url "https://github.com/nathforge/aws-sso-tools/releases/download/v0.6.1/aws-sso-tools_linux_amd64.tar.gz"
      sha256 "bf14ad67116c0a82b6d7b44a34f7d3e5c74991d5d3f75ecf0cc64de6acc2dc31"
    end
  end

  def install
    bin.install "docker-credential-sso-ecr-login"
    bin.install "aws-sso-should-login"
    bin.install "aws-sso-maybe-login"
    bin.install "aws-sso-login-showing-code"
    bin.install "aws-sso-show-code"
    bin.install "aws-sso-run"
  end
end
