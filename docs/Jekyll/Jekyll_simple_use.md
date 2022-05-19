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
    ```