# typed: false
# frozen_string_literal: true

# This file is generated automatically. DO NOT EDIT.
class AwsSsoTools < Formula
  desc "QoL improvements for engineers using AWS SSO"
  homepage "https://github.com/nathforge/aws-sso-tools"
  version "0.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nathforge/aws-sso-tools/releases/download/v0.7.0/aws-sso-tools_darwin_arm64.tar.gz"
      sha256 "9633405b6942178e39db6f3d5cfc9beeb9022da5f5c8c94335f1b01a868bd5f3"
    end
    if Hardware::CPU.intel?
      url "https://github.com/nathforge/aws-sso-tools/releases/download/v0.7.0/aws-sso-tools_darwin_amd64.tar.gz"
      sha256 "e0a5ac2af5666beed98a2d96b8506e1f819cec9f7ca8cdca7ea5cac70a281ec8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nathforge/aws-sso-tools/releases/download/v0.7.0/aws-sso-tools_linux_arm64.tar.gz"
      sha256 "ccb5267f16c537ce67c053e3e8341b169a043ddddf285dc7e6f1708b46b0f083"
    end
    if Hardware::CPU.intel?
      url "https://github.com/nathforge/aws-sso-tools/releases/download/v0.7.0/aws-sso-tools_linux_amd64.tar.gz"
      sha256 "f81713f3aef689ab752a50cd39893234f3fa91219c734e36a3d97404a68f7af6"
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
