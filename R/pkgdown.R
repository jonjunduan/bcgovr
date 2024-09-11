usethis::gh_token_help()
usethis::create_github_token()
gitcreds::gitcreds_set()
usethis::edit_r_environ()
Sys.setenv(GITHUB_PAT = "YOUR_PAT")
Sys.getenv("GITHUB_PAT")


usethis::git_remotes()
git2r::remote_remove("upstream")

git2r::remote_set_url("upstream", "https://github.com/bcgov/bcgovr.git")


# git remote add upstream https://github.com/bcgov/bcgovr
usethis::use_git_remote(
  name = "upstream",
  url = "https://github.com/bcgov/bcgovr.git",
  overwrite = TRUE
)
usethis::use_github_action()

usethis::use_github_pages(branch = "gh-pages", path = "/", cname = NA)

use_pkgdown(config_file = "_pkgdown.yml", destdir = "docs")

use_pkgdown_github_pages()
# Run this once to publish your site regularly
usethis::use_pkgdown_github_pages()
usethis::use_github(remote = "origin")

# If usethis is continuing to cause issues despite trying various configurations, directly handling the GitHub Pages and pkgdown setup manually on GitHub can be a more straightforward solution. You can bypass usethis and manually create the GitHub Pages for your package.

# git checkout --orphan gh-pages
# git rm -rf .
# git commit --allow-empty -m "Initialize gh-pages branch"
# git push origin gh-pages
