# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Goji < Formula
  desc ""
  homepage "https://github.com/muandane/homebrew-tap"
  version "0.0.3"

  depends_on "git"

  on_macos do
    url "https://github.com/muandane/goji/archive/refs/tags/v0.0.3.tar.gz"
    sha256 "57067af1476f9a36099099e4241b5a9bb2e9d3ffc61a0079a312a0f7ab10fce7"

    def install
      bin.install "goji"
      bash_completion.install "completions/goji.bash" => "goji"
      zsh_completion.install "completions/goji.zsh" => "_goji"
      fish_completion.install "completions/goji.fish"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/muandane/goji/releases/download/v0.0.2-rc1/goji_0.0.2-rc1_Linux_arm64.tar.gz"
      sha256 "0e3411768af6defc217bbc2b2b43d3424a69470e9e24d5819f7eff65b4a00e2c"

      def install
        bin.install "goji"
        bash_completion.install "completions/goji.bash" => "goji"
        zsh_completion.install "completions/goji.zsh" => "_goji"
        fish_completion.install "completions/goji.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/muandane/goji/releases/download/v0.0.2-rc1/goji_0.0.2-rc1_Linux_x86_64.tar.gz"
      sha256 "530974d0389c5a962021075201e6ae0f8a0ce66f8a083d44c1f37176ec661288"

      def install
        bin.install "goji"
        bash_completion.install "completions/goji.bash" => "goji"
        zsh_completion.install "completions/goji.zsh" => "_goji"
        fish_completion.install "completions/goji.fish"
      end
    end
  end
end
