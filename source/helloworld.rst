=======================
はじめてのATSプログラム
=======================

ATS 言語はコンパイラを使ってそのソースコードを実行します。
別の言い方をすると OCaml のようにインタプリタを持っていません。
この章では、ATS のプログラミングをはじめる前に、単純なプログラムを作ってコンパイルしてみましょう。

何もしないプログラム
====================

最小のプログラムとは何でしょうか？
見方によりますが、多くの場合は何もしない main 関数だけを持つようなプログラムでしょう。
さっそく "何もしない ATS プログラム" を作ってみましょう。

.. literalinclude:: code/helloworld/nothing.dats
   :language: ocaml
   :linenos:

これは何もしない main 関数を持つ ATS プログラムです。
ソースコードを詳しく解説すると以下のようになるでしょう。

* ATSプログラムは "main0" 関数から開始されます。
* キーワード "implement" を使って新しい関数 "main0" を定義しています。
* "main0" 関数は宣言済みで引数は無く、返り値は void 型です。
* 上記の "main0" 関数本体では何もしないまま "()" を返しています。この "()" は void 型の唯一の値です。

コンパイルと実行
================

さっそく先の "何もしない ATS プログラム" をコンパイルしてみましょう。
まずは先のソースコードを "nothing.dats" の名前でテキストファイルに保存しましょう。
その後、次のコマンドを入力してください。

.. literalinclude:: code/helloworld/nothing_compile.txt
   :language: shell
   :linenos:

実行ファイル "a.out" が生成されました。
もちろん何もしないプログラムなので、実行してもコンソールには何も表示されません。

ソースコード "nothing.dats" のコンパイルに "patsopt" というコマンドを使いました。
このコマンドはどのように動作するのでしょうか？

.. figure:: _static/fig/helloworld/patsopt.png
   :scale: 70%

xxx

文字列をコンソールに表示するには
================================

.. literalinclude:: code/helloworld/helloworld.dats
   :language: ocaml
   :linenos:

xxx
