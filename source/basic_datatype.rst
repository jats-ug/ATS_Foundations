================
Basic data types
================

In the chapter, we learn some basic datatypes on ATS.

Integer
=======

First, let's create a text file named ``print_int.dats`` has following context:

.. literalinclude:: code/basic_datatype/print_int.dats
   :language: ocaml
   :linenos:

This program prints integer ``3`` on console. Then compile it.

.. literalinclude:: code/basic_datatype/print_int_compile.txt
   :language: shell

You get the result just as our intended.
The ``3`` in the ``print_int.dats`` file is a literal, and type of the value is ``int``.

It's available doing basic arithmetic operations on integers.
Addition operator is ``+``, subtraction is ``-`` and multiplication is ``*``.
let's create a text file named ``int_op.dats`` has following context:

.. literalinclude:: code/basic_datatype/int_op.dats
   :language: ocaml
   :linenos:

The ``int_op.dats`` file includes ``share/atspre_staload.hats`` file that is needed to use ATS's template.
Some operators such like ``+`` are implemented using the template on ATS language implementation.

You will get following intended result, by compiling the code and running it.

.. literalinclude:: code/basic_datatype/int_op_compile.txt
   :language: shell

Multiplication and division are given priority over addition and subtraction, without parentheses.

You can also do division ``/`` and modulus ``%``.

.. literalinclude:: code/basic_datatype/divmod_op.dats
   :language: ocaml
   :linenos:

Let's compile and run it.

.. literalinclude:: code/basic_datatype/divmod_op_compile.txt
   :language: shell

By the way, what happen if you do division with ``0`` as divisor on a new code ``divzero.dats``?

.. literalinclude:: code/basic_datatype/divzero.dats
   :language: ocaml
   :linenos:

Interestingly, ``divzero.dats`` occurs an error on compiling time,
even though many programming language take care division with ``0`` as run-time error.

.. literalinclude:: code/basic_datatype/divzero_compile.txt
   :language: shell

However, the compilation error message is hard to understand for the reader on this chapter.
I'll explain detail of the error messages elsewhere.

Real number
===========

xxx

Character string
================

xxx

Boolean value
=============

xxx

The other data types
====================

xxx
