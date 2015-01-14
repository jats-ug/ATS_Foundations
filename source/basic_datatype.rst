================
基本的なデータ型
================

この章では、ATS であつかう基本的なデータ型を紹介します。

整数
====

まず、以下のような内容のテキストファイル print_int.dats を作ってみましょう。

.. literalinclude:: code/basic_datatype/print_int.dats
   :language: ocaml
   :linenos:

コンパイル実行してみましょう。

.. literalinclude:: code/basic_datatype/print_int_compile.txt
   :language: shell

意図通り、3 がコンソールに表示されました。

整数に対する四則演算を行なうこともできます。加算は +、現在は -、乗算は * です。
次のようなファイル int_op.dats を作りましょう。

.. literalinclude:: code/basic_datatype/int_op.dats
   :language: ocaml
   :linenos:

share/atspre_staload.hats というファイルをインクルードしていますが、これは ATS のテンプレートを使うために必要になります。
+ のような演算子は ATS ではテンプレートとして実装されています。

上記のソースコードをコンパイル/実行してみましょう。

.. literalinclude:: code/basic_datatype/int_op_compile.txt
   :language: shell

実行結果は意図したものでしょう。

xxx 除算について

xxx

実数
====

文字列
======

真偽値
======

その他のデータ
==============
