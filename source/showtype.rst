=============
Showing types
=============

We learned that any values have a type on ATS.
This chapter explains how to show type of the value on your ATS code and understand the type.

$showtype directive
===================

xxx

Integer
=======

We learned that the of literal ``3`` is ``int``.
By the way, we can directly watch the type of values using the ``$showtype``.
Let's write following code named ``showtype_int.dats``:

.. literalinclude:: code/showtype/showtype_int.dats
   :language: ocaml
   :linenos:

Then, compile it.

.. literalinclude:: code/showtype/showtype_int_compile.txt
   :language: shell

The console shows a message with ``**SHOWTYPE**``.
The message explains the type of integer literal ``3``,
and "S2Eapp(S2Ecst(g1int_int_t0ype); S2Ecst(int_kind), S2Eintinf(3))" is a internal representation of the ATS's type.
However, it's hard to read by a beginner.
Let's learn more detail.

* `S2Ecst` is a type constant (for instance, int, bool, list, etc.) For now, it introduces two type constants ``g1int_int_t0ype`` and ``int_kind``.
* `S2Eintinf` is an infinite precision integer. For now, it introduces the constant ``3``.
* `S2Eapp` is an application term. For now, it applies two arguments ``int_kind`` and ``3`` to ``g1int_int_t0ype``.

Let's do pretty-print the message such like ATS code style.

.. code-block:: ocaml

    g1int_int_t0ype(int_kind, 3)

That is the value of integer literal ``3`` is applied ``int`` type depending on integer literal ``3``.
The type depending on some value is called as **dependent type**.
Please read `"Internal types" page at ATS2 wiki`_, if you understand more of the internal representation of dependent type.

.. _`"Internal types" page at ATS2 wiki`: https://github.com/githwxi/ATS-Postiats/wiki/Internal-types

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

xxx

Function
========

xxx
