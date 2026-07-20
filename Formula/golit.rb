class Golit < Formula
  desc "Lit SSR in pure Go — server-side render Lit web components into Declarative Shadow DOM"
  homepage "https://github.com/zeroedin/golit"
  license :mit
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zeroedin/golit/releases/download/v#{version}/golit-darwin-arm64.tar.gz"
      sha256 "686569f6727cb9ad8542fcd64833f1c4bec9594cbd1189ad6600efeb33c1fc80"

      def install
        bin.install "golit-darwin-arm64" => "golit"
      end
    else
      url "https://github.com/zeroedin/golit/releases/download/v#{version}/golit-darwin-amd64.tar.gz"
      sha256 "2ce1c922375cbe48567375467874c9e9b16773783a36826d5f7629462c35e99a"

      def install
        bin.install "golit-darwin-amd64" => "golit"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zeroedin/golit/releases/download/v#{version}/golit-linux-arm64.tar.gz"
      sha256 "2a7e4c77fc863b00d00c24571abfc06af1e812b52d2a7e42ac7424d883fa9806"

      def install
        bin.install "golit-linux-arm64" => "golit"
      end
    else
      url "https://github.com/zeroedin/golit/releases/download/v#{version}/golit-linux-amd64.tar.gz"
      sha256 "602574ff7202201335b561cbfb42270485769a49b3f1722858b60e6da64eee71"

      def install
        bin.install "golit-linux-amd64" => "golit"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/golit version")
  end
end
