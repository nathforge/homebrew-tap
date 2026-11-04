# typed: false
# frozen_string_literal: true

# This file is generated automatically. DO NOT EDIT.
class Fsqlite < Formula
  desc "Mount a SQLite database as a read-only filesystem"
  homepage "https://github.com/nathforge/fsqlite"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nathforge/fsqlite/releases/download/v0.1.1/fsqlite_darwin_arm64.tar.gz"
      sha256 "6c78e90c91bf181e49ae21f21e985c86c601b0f2630b3e587b5806996b375951"
    end
    if Hardware::CPU.intel?
      url "https://github.com/nathforge/fsqlite/releases/download/v0.1.1/fsqlite_darwin_amd64.tar.gz"
      sha256 "d2e9a879da78cc789af099ba12eef627080fd33ed0ca2b2cc89ae1ef74868c49"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nathforge/fsqlite/releases/download/v0.1.1/fsqlite_linux_arm64.tar.gz"
      sha256 "0ff8f81ffb07558113f9a8aec929906641b0bdf9ea129d498e78bbeeba633368"
    end
    if Hardware::CPU.intel?
      url "https://github.com/nathforge/fsqlite/releases/download/v0.1.1/fsqlite_linux_amd64.tar.gz"
      sha256 "8cf03d757d8d2853f5fd39d8260cd5b0ae6d6789a4cd2670a853bcbab8abdb22"
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
