===============
Basic datatypes
===============

In the chapter, we learn some basic datatypes on ATS.

Integer
=======

First, let's create a text file named print_int.dats has following context:

.. literalinclude:: code/basic_datatype/print_int.dats
   :language: ocaml
   :linenos:

This program prints integer 3 on console. Then compile it.

.. literalinclude:: code/basic_datatype/print_int_compile.txt
   :language: shell

You get the result just as our intended.

It's available doing basic arithmetic operations on integers.
Addition operator is ``+``, subtraction is ``-`` and multiplication is ``*``.
let's create a text file named int_op.dats has following context:

.. literalinclude:: code/basic_datatype/int_op.dats
   :language: ocaml
   :linenos:

The int_op.dats file includes share/atspre_staload.hats file that is needes to use ATS's template.
Some operators such like ``+`` are implemented using the template on ATS language implementation.

You will get following intended result, by compiling the code and running it.

.. literalinclude:: code/basic_datatype/int_op_compile.txt
   :language: shell



xxx division operator

Real number
===========

Character string
================

Truth value
===========

The other datatypes
===================
