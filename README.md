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

`/vagrant/project`ディレクトリを作ってあるので、そこに生成します。

```shell
$ cd /vagrant/project
$ yo webapp
```

色々聞かれるので、上下キー＋Spaceキーで最初に入れておくライブラリを決めたり、y/n選択したりします。

よくわからなければ、とりあえず全部のライブラリを入れるようにして、y/nはそのままエンターを押せば良いです。

ひたすら待つ、たまにエンターを押してみたりして、ひたすら待つ。

### Gruntfile.js修正

`Vagrantfile`での設定がポートフォワードではなくプライベートIPなので、`/vagrant/project/Gruntfile.js`の78行目を以下のように修正する。

```js
-hostname: 'localhost'
+hostname: '192.168.33.10'
```

### 動作確認

`/vagrant/project`にて

```shell
$ grunt serve
```

して、何かしらのブラウザで`http://192.168.33.10:9000`を見てみよう。

ページが表示されれば成功！

やめる時は`Ctrl+C`で。

### 開発方法について

ここでは割愛。