## はじめに

Yeomanでの基本的なWebページ開発環境を簡単に作れます。

## インストールされる環境

* CentOS 6.5 -> 6.6
* rbenv
  * ruby 2.2.0
* ndenv
  * node v0.12.0
* Yeoman
  * generator-webapp

## 使い方

### 仮想環境構築

```shell
$ vagrant up
```

で、仮想環境起動。
初回は環境構築が入るので時間かかる。
その後は

```shell
$ vagrant ssh
```

とすれば仮想環境に`vagrant`ユーザーとしてログインできる。
以降は`vagrant`ユーザーとして説明。

### テンプレートからWebアプリ作成

TODO