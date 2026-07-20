class Golit < Formula
  desc "Lit SSR in pure Go — server-side render Lit web components into Declarative Shadow DOM"
  homepage "https://github.com/zeroedin/golit"
  license :mit
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zeroedin/golit/releases/download/v#{version}/golit-darwin-arm64.tar.gz"
      sha256 "6c26471d61b1bb980fc5661d50f2dbb4d1902a5493f56d7894a9ea7b8995c97e"

      def install
        bin.install "golit-darwin-arm64" => "golit"
      end
    else
      url "https://github.com/zeroedin/golit/releases/download/v#{version}/golit-darwin-amd64.tar.gz"
      sha256 "2eee8bc94284317f87ec6b4d6a65424d1ee9c6f61c58570fb0564ee75b3852d1"

      def install
        bin.install "golit-darwin-amd64" => "golit"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zeroedin/golit/releases/download/v#{version}/golit-linux-arm64.tar.gz"
      sha256 "a0034f3a33f6817ef1fffbdd81c23faf7b01b77a698a44ae2294b3f1c9086e07"

      def install
        bin.install "golit-linux-arm64" => "golit"
      end
    else
      url "https://github.com/zeroedin/golit/releases/download/v#{version}/golit-linux-amd64.tar.gz"
      sha256 "cc6a472c809988247a58f048d759dd0a486e4973c0bb627dfac542b313792e0e"

      def install
        bin.install "golit-linux-amd64" => "golit"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/golit version")
  end
end
