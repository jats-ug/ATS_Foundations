====================
Install ATS compiler
====================

This book is not only for reading, but also trying to write some ATS code.
To run ATS code on your computer, you need ATS lanugage compiler.

In his chapter, let's install the ATS lanugage compiler named ATS/Postiats (ATS2).

Please download source codes of the ATS compiler, before read following sub chapters.

* ATS2-Postiats-X.Y.Z.tgz http://sourceforge.net/projects/ats2-lang/files/
* ATS2-Postiats-contrib-X.Y.Z.tgz http://sourceforge.net/projects/ats2-lang-contrib/files/

Linux
=====

As an example, ATS2 installation on `Debian GNU/Linux`_ is explained here.

First, install some packages needed to install ATS2.

.. code-block:: shell

   $ sudo apt-get install gcc libgc-dev libgmp-dev make

Next, uncompress the source codes of the ATS compiler, and set some environment variables.

.. code-block:: shell

   $ tar xf ATS2-Postiats-X.Y.Z.tgz
   $ export PATSHOME=`pwd`/ATS2-Postiats-X.Y.Z
   $ export PATH=${PATSHOME}/bin:${PATH}
   $ tar xf ATS2-Postiats-contrib-X.Y.Z.tgz
   $ export PATSHOMERELOC=`pwd`/ATS2-Postiats-contrib-X.Y.Z

Finally, compile the ATS compiler.

.. code-block:: shell

   $ cd ${PATSHOME}
   $ ./configure
   $ make

.. _`Debian GNU/Linux`: https://www.debian.org/

Windows
=======

Installing ATS2 on Windows needs Cygwin_ that should be installed by `setup-x86.exe`_ or `setup-x86_64.exe`_ program.

First, install following packages needed to install ATS2 with running setup-x86.exe or setup-x86_64.exe again.

* gcc-core
* libgc-devel
* libgmp-devel
* make

.. _Cygwin: https://cygwin.com/
.. _`setup-x86.exe`: http://cygwin.com/setup-x86.exe
.. _`setup-x86_64.exe`: http://cygwin.com/setup-x86_64.exe

Next, uncompress the source codes of the ATS compiler on Cygwin console, and set some environment variables.

.. code-block:: shell

   $ tar xf ATS2-Postiats-X.Y.Z.tgz
   $ export PATSHOME=`pwd`/ATS2-Postiats-X.Y.Z
   $ export PATH=${PATSHOME}/bin:${PATH}
   $ tar xf ATS2-Postiats-contrib-X.Y.Z.tgz
   $ export PATSHOMERELOC=`pwd`/ATS2-Postiats-contrib-X.Y.Z

Finally, compile the ATS compiler.

.. code-block:: shell

   $ cd ${PATSHOME}
   $ ./configure
   $ make

Mac OS X
========

First, set up Homebrew_ and install some packages needed to install ATS2.

.. code-block:: shell

   $ brew install gmp bdw-gc

Next, uncompress the source codes of the ATS compiler, and set some environment variables.

.. code-block:: shell

   $ tar xf ATS2-Postiats-X.Y.Z.tgz
   $ export PATSHOME=`pwd`/ATS2-Postiats-X.Y.Z
   $ export PATH=${PATSHOME}/bin:${PATH}
   $ tar xf ATS2-Postiats-contrib-X.Y.Z.tgz
   $ export PATSHOMERELOC=`pwd`/ATS2-Postiats-contrib-X.Y.Z

Finally, compile the ATS compiler.

.. code-block:: shell

   $ cd ${PATSHOME}
   $ ./configure
   $ make GCFLAG=-D_ATS_NGC

.. _Homebrew: http://brew.sh/
