#!/usr/bin/env bash
#
# Build, test and then deploy the site
#
# Usage: See help information

# -e 如果有任意一个命令返回了非0就退出
# -u 未赋值的变量会认为是错误，并且会向stderr写一个错误
set -eu

TMP_DIR=${TMP_DIR-"tmp"}
RAW_DIR=$PWD

THEME_GITHUB_REPO=${THEME_GITHUB_REPO-"https://github.com/LawssssCat/jekyll-theme-chirpy.git"}
#THEME_GITHUB_REPO="git@github.com:LawssssCat/github-pages-deploy-action.git"

THEME_GITHUB_BRANCH=${THEME_GITHUB_BRANCH-"master"}

SITE_DIR=${SITE_DIR-"_site"}

_config=${_config-"_config.yml"}

_baseurl=${_baseurl-""}

_opt_dry_run=false
_opt_clean=true

help() {
  echo "Build, test and then deploy the site"
  echo
  echo "Usage:"
  echo
  echo "   bash ./tools/deploy.sh [options]"
  echo
  echo "Options:"
  echo '     -c, --config   "<config_a[,config_b[...]]>"    Specify config file(s)'
  echo "     --dry-run                Build site and test, but not deploy"
  echo "     -h, --help               Print this information."
}

clean() {
  # clean up
  if [[ -d $TMP_DIR ]]; then
    rm -rf "$TMP_DIR"
  fi
}

download() {
  git clone  -b $THEME_GITHUB_BRANCH -v $THEME_GITHUB_REPO $TMP_DIR
}

init() {
  if [[ -f $_config ]]; then
    cat $_config >> $TMP_DIR/_config.yml
  fi
  cp docs $TMP_DIR/Docs -r
  _baseurl="$(grep '^baseurl:' $TMP_DIR/_config.yml | sed "s/.*: *//;s/['\"]//g;s/#.*//")"
  cd $TMP_DIR
}

build() {
  # build
  bundle exec jekyll build -d "$SITE_DIR$_baseurl" --config "$_config" 
}

run() {
  # run
  bundle exec jekyll server -d "$SITE_DIR$_baseurl" --config "$_config" 
}

deploy() {
  cd $RAW_DIR
  mv $TMP_DIR/$SITE_DIR $SITE_DIR
}

main() {
  if $_opt_clean; then
    clean
    download
  fi
  init
  build
  echo build ok!
  if $_opt_dry_run; then
    run
    exit 0
  fi
  deploy 
}

while (($#)); do
  opt="$1"
  case $opt in 
  --no-clean)
    _opt_clean=false
    shift
    ;;
  --dry-run)
    # build & test, but not deploy
    _opt_dry_run=true
    shift
    ;;
  -h | --help)
    help
    exit 0
    ;;
  *) 
    # unknown option
    help 
    exit 1
    ;;
  esac
done

main