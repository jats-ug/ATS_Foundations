===========================
ATSコンパイラのインストール
===========================

この本は単なる読み物、というよりも読者が実際に ATS 言語のコードを書いて試してみることを前提にしています。
コンピュータの上で ATS ソースコードを動作させるには ATS 言語のコンパイラが必要になります。

この章では、最新の ATS コンパイラである ATS/Postiats (通常 "ATS2" と呼ばれます) をインストールしてみましょう。

使っているプラットフォームの説明に進む前に、ATS コンパイラのソースコードをダウンロードしておきましょう。

* http://sourceforge.net/projects/ats2-lang/files/ から ATS2-Postiats-X.Y.Z.tgz
* http://sourceforge.net/projects/ats2-lang-contrib/files/ から ATS2-Postiats-contrib-X.Y.Z.tgz

Linux
=====

`Debian GNU/Linux`_ を例に説明します。

はじめに ATS2 のインストールに必要なパッケージ群をインストールしてください。

.. code-block:: shell

   $ sudo apt-get install gcc libgc-dev libgmp-dev make

次に、ATS コンパイラのソースコードを解凍して、環境変数を設定しましょう。

.. code-block:: shell

   $ tar xf ATS2-Postiats-X.Y.Z.tgz
   $ export PATSHOME=`pwd`/ATS2-Postiats-X.Y.Z
   $ export PATH=${PATSHOME}/bin:${PATH}
   $ tar xf ATS2-Postiats-contrib-X.Y.Z.tgz
   $ export PATSHOMERELOC=`pwd`/ATS2-Postiats-contrib-X.Y.Z

最後に、ATS コンパイラをコンパイルします。

.. code-block:: shell

   $ cd ${PATSHOME}
   $ ./configure
   $ make

.. _`Debian GNU/Linux`: https://www.debian.org/

Windows
=======

Windows 環境に ATS2 をインストールするには Cygwin_ が必要です。
`setup-x86.exe`_ もしくは `setup-x86_64.exe`_ をダウンロードして Cygwin をインストールしてください。
以降は setup-x86_64.exe を使った場合について説明します。

はじめに、setup-x86_64.exe を再度起動して、 ATS2 のインストールに必要な以下のパッケージ群をインストールしてください。

* gcc-core
* libgc-devel
* libgmp-devel
* make

.. _Cygwin: https://cygwin.com/
.. _`setup-x86.exe`: http://cygwin.com/setup-x86.exe
.. _`setup-x86_64.exe`: http://cygwin.com/setup-x86_64.exe

次に、Cygwin コンソールを起動し、ATS コンパイラのソースコードを解凍して、環境変数を設定しましょう。

.. code-block:: shell

   $ tar xf ATS2-Postiats-X.Y.Z.tgz
   $ export PATSHOME=`pwd`/ATS2-Postiats-X.Y.Z
   $ export PATH=${PATSHOME}/bin:${PATH}
   $ tar xf ATS2-Postiats-contrib-X.Y.Z.tgz
   $ export PATSHOMERELOC=`pwd`/ATS2-Postiats-contrib-X.Y.Z

最後に、ATS コンパイラをコンパイルします。

.. code-block:: shell

   $ cd ${PATSHOME}
   $ ./configure
   $ make

Mac OS X
========

Homebrew_ がインストールされていることを前提に説明します。

はじめに、ATS2 のインストールに必要なパッケージ群をインストールしてください。

.. code-block:: shell

   $ brew install gmp bdw-gc

次に、ATS コンパイラのソースコードを解凍して、環境変数を設定しましょう。

.. code-block:: shell

   $ tar xf ATS2-Postiats-X.Y.Z.tgz
   $ export PATSHOME=`pwd`/ATS2-Postiats-X.Y.Z
   $ export PATH=${PATSHOME}/bin:${PATH}
   $ tar xf ATS2-Postiats-contrib-X.Y.Z.tgz
   $ export PATSHOMERELOC=`pwd`/ATS2-Postiats-contrib-X.Y.Z

最後に、ATS コンパイラをコンパイルします。

.. code-block:: shell

   $ cd ${PATSHOME}
   $ ./configure
   $ make

.. _Homebrew: http://brew.sh/
