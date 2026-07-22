# typed: false
# frozen_string_literal: true

# This file is generated automatically. DO NOT EDIT.
class AwsSsoTools < Formula
  desc "QoL improvements for engineers using AWS SSO"
  homepage "https://github.com/nathforge/aws-sso-tools"
  version "0.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nathforge/aws-sso-tools/releases/download/v0.6.0/aws-sso-tools_darwin_arm64.tar.gz"
      sha256 "38af451da2b31228ba45cb4c9f969e136931c41ae91d85a7186a2db89fd42966"
    end
    if Hardware::CPU.intel?
      url "https://github.com/nathforge/aws-sso-tools/releases/download/v0.6.0/aws-sso-tools_darwin_amd64.tar.gz"
      sha256 "a2153404504daba4eca859581e1538d84034c82e51e62b3dd56d5cdcd5dcd85e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nathforge/aws-sso-tools/releases/download/v0.6.0/aws-sso-tools_linux_arm64.tar.gz"
      sha256 "6204f9d3d5d9dec5e722763486d5af80161a966d5b95b6cb8aff9e1e9d1d1389"
    end
    if Hardware::CPU.intel?
      url "https://github.com/nathforge/aws-sso-tools/releases/download/v0.6.0/aws-sso-tools_linux_amd64.tar.gz"
      sha256 "56974e8c871e25b625dd2309b95d981687504cc95c20ecb3ab579817b2ed2487"
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
