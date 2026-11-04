# typed: false
# frozen_string_literal: true

# This file is generated automatically. DO NOT EDIT.
class Fsqlite < Formula
  desc "Mount a SQLite database as a read-only filesystem"
  homepage "https://github.com/nathforge/fsqlite"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nathforge/fsqlite/releases/download/v0.1.2/fsqlite_darwin_arm64.tar.gz"
      sha256 "72ad013a5d528b9b43b0d172b41118729b1193f35bfa7c03391a9785d58fb510"
    end
    if Hardware::CPU.intel?
      url "https://github.com/nathforge/fsqlite/releases/download/v0.1.2/fsqlite_darwin_amd64.tar.gz"
      sha256 "5f95063c3a1b62903e34516e8b7466b64968558a7074169058df2869a52a7df0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nathforge/fsqlite/releases/download/v0.1.2/fsqlite_linux_arm64.tar.gz"
      sha256 "65962d8b398db3fcbf3445293b6f5a5ccd027c18a448eb9dbb5add5502697ca1"
    end
    if Hardware::CPU.intel?
      url "https://github.com/nathforge/fsqlite/releases/download/v0.1.2/fsqlite_linux_amd64.tar.gz"
      sha256 "c3fd4794963a995dc64d8d47f2921cc541f961d66e40bb77ed1ea95ebea04ac4"
    end
  end

  def install
    bin.install "fsqlite"
  end

  def caveats
    <<~EOS
      fsqlite needs a FUSE implementation:
        macOS: brew install --cask macfuse
        Linux: install fuse3 from your package manager
    EOS
  end
end
