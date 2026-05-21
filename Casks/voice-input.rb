cask "voice-input" do
  version "0.1.9"
  sha256 "4f3e0a01953cd658f31a949ea98ec9d3c9b3cf158aaa52f8bfdb70b3d8c2d0cc"

  url "https://github.com/haha1903/voice-input/releases/download/v#{version}/VoiceInput-#{version}.zip"
  name "VoiceInput"
  desc "Offline voice input — hotkey, speak, transcribe locally via WhisperKit"
  homepage "https://github.com/haha1903/voice-input"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "VoiceInput.app"

  zap trash: [
    "~/Library/Application Support/VoiceInput",
    "~/Library/Preferences/me.changhai.VoiceInput.plist",
    "~/Library/Saved Application State/me.changhai.VoiceInput.savedState",
  ]
end
