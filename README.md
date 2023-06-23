bevymarkのWASMサイズを縮小することで高速化することを実証するためのfork。

<https://github.com/laysakura/bevy> と連携して動く。

main ブランチのスクリプトで .wasm と bindingコードの .js をビルドし、それを gh-pages ブランチにコミットする。
主にドキュメントルートを `https://laysakura.github.io/bevy-website/` にするために、 gh-pages ブランチは直接編集もしている。

mainブランチでのビルドは以下。

```console
% cd generate-wasm-examples
% ./generate_wasm_examples.sh
% cd ..
% ll -h content/examples/stress-tests/bevymark/bevymark{.js,_bg.wasm}
-rw-r--r--@ 1 sho.nakatani  staff    67K  6 23 12:28 content/examples/stress-tests/bevymark/bevymark.js
-rw-r--r--@ 1 sho.nakatani  staff   8.7M  6 23 12:28 content/examples/stress-tests/bevymark/bevymark_bg.wasm
```

gh-pages ブランチでのコピー

```console
% git checkout gh-pages
% cp content/examples/stress-tests/bevymark/bevymark{.js,_bg.wasm} examples/stress-tests/bevymark/
```

# Bevy Website

The source files for <https://bevyengine.org>. This includes official Bevy news and docs, so if you would like to contribute feel free to create a pull request!

## Zola

The Bevy website is built using the Zola static site engine. In our experience, it is fast, flexible, and straightforward to use.

To check out any local changes you've made:

1. [Download Zola](https://www.getzola.org/).
2. Clone the Bevy Website git repo and enter that directory:
   1. `git clone https://github.com/bevyengine/bevy-website.git`
   2. `cd bevy-website`
3. Start the Zola server with `zola serve`.

A local server should start and you should be able to access a local version of the website from there.

### Assets, Errors, and Examples pages

These pages need to be generated in a separate step by running the shell scripts in the `generate-assets`, `generate-errors`, and `generate-wasm-examples` directories. On Windows, you can use [WSL](https://learn.microsoft.com/en-us/windows/wsl/install) or [git bash](https://gitforwindows.org/).

