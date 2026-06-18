# homebrew-tap

Homebrew tap for [cmd-hanyoung](https://github.com/temeraire97/cmd-hanyoung).

## Install

```bash
brew tap temeraire97/tap
brew trust temeraire97/tap
brew install --cask cmd-hanyoung
```

`brew trust` is required because Homebrew (2026) blocks third-party tap casks until trusted.

## Note — Notarization

This app is not notarized. If macOS blocks the first launch, clear quarantine:

```bash
xattr -dr com.apple.quarantine /Applications/cmd-hanyoung.app
```

or open **System Settings ▸ Privacy & Security ▸ "Open Anyway"**.

---

이 앱은 Apple 공증(notarization)을 거치지 않았습니다. 첫 실행 시 macOS가 차단하면 위 명령어로 격리 속성을 제거하거나, 시스템 설정 ▸ 개인 정보 보호 및 보안 ▸ "그래도 열기"를 사용하세요.
