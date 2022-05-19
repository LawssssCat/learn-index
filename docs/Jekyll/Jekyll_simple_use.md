> 官网 jekyll：<https://www.jekyll.com.cn/>

Jekyll是一款静态博客生成器，也是github page支持的后台引擎

### 在 windows 中安装 jekll

1. 首先需要安装 ruby ：

    >ruby 是一个面向对象的脚本语言。
    >
    >（jekyll是用ruby写的，所以第一步需要先安装ruby。）

    安装 RubyGems（ruby gems package manager）：

    >RubyGems 是 Ruby 的一个包管理器，它提供一个分发 Ruby 程序和库的标准格式，还提供一个管理程序包安装的工具。

    ruby 安装包下载地址：<https://rubyinstaller.org/downloads/archives/> （选择最新版即可）

    安装过程中会出现下面对话框

    ```bash
    _____       _           _____           _        _ _         ___
    |  __ \     | |         |_   _|         | |      | | |       |__ \
    | |__) |   _| |__  _   _  | |  _ __  ___| |_ __ _| | | ___ _ __ ) |
    |  _  / | | | '_ \| | | | | | | '_ \/ __| __/ _` | | |/ _ \ '__/ /
    | | \ \ |_| | |_) | |_| |_| |_| | | \__ \ || (_| | | |  __/ | / /_
    |_|  \_\__,_|_.__/ \__, |_____|_| |_|___/\__\__,_|_|_|\___|_||____|
                        __/ |           _
                    |___/          _|_ _  __   | | o __  _| _     _
                                    | (_) |    |^| | | |(_|(_)\^/_>

    1 - MSYS2 base installation
    2 - MSYS2 system update (optional)
    3 - MSYS2 and MINGW development toolchain

    Which components shall be installed? If unsure press ENTER [1,2,3]
    ```

    我们需要按顺序执行三个选项

    > 安装MSYS2 toolchain 时，因为他们的默认源比较慢，需要手动改一下源，再执行ridk install安装即可。
    > 
    > 修改源的位置在 `\Ruby26-x64\msys64\etc\pacman.d\` 中的 `mirrorlist.mingw32` `mirrorlist.mingw64` `mirrorlist.msys` 文件中，装文件中的内容改成下面的样子即可。
    >
    >mirrorlist.msys
    >```bash
    >##
    >
    >## MSYS2 repository mirrorlist
    >
    >##
    >
    >## Primary
    >
    >## msys2.org
    >
    >Server = http://mirrors.ustc.edu.cn/msys2/msys/$arch/
    >
    >Server = https://mirrors.tuna.tsinghua.edu.cn/msys2/msys/$arch/
    >
    >Server = http://mirrors.ustc.edu.cn/msys2/msys/$arch/
    >
    >Server = http://mirror.bit.edu.cn/msys2/msys/$arch/
    >
    >Server = http://mirror.bit.edu.cn/msys2/msys/$arch/
    >
    >Server = http://repo.msys2.org/msys/$arch/
    >
    >Server = https://sourceforge.net/projects/msys2/files/REPOS/MSYS2/$arch/
    >
    >Server = https://www2.futureware.at/~nickoe/msys2-mirror/msys/$arch/
    >
    >Server = https://mirror.yandex.ru/mirrors/msys2/msys/$arch/
    >```
    >mirrorlist.mingw64
    >```bash
    >##
    >
    >## 32-bit Mingw-w64 repository mirrorlist
    >
    >##
    >
    >## Primary
    >
    >## msys2.org
    >
    >Server = http://mirrors.ustc.edu.cn/msys2/mingw/i686/
    >
    >Server = https://mirrors.tuna.tsinghua.edu.cn/msys2/mingw/i686/
    >
    >Server = http://mirrors.ustc.edu.cn/msys2/mingw/i686/
    >
    >Server = http://mirror.bit.edu.cn/msys2/mingw/i686/
    >
    >Server = http://repo.msys2.org/mingw/i686/
    >
    >Server = https://sourceforge.net/projects/msys2/files/REPOS/MINGW/i686/
    >
    >Server = https://www2.futureware.at/~nickoe/msys2-mirror/mingw/i686/
    >
    >Server = https://mirror.yandex.ru/mirrors/msys2/mingw/i686/
    >```
    >mirrorlist.mingw32
    >```bash
    >##
    >
    >## 64-bit Mingw-w64 repository mirrorlist
    >
    >##
    >
    >## Primary
    >
    >## msys2.org
    >
    >Server = http://mirrors.ustc.edu.cn/msys2/mingw/x86_64/
    >
    >Server = https://mirrors.tuna.tsinghua.edu.cn/msys2/mingw/x86_64/
    >
    >Server = http://mirrors.ustc.edu.cn/msys2/mingw/x86_64/
    >
    >Server = http://mirror.bit.edu.cn/msys2/mingw/x86_64/
    >
    >Server = http://repo.msys2.org/mingw/x86_64/
    >
    >Server = https://sourceforge.net/projects/msys2/files/REPOS/MINGW/x86_64/
    >
    >Server = https://www2.futureware.at/~nickoe/msys2-mirror/mingw/x86_64/
    >
    >Server = https://mirror.yandex.ru/mirrors/msys2/mingw/x86_64/
    >```
    >修改源后，执行ridk install 后很快就能安装好了。
    >

    安装完成后，可以看到它们的版本号

    ```bash
    C:\Users\lawsssscat>ruby -v
    ruby 3.1.2p20 (2022-04-12 revision 4491bb740a) [x64-mingw-ucrt]

    C:\Users\lawsssscat>gem -v
    3.3.7
    ```

2. 安装 jekyll

    ```bash
    gem install jekyll bundler 
    ```

    ```bash
    C:\Users\lawsssscat>jekyll -v
    jekyll 4.2.2
    C:\Users\lawsssscat>bundle -v
    Bundler version 2.3.14
    ```


### 创建一个博客

初始化

```bash
jekyll new ga_blog
```

```bash
C:\Users\lawsssscat\Downloads\learn\learn-jekyll>jekyll new ga_blog
Running bundle install in C:/Users/lawsssscat/Downloads/learn/learn-jekyll/ga_blog...
  Bundler: Fetching gem metadata from https://rubygems.org/..........
  Bundler: Resolving dependencies...
  Bundler: Using bundler 2.3.14
  Bundler: Using public_suffix 4.0.7
  Bundler: Using colorator 1.1.0
  Bundler: Using concurrent-ruby 1.1.10
  Bundler: Using eventmachine 1.2.7
  Bundler: Using http_parser.rb 0.8.0
  Bundler: Using ffi 1.15.5 (x64-mingw-ucrt)
  Bundler: Using forwardable-extended 2.6.0
  Bundler: Using rb-fsevent 0.11.1
  Bundler: Using rexml 3.2.5
  Bundler: Using liquid 4.0.3
  Bundler: Using mercenary 0.4.0
  Bundler: Using rouge 3.28.0
  Bundler: Using safe_yaml 1.0.5
  Bundler: Using unicode-display_width 1.8.0
  Bundler: Using addressable 2.8.0
  Bundler: Using i18n 1.10.0
  Bundler: Using terminal-table 2.0.0
  Bundler: Using em-websocket 0.5.3
  Bundler: Using sassc 2.4.0
  Bundler: Using rb-inotify 0.10.1
  Bundler: Using pathutil 0.16.2
  Bundler: Using jekyll-sass-converter 2.2.0
  Bundler: Using kramdown 2.4.0
  Bundler: Using kramdown-parser-gfm 1.1.0
  Bundler: Using listen 3.7.1
  Bundler: Using jekyll-watch 2.2.1
  Bundler: Using jekyll 4.2.2
  Bundler: Fetching jekyll-feed 0.16.0
  Bundler: Fetching jekyll-seo-tag 2.8.0
  Bundler: Installing jekyll-feed 0.16.0
  Bundler: Installing jekyll-seo-tag 2.8.0
  Bundler: Fetching minima 2.5.1
  Bundler: Installing minima 2.5.1
  Bundler: Bundle complete! 7 Gemfile dependencies, 31 gems now installed.
  Bundler: Use `bundle info [gemname]` to see where a bundled gem is installed.
New jekyll site installed in C:/Users/lawsssscat/Downloads/learn/learn-jekyll/ga_blog.
```

>问题：Jekyll 运行的时候提示错误 cannot load such file -- webrick (LoadError)
><http://www.manongjc.com/detail/26-nafjorgurgcyuyr.html>
>```bash
>bundle add webrick
>```

运行

```bash
bundle exec jekyll serve
```


### 可选功能

#### # 评论功能

选择Valine（一款快速、简洁且高效的无后端评论系统）。

第三方评论系统有很多，常见的有以下几个：

+ ~~多说~~
+ ~~网易云跟帖~~
+ ~~畅言~~
+ Disqus
+ 来必力（LiveRe）
+ Valine

首先多说和网易云跟帖已经倒下了，其次畅言需要备案，Disqus和LiveRe都是国外的，加载速度慢。 Valine注册和配置简单，访问速度快。所以选择Valine。

#### #  访问量统计
使用百度统计。

#### #  自定义域名
如果你不愿意使用GitHub Pages的访问地址（例如xxx.github.io），你可以在腾讯云或阿里云上购买自定义域名，并配置域名解析即可。

~~我选择的是腾讯云。~~

参考：[ssl 配置](../Network/ssl_config.md)