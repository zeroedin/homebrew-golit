class Golit < Formula
  desc "Lit SSR in pure Go — server-side render Lit web components into Declarative Shadow DOM"
  homepage "https://github.com/zeroedin/golit"
  license :mit
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zeroedin/golit/releases/download/v#{version}/golit-darwin-arm64.tar.gz"
      sha256 "7ccd5d0fa15d5c35f7ddf8150d6f69bad53553e010521d9bbc357e37fd82913f"

      def install
        bin.install "golit-darwin-arm64" => "golit"
      end
    else
      url "https://github.com/zeroedin/golit/releases/download/v#{version}/golit-darwin-amd64.tar.gz"
      sha256 "c230ebd36a3d4bac904ebed9a05755db9ab580ef4c20f06a9fb7f378e75db90d"

      def install
        bin.install "golit-darwin-amd64" => "golit"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zeroedin/golit/releases/download/v#{version}/golit-linux-arm64.tar.gz"
      sha256 "cce18f23c420a3793106184f7983580b474df356da1115452070d28ba8972444"

      def install
        bin.install "golit-linux-arm64" => "golit"
      end
    else
      url "https://github.com/zeroedin/golit/releases/download/v#{version}/golit-linux-amd64.tar.gz"
      sha256 "f43f0630b6faa7eb357f07881087cce2d8c4f1f721d802887a092f28bae6f054"

      def install
        bin.install "golit-linux-amd64" => "golit"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/golit version")
  end
end
