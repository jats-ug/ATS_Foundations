=======
Preface
=======

Welcome to ATS_ programming world!

This book is a beginning guide for ATS programming based on the book `プログラミングの基礎 (Programming Foundations)`_ that is recognized as a good beginning guide for `OCaml`_.

.. _ATS: http://www.ats-lang.org/
.. _`プログラミングの基礎 (Programming Foundations)`: http://pllab.is.ocha.ac.jp/~asai/book/Top.html

What is ATS programming language?
=================================

Sometimes, you know OCaml_ or Haskell_ as functional and strongly typed language.
Why do we need to learn a new functional language?
There are some reason:

* These languages can't run without any GC
* These languages needs some runtime
* These languages can't use type out of their heap
* These languages can't capture program invariant using dependent type

ATS has more strong type than theirs, and can run without any runtime.
This characteristic of ATS language wides the application range of functional programming.

.. _OCaml: https://ocaml.org/
.. _Haskell: http://haskell.org/

The characteristic of ATS language is found at `The ATS Programming Language`_ site.

The goal of this book
=====================

The goal of this book is "You become able to read `Introduction to Programming in ATS`_ alone."

ATS language society already has some good documents.
`Introduction to Programming in ATS`_ is one of them.
However, it's hard to read for beginners, because ATS's value is strongly typed using dependent type.
The dependent type appears in normal code, and it means the beginners can't understand type error message on ATS.

I believe understanding the error message is a shortcut to become a good programmer on ATS.

The other documents
===================

* `The ATS Programming Language`_
* `Wiki for ATS2`_
* `Introduction to Programming in ATS`_
* `A Tutorial on Programming Features in ATS`_
* `Effective ATS`_
* `ML programmer's guide to ATS`_
* `Japan ATS User Group`_

.. _`The ATS Programming Language`: http://www.ats-lang.org/
.. _`Wiki for ATS2`: https://github.com/githwxi/ATS-Postiats/wiki
.. _`Introduction to Programming in ATS`: http://ats-lang.sourceforge.net/DOCUMENT/INT2PROGINATS/HTML/INT2PROGINATS-BOOK.html
.. _`A Tutorial on Programming Features in ATS`: http://ats-lang.sourceforge.net/DOCUMENT/ATS2TUTORIAL/HTML/ATS2TUTORIAL-BOOK.html
.. _`Effective ATS`: http://ats-lang.sourceforge.net/EXAMPLE/EFFECTIVATS/
.. _`ML programmer's guide to ATS`: http://cs.likai.org/ats/ml-programmers-guide-to-ats
.. _`Japan ATS User Group`: http://jats-ug.metasepi.org/
