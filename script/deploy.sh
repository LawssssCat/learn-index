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

THEME_GITHUB_BRANCH=${THEME_GITHUB_BRANCH-"learn-index"}

SITE_DIR=${SITE_DIR-"_site"}

_config=${_config-"_config.yml"}

# _baseurl=${_baseurl-""}

_opt_dry_run=false
_opt_clean=true
_opt_bundle_path=""
_opt_port=""

help() {
  echo "Build, test and then deploy the site"
  echo
  echo "Usage:"
  echo
  echo "   bash ./tools/deploy.sh [options]"
  echo
  echo "Options:"
  echo '     --bundle-path   "path"    Specify bundle path for cache file(s) #see .github/workflows/jekyll-build-deploy.yml'
  echo "     --no-clean                no delete the temp file and redownload theme src from github"
  echo "     --dry-run                Build site and run"
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
  ls -l $TMP_DIR
}

init() {
  if [[ -f $_config ]]; then
    cat $_config >> $TMP_DIR/_config.yml
  fi
  cp docs $TMP_DIR/Docs -r
  # _baseurl="$(grep '^baseurl:' $TMP_DIR/_config.yml | tail -1 | sed "s/.*: *//;s/['\"]//g;s/#.*//")"
}

build() {
  # cache
  if [[ -n $_opt_bundle_path ]]; then
    echo set bundle config path $_opt_bundle_path
    bundle config --local path $_opt_bundle_path 
  fi
  bundle config --local Gemfile $TMP_DIR/Gemfile
  # install
  echo install dependencies
  bundle install
  # build
  echo build
  bundle exec jekyll build -s "$TMP_DIR" -d "$SITE_DIR" --config "$TMP_DIR/$_config" 
}

run() {
  # run
  run_cmd="bundle exec jekyll server -s "$TMP_DIR" -d "$SITE_DIR" --config "$TMP_DIR/$_config
  if [[ -n $_opt_port ]]; then
    run_cmd=$run_cmd' --port '$_opt_port
  fi
  $run_cmd
}

main() {
  if $_opt_clean; then
    clean
    echo clean ok! 
    download
    echo download ok!
  fi
  init
  echo init ok!
  build
  echo build ok!
  if $_opt_dry_run; then
    # build and run
    run
  fi
}

while (($#)); do
  opt="$1"
  case $opt in 
  --bundle-path)
    _opt_bundle_path=$2
    shift
    shift
    ;;
  --port)
    _opt_port=$2
    shift
    shift
    ;;
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