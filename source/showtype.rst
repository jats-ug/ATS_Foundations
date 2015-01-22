=============
Showing types
=============

これまで ATS における式には型がついていることを学びました。
この章では、ソースコード中の式の型を表示する方法と、その型を理解する方法を身に付けましょう。

$showtype directive
===================

xxx

Integer
=======

ところで、ATS ではこの 3 という値の型は何になるのでしょうか？それは $showtype 命令を使って確かめることができます。先程のソースコードを修正して、以下のような内容の showtype_int.dats ファイルを作ってみましょう。

.. literalinclude:: code/showtype/showtype_int.dats
   :language: ocaml
   :linenos:

この showtype_int.dats ファイルをコンパイルしてみましょう。

.. literalinclude:: code/showtype/showtype_int_compile.txt
   :language: shell

コンパイルしただけであるにもかかわらず、\**SHOWTYPE** で始まるメッセージが表示されています。このメッセージは整数のリテラル 3 の型を表わしています。このメッセージ S2Eapp(S2Ecst(g1int_int_t0ype); S2Ecst(int_kind), S2Eintinf(3)) は型の内部表現ですが、、、おそらく読者は読むことが困難でしょう。そこで少し詳細に踏み込んだ解説をしてみます。

* `S2Ecst` は、int, bool, list などの型定数を表わし、ここでは g1int_int_t0ype と int_kind の2つの型定数を導入しています
* `S2Eintinf` は、無限精度整数を表わし、ここでは定数 3 を導入しています
* `S2Eapp` は、関数適用の項を表わし、ここでは g1int_int_t0ype に2つの引数 int_kind と 3 を適用しています

上記の内部表現を ATS のソースコード形式に戻してみましょう。

.. code-block:: ocaml

    g1int_int_t0ype(int_kind, 3)

つまり、整数リテラル 3 には定数 3 に依存した int 型が割り当てられていることになります。
このような値に依存した型は **依存型** と呼ばれます。
この本では、しばらく依存型については深く踏み込みません。
今は 3 には int 型が割り当てられていることを理解すれば十分です。
もし、これら型の内部表現について知りたい場合は `ATS2 wiki の Internal types ページ`_ を参照してください。

.. _`ATS2 wiki の Internal types ページ`: https://github.com/githwxi/ATS-Postiats/wiki/Internal-types

整数に対する四則演算を行うこともできました。
次のようなファイル int_op.dats を作りましょう。

.. literalinclude:: code/showtype/int_op.dats
   :language: ocaml
   :linenos:

$showtype 命令は引数をそのまま返すので、上記のように通常の関数の中に自由に埋め込むことができます。
突然 share/atspre_staload.hats というファイルをインクルードしていますが、これは ATS のテンプレートを使うために必要になります。
+ のような演算子は ATS ではテンプレートとして実装されています。

上記のソースコードをコンパイル/実行してみましょう。

.. literalinclude:: code/showtype/int_op_compile.txt
   :language: shell

実行結果は意図したものでしょう。しかし $showtype 命令によって表示された型は単純な整数リテラルよりもかなり複雑です。3 + 4 * 2 の型を表わす内部表現を ATS のソースコード形式に戻してみましょう。

.. code-block:: ocaml

    g1int(atstype_int, (3 + (mul_int_int(4, 2))))

g1int の最初の引数はこの型が int 型であることを示しています。
g1int の最後の引数は 3 + 4 * 2 をそのまま表わしています。
mul_int_int は int 型に対する型レベルの乗算関数です。
依存型では同じ int 型でも、文脈に依存して型が変化しているようです。
つまり当該の int 型の値がどのようにして算出されたのか、 **ATS の型システムは知っているのです** 。

このような依存型はどのような場面で役立つのでしょうか？

xxx 除算について

Character string
================

Function
========
