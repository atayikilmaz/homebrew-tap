class Autoblue < Formula
  desc "Automatically turning off Bluetooth when the Mac goes to sleep in macOS"
  homepage "https://github.com/atayikilmaz/AutoBlue"
  url "https://github.com/atayikilmaz/AutoBlue/releases/download/v0.3.0/AutoBlue_V0.3.0.tar"
  sha256 "a0044bde7ed1fc1800e9844d94b1d094c924b22b5ea88fdb8804cf8410aa7fdc"
  license "MIT"

  def install
    bin.install "autoblue"
  end

  test do
    # Verify that the 'autoblue' executable exists
    assert_predicate bin/"autoblue", :exist?
  end

  service do
    run [opt_bin/"autoblue"]
    keep_alive true
  end
end
