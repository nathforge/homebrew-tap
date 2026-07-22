# typed: false
# frozen_string_literal: true

# This file is generated automatically. DO NOT EDIT.
class AwsSsoTools < Formula
  desc "QoL improvements for engineers using AWS SSO"
  homepage "https://github.com/nathforge/aws-sso-tools"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nathforge/aws-sso-tools/releases/download/v0.5.0/aws-sso-tools_darwin_arm64.tar.gz"
      sha256 "b83051ac126985003cd976b994323abb0d43402218f576ea56896a43c616b824"
    end
    if Hardware::CPU.intel?
      url "https://github.com/nathforge/aws-sso-tools/releases/download/v0.5.0/aws-sso-tools_darwin_amd64.tar.gz"
      sha256 "0ba2be478cd95206566df32a2cb84bbe8237a1d27772c654485db81153c5aa4a"
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
