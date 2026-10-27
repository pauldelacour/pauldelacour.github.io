# Publish without losing the current site

This project is prepared for the **same eventual address**: `https://pauldelacour.github.io/`. It has **not** changed your GitHub account or deployed anything.

## 1. Test separately

Create a new repository with a temporary name, for example `academic-site-next`, and push the contents of this folder. In the temporary repository, preview locally (recommended), or adjust `_config.yml` for its project URL:

```yaml
url: "https://pauldelacour.github.io"
baseurl: "/academic-site-next"
```

After setting Settings → Pages → Build and deployment → Source: **GitHub Actions**, Actions will build it at a project URL. The provided layouts use `relative_url` for internal URLs and assets, so a temporary baseurl works. When testing completes, restore `baseurl: ""`.

## 2. Preserve binaries and existing links

Before switching, run `scripts/import_old_assets.sh` (see README), commit the resulting `images/` and `files/` folders, and verify all publications and media. Some older publication permalinks are preserved via redirects; `/publications/`, `/talks/`, `/teaching/`, `/cv/`, and `/` remain stable.

## 3. Cut over to the existing user-site address

GitHub serves the **user site** from the repository **named exactly** `pauldelacour.github.io` under the `pauldelacour` account. You cannot publish a second repository at the same user-site hostname at the same time without changing which repository has that reserved name.

Safe option A (recommended): keep the existing repo and its history, create a backup branch, then **replace the main branch contents** with the new project. Verify `_config.yml` has `url: "https://pauldelacour.github.io"` and `baseurl: ""`. Configure Settings → Pages → Source: **GitHub Actions**. Push to `main` and inspect the Actions log.

Option B: rename/archive the existing repository first, then rename the *new* repository to `pauldelacour.github.io`; check Actions/Pages settings and redeploy. This may briefly interrupt availability. Do not delete the old repository until you have a full backup and the new site and download links work.

**Do not create a CNAME file** for `pauldelacour.github.io`; GitHub provides that domain automatically for the account's special user-site repository.

## 4. Validate

- Check the GitHub Actions workflow finishes successfully.
- Check the `selected=true` papers are the only papers on the homepage.
- Check all papers appear at `/publications/` and each detail page resolves.
- Check the author photo, two phase illustrations, videos, figures and PDFs.
- Check old bookmarked paper URLs redirect correctly.
- Check navbar and sidebar on phone and desktop.

## Expected limitations

The ZIP includes full **source code** and publication/talk/teaching content, but **not** binary assets from the old repository. A real Jekyll build could not be run in the file-generation environment because Jekyll gems were not installed; the GitHub Actions workflow is configured to install them on deployment. If a build fails, start with the first error line in the Actions log.
