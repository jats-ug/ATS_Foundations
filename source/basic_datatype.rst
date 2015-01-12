================
基本的なデータ型
================

この章では、ATS であつかう基本的なデータ型を紹介します。また、ATS コンパイラの使い方を覚えます。

整数
====

まず、以下のような内容のテキストファイル "print_int.dats" を作ってみましょう。

.. code-block:: ocaml

   val v = 3
   
   implement main0 () = println! v

そして、以下のようなコマンドを実行して、先の "print_int.dats" をコンパイルして実行ファイル形式にしてみましょう。

.. code-block:: shell

   $ ls
   print_int.dats
   $ patscc print_int.dats
   $ ls
   a.out  print_int.dats  print_int_dats.c

ATS ソースコード "print_int.dats" をコンパイルすることで、"print_int_dats.c" と "a.out" という2つのファイルが生成されました。それでは生成された実行ファイル "a.out" を実行してみましょう。

.. code-block:: shell

   $ ./a.out
   3

意図通り、"3" がコンソールに表示されました。

xxx val, implement, main0, println!などのキーワードについて説明

xxx コンパイルフローについて簡単に説明

ところで、ATS ではこの "3" という値の型は何になるのでしょうか？それは $showtype 命令で確かめることができます。先程のソースコードを修正して、以下のような内容の "showtype_int.dats" ファイルを作ってみましょう。

.. code-block:: ocaml

   val v = 3
   val _ = $showtype v
   
   implement main0 () = println! v

この "showtype_int.dats" ファイルをコンパイルしてみましょう。

.. code-block:: ocaml

   $ patscc showtype_int.dats
   **SHOWTYPE**(/tmp/showtype_int.dats: 29(line=2, offs=19) -- 30(line=2, offs=20)): S2Eapp(S2Ecst(g1int_int_t0ype); S2Ecst(int_kind), S2Eintinf(3))

コンパイルしただけであるにもかかわらず、"\**SHOWTYPE**" で始まるメッセージが表示されています。このメッセージは束縛 "v" の型を表わしています。この型は内部表現で "S2Eapp(S2Ecst(g1int_int_t0ype); S2Ecst(int_kind), S2Eintinf(3))" ですが、、、おそらく読者は読むことが困難でしょう。そこで少し詳細に踏み込んだ解説をしてみます。

* `S2Ecst` は、int, bool, list などの型定数を表わし、ここでは "g1int_int_t0ype" と "int_kind" の2つの型乗数を導入しています
* `S2Eintinf` は、無限精度整数を表わし、ここでは "v" に束縛した定数 "3" を導入しています
* `S2Eapp` は、関数適用の項を表わし、ここでは "g1int_int_t0ype" に2つの引数、"int_kind" と "3" を適用しています

つまり、束縛 "v" には定数 3 に依存した int 型が割り当てられていることになります。
また、これら型の内部表現については `ATS2 wiki の Internal types ページ`_ を参照してください。

.. _`ATS2 wiki の Internal types ページ`: https://github.com/githwxi/ATS-Postiats/wiki/Internal-types
