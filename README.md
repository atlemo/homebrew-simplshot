# homebrew-simplshot

Homebrew tap for installing SimplShot as a macOS app cask.

## Install
1. Tap the repository:
   - `brew tap atlemo/simplshot`
2. Install SimplShot:
   - `brew install --cask simplshot`

## Repository Layout
- `Casks/simplshot.rb` Homebrew cask definition
- `scripts/update-cask.sh` helper to download a release ZIP and update the cask checksum

## Publish
1. Create a GitHub repository named `homebrew-simplshot`.
2. Copy the contents of this folder into that repository root.
3. Push to GitHub under `atlemo/homebrew-simplshot`.
4. Test locally:
   - `brew tap atlemo/simplshot https://github.com/atlemo/homebrew-simplshot`
   - `brew install --cask simplshot`

## Updating SimplShot
1. Upload the new release ZIP to `https://atle.co/simplshot/`.
2. Run:
   - `./scripts/update-cask.sh <version>`
3. Review the change:
   - `brew style --display-cop-names Casks/simplshot.rb`
   - `git diff -- Casks/simplshot.rb`
4. Commit and push the tap repository changes.

## Release Checklist
- Build and notarize the new `SimplShot.app` release.
- Upload `SimplShot-<version>.zip` to `https://atle.co/simplshot/`.
- Confirm the ZIP downloads correctly.
- Run `./scripts/update-cask.sh <version>`.
- Test with `brew tap atlemo/simplshot https://github.com/atlemo/homebrew-simplshot`.
- Test with `brew install --cask simplshot`.
- Commit and push the tap update.
