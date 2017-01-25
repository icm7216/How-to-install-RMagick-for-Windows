# How to install rmagick on Windows 10

### 導入対象

*   ImageMagick-6
*   rmagick 2.15.4

# ImageMagick

#### ImageMagick のダウンロードの注意点

*   使用する Ruby の環境 "x64 or x86(32-bit)" に合わせたバイナリを選択。
*   dll 付きのバイナリを選択。
*   rmagick 2.15.4 は最新の ImageMagick 7 に未対応のようなので、ImageMagick 6 をダウンロード。

Ruby x64 の場合:
*   ImageMagick-*-Q*-x64-dll.exe (例： ImageMagick-6.9.5-5-Q16-x64-dll.exe)

Ruby x86(32-bit) の場合:
*   ImageMagick-*-Q*-x86-dll.exe (例： ImageMagick-6.9.5-5-Q16-x86-dll.exe)

#### ImageMagick 6 の最新版をダウンロード
*   [ImageMagick binaries - ImageMagick](http://www.imagemagick.org/download/binaries/)

##### 注意!

通常の [Windows Binary Release - ImageMagick 7](http://www.imagemagick.org/script/binary-releases.php#windows) では rmagick 2.15.4 のインストールに失敗します。




## ImageMagick のインストール

デフォルトのインストールパスを使用します。

確認環境では、以下のフォルダにインストールされました。

```
C:\Program Files (x86)\ImageMagick-6.9.5-Q16
```

#### ImageMagick インストール時の必須オプション

以下の2つを必ず選択すること

*   Add application directory to your system path
*   Install development headers and libraries for C and C++


# RMagick

## RMagick のインストール

```
>git clone https://github.com/icm7216/How-to-install-RMagick-on-Windows.git
>cd How-to-install-RMagick-on-Windows

```

`rake`を実行してRMagickのインストールを開始
```
>rake
:found install path
 => C:\Program Files (x86)\ImageMagick-6.9.5-Q16
gem install rmagick --platform=ruby -- --with-opt-dir="C:\Program Files (x86)\ImageMagick-6.9.5-Q16" --with-opt-lib="C:\Program Files (x86)\ImageMagick-6.9.5-Q16\lib" --with-opt-include="C:\Program Files (x86)\ImageMagick-6.9.5-Q16\include"
Fetching: rmagick-2.15.4.gem (100%)
Temporarily enhancing PATH to include DevKit...
Building native extensions with: '--with-opt-dir=C:\Program Files (x86)\ImageMagick-6.9.5-Q16 --with-opt-lib=C:\Program Files (x86)\ImageMagick-6.9.5-Q16\lib --with-opt-include=C:\Program Files (x86)\ImageMagick-6.9.5-Q16\include'
This could take a while...
Successfully installed rmagick-2.15.4
Parsing documentation for rmagick-2.15.4
Installing ri documentation for rmagick-2.15.4
Done installing documentation for rmagick after 8 seconds
1 gem installed
```


## RMagick の動作確認

```
>ruby hello_rmagick.rb
```

上記コマンドを実行後、カレントディレクトリに `Hello_RMagick.png` が出力されればOKです。

![Hello_RMagick.png](./img/Hello_RMagick.png)

## Rakeの薦め

通常の RMagick の Windows 環境へのインストールは ImageMagick のインストールパスと、 include および lib のパスをあわせて指定します。そのため、以下のような長いコマンドラインを作成しなければなりませんでした。このような場合`rakefile`を作成しておけば、以降は`rake`コマンドだけで簡単にインストールできるようになります。

win版 rmagickインストール用のコマンドライン
```
gem install rmagick ^
--platform=ruby -- ^
--with-opt-dir="[path to ImageMagick]" ^
--with-opt-lib="[path to ImageMagick]\lib" ^
--with-opt-include="[path to ImageMagick]\include"
```

----

確認環境:

*   Windows 10 pro (64 bit)
*   Ruby 2.3.1 (32 bit)
*   Devkit 32-472 (32 bit)

確認環境では Ruby x86 32-bit なので ImageMagick 6 の最新版（Aug 11, 2016 現在） [ImageMagick-6.9.5-5-Q16-x86-dll.exe](http://www.imagemagick.org/download/binaries/ImageMagick-6.9.5-5-Q16-x86-dll.exe)をインストールしました。


参考：

* [Installing on Windows · rmagick/rmagick Wiki - GitHub](https://github.com/rmagick/rmagick/wiki/Installing-on-Windows)インストールに於けるいくつかの注意点が書かれています。
* [ruby - Installing RMagick on Windows - Stack Overflow](http://stackoverflow.com/questions/36242042/installing-rmagick-on-windows)
* [[ruby]RMagick導入[windows7]|Akanetrip](http://hatobane.github.io/uncategorized/rmagick-install/)
* [RMagick 2.12.0: How to use RMagick](https://rmagick.github.io/usage.html#annotation)
