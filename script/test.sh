change_ruby_src() {
  #列出默认源
  gem sources  
  #移除默认源（国外）
  gem sources --remove https://rubygems.org/  
  #添加科大源
  gem sources -a https://mirrors.ustc.edu.cn/rubygems/  
  #或者添加 ruby-china
  gem sources -a https://gems.ruby-china.com/
  #清空源缓存
  gem sources -c
  #更新源缓存
  gem sources -u
  bundle config 'mirror.https://rubygems.org' 'https://gems.ruby-china.com/'
}

_port=8888

while (($#)); do
  opt="$1"
  case $opt in 
  --just-run)
    ./script/deploy.sh --just-run --port $_port
    echo just-run
    exit 0
    ;;
  --run)
    ./script/deploy.sh --no-clean --dry-run --bundle-path vendor/bundle --port $_port
    exit 0
    ;;
  --clean-run)
    change_ruby_src
    ./script/deploy.sh --dry-run --bundle-path vendor/bundle --port $_port
    exit 0
    ;;
  *) 
    # unknown option
    echo error option '$opt'
    exit 1
    ;;
  esac
done
