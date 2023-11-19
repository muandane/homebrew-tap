# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cloudcost < Formula
  desc ""
  homepage "https://github.com/muandane/homebrew-tap"
  version "0.0.2"

  on_macos do
    url "https://github.com/muandane/cloudcost/releases/download/v0.0.2/cloudcost_0.0.2_Darwin_all.tar.gz"
    sha256 "df8b4d0d572a82e8fe6f7399dde5c304a434c99e2808f264fe2c22ae170b83bc"

    def install
      bin.install "cloudcost"
      bash_completion.install "completions/cloudcost.bash" => "cloudcost"
      zsh_completion.install "completions/cloudcost.zsh" => "_cloudcost"
      fish_completion.install "completions/cloudcost.fish"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/muandane/cloudcost/releases/download/v0.0.2/cloudcost_0.0.2_Linux_arm64.tar.gz"
      sha256 "fd514cc5a6d8d91a8ad7e9ebf6f4754656f2681f5179f040450457b9edcb75cc"

      def install
        bin.install "cloudcost"
        bash_completion.install "completions/cloudcost.bash" => "cloudcost"
        zsh_completion.install "completions/cloudcost.zsh" => "_cloudcost"
        fish_completion.install "completions/cloudcost.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/muandane/cloudcost/releases/download/v0.0.2/cloudcost_0.0.2_Linux_x86_64.tar.gz"
      sha256 "fb8af398e5096b5207e5fd5986782fd66a181a9d0305c213556450c197925a55"

      def install
        bin.install "cloudcost"
        bash_completion.install "completions/cloudcost.bash" => "cloudcost"
        zsh_completion.install "completions/cloudcost.zsh" => "_cloudcost"
        fish_completion.install "completions/cloudcost.fish"
      end
    end
  end
end
