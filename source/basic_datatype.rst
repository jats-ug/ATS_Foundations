================
基本的なデータ型
================

この章では、ATS であつかう基本的なデータ型を紹介します。
また ATS 言語の型について、少しだけ勉強しましょう。

整数
====

まず、以下のような内容のテキストファイル print_int.dats を作ってみましょう。

.. literalinclude:: code/basic_datatype/print_int.dats
   :language: ocaml
   :linenos:

コンパイル実行してみましょう。

.. literalinclude:: code/basic_datatype/print_int_compile.txt
   :language: shell
   :linenos:

意図通り、"3" がコンソールに表示されました。

ところで、ATS ではこの "3" という値の型は何になるのでしょうか？それは $showtype 命令を使って確かめることができます。先程のソースコードを修正して、以下のような内容の showtype_int.dats ファイルを作ってみましょう。

.. literalinclude:: code/basic_datatype/showtype_int.dats
   :language: ocaml
   :linenos:

この showtype_int.dats ファイルをコンパイルしてみましょう。

.. literalinclude:: code/basic_datatype/showtype_int_compile.txt
   :language: shell
   :linenos:

コンパイルしただけであるにもかかわらず、\**SHOWTYPE** で始まるメッセージが表示されています。このメッセージは整数のリテラル 3 の型を表わしています。このメッセージは型の内部表現で S2Eapp(S2Ecst(g1int_int_t0ype); S2Ecst(int_kind), S2Eintinf(3)) ですが、、、おそらく読者は読むことが困難でしょう。そこで少し詳細に踏み込んだ解説をしてみます。

* `S2Ecst` は、int, bool, list などの型定数を表わし、ここでは g1int_int_t0ype と int_kind の2つの型定数を導入しています
* `S2Eintinf` は、無限精度整数を表わし、ここでは定数 "3" を導入しています
* `S2Eapp` は、関数適用の項を表わし、ここでは g1int_int_t0ype に2つの引数 int_kind と 3 を適用しています

つまり、整数リテラル 3 には定数 3 に依存した int 型が割り当てられていることになります。
しばらくこの "依存した型" については深く踏み込みません。
今は 3 には int 型が割り当てられていることを理解すれば十分です。
もし、これら型の内部表現について知りたい場合は `ATS2 wiki の Internal types ページ`_ を参照してください。

.. _`ATS2 wiki の Internal types ページ`: https://github.com/githwxi/ATS-Postiats/wiki/Internal-types

ずいぶん脱線しました。整数型の説明に戻りましょう。
整数に対する四則演算を行なうこともできます。加算は +、現在は -、乗算は * です。
次のようなファイル int_op.dats を作りましょう。

.. literalinclude:: code/basic_datatype/int_op.dats
   :language: ocaml
   :linenos:

$showtype 命令は引数をそのまま返すので、上記のように通常の関数の中に自由に埋め込むことができます。
突然 share/atspre_staload.hats というファイルをインクルードしていますが、これは ATS のテンプレートを使うために必要になります。
+ のような演算子は ATS ではテンプレートとして実装されています。

上記のソースコードをコンパイル/実行してみましょう。

.. literalinclude:: code/basic_datatype/int_op_compile.txt
   :language: shell
   :linenos:

xxx

