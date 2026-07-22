# typed: false
# frozen_string_literal: true

# This file is generated automatically. DO NOT EDIT.
class AwsSsoTools < Formula
  desc "QoL improvements for engineers using AWS SSO"
  homepage "https://github.com/nathforge/aws-sso-tools"
  version "0.2.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nathforge/aws-sso-tools/releases/download/v0.2.2/aws-sso-tools_darwin_arm64.tar.gz"
      sha256 "637228f40f42ca36f70c7ff4ce8afc03a187fc0790e0a2ba1d98a20cf47c585a"
    end
    if Hardware::CPU.intel?
      url "https://github.com/nathforge/aws-sso-tools/releases/download/v0.2.2/aws-sso-tools_darwin_amd64.tar.gz"
      sha256 "e79a4491c65e47bbdb32c49f23d55865f0d54ec302d2e0033e484deae1890936"
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
