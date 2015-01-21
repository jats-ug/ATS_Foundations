======================
"Hello, world!" on ATS
======================

ATS compiler is needed to run ATS program.
In other words, ATS language doesn't have interpreter such like OCaml language.
We try to compile some simple ATS program on this chapter, before learn full-featured ATS programming.

ATS program to do nothing
=========================

What is the minimum program?
It's mostly a program has nothing without a empty main function.
Let's create such "ATS program to do nothing".

.. literalinclude:: code/helloworld/nothing.dats
   :language: ocaml
   :linenos:

This is the ATS program has a main function doing nothing.
Detail of the code is explained as following:

* Any ATS programs start at ``main0`` function
* Keyword ``implement`` defines a new function ``main0`` at the code
* ``main0`` function has been declared in ATS language implementation
* ``main0`` has no arguments and return value is ``void`` type
* The body of the ``main0`` function does nothing and return ``()``
* The ``()`` is the only value of ``void`` type

Compile and run it
==================

Let's compile the "ATS program to do nothing".
Save it as ``nothing.dats`` and run following commands:

.. literalinclude:: code/helloworld/nothing_compile.txt
   :language: shell
   :linenos:

An executable ``a.out`` is created by ATS compiler ``patscc``.
Of course, the executable prints nothing on console while running.

By the way, how does the ``patscc`` command work?

.. figure:: fig/helloworld/patsopt.png
   :scale: 70%

As in the figure, the ``patscc`` internally calls two commands.

The first command is ``patsopt`` that compile ATS language code to C language,
while the ``patsopt`` does typecheck the ATS code and reports type errors.
The compilation ATS to C is aborted, if typechecking found some type errors.

The second command is ``gcc`` that is familiar to everyone.
C language code created by ``patsopt`` is compiled to executable by the ``gcc`` command.

Print character string on console
=================================

patscc コマンドの使い方がわかったので、何か有意なプログラムを作ってみましょう。

.. literalinclude:: code/helloworld/helloworld.dats
   :language: ocaml
   :linenos:

このソースコードには新しい要素がいくつか登場しています。

* val は束縛の宣言です。ここでは println! 関数の返り値を void 値に束縛しています。
* println! は ATS コンパイラ内部で解釈される特殊なキーワードで、引数をコンソールに表示した後、リターンコードをコンソールに出力します。返り値は void です。

このプログラムはコンソールに "Hello, world!" という文字列を表示します。

.. literalinclude:: code/helloworld/helloworld_compile.txt
   :language: shell
   :linenos:

命令型プログラミングに慣れ親しんだ読者にとって、この実行結果は少し奇妙に見えるかもしれません。
ATS は即時評価のプログラミング言語です。
そのため概念上、次のようなことが実行時に起きます。

1. 式 println! "Hello, world!" が値 () に評価されます。この時、コンソールに "Hello, world!" という文字列が出力されます。
2. val 宣言によって = の左辺にある () と、println! "Hello, world!" の返り値である () の間に束縛ができます。
3. main0 関数が実行され、この関数は何もせずに終了します。
