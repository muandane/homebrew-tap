# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Goji < Formula
  desc ""
  homepage "https://github.com/muandane/homebrew-tap"
  version "0.1.1"

  depends_on "git"

  on_macos do
    url "https://github.com/muandane/goji/releases/download/v0.1.1/goji_v0.1.1_Darwin_all.tar.gz"
    sha256 "6a00edac29982686fcc59e917ac4d7c9ea10c27e37a3994a1422c00c0c64de6c"

    def install
      bin.install "goji"
      bash_completion.install "completions/goji.bash" => "goji"
      zsh_completion.install "completions/goji.zsh" => "_goji"
      fish_completion.install "completions/goji.fish"
      man1.install "manpages/goji.1.gz"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/muandane/goji/releases/download/v0.1.1/goji_v0.1.1_Linux_x86_64.tar.gz"
        sha256 "555b757e6578bfe3431326d0162ac2620c9675fe62b58c207523b4acb5688652"

        def install
          bin.install "goji"
          bash_completion.install "completions/goji.bash" => "goji"
          zsh_completion.install "completions/goji.zsh" => "_goji"
          fish_completion.install "completions/goji.fish"
          man1.install "manpages/goji.1.gz"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/muandane/goji/releases/download/v0.1.1/goji_v0.1.1_Linux_arm64.tar.gz"
        sha256 "bc8e073f4b42233515db5021ee7e5bc6b36776cc838e6faf4926d3c70281dc67"

        def install
          bin.install "goji"
          bash_completion.install "completions/goji.bash" => "goji"
          zsh_completion.install "completions/goji.zsh" => "_goji"
          fish_completion.install "completions/goji.fish"
          man1.install "manpages/goji.1.gz"
        end
      end
    end
  end
end
