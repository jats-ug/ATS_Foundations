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

.. note::

   **Exercise**: Calculate following expressions on ATS language.

   A. :math:`7 - 3 \times 4`
   B. :math:`7 \div 2 \times 2`
   C. :math:`7 \times 2 \div 2`

Real number
===========

Literal of real number is represented using a decimal point, and the type is ``double``.

.. literalinclude:: code/basic_datatype/print_double.dats
   :language: ocaml
   :linenos:

A value of real number is able to be printed using ``println!``.

.. literalinclude:: code/basic_datatype/print_double_compile.txt
   :language: shell

Addition operator ``+``, subtraction ``-``, multiplication ``*`` and division ``/`` can be used on real number.
Please see following ``double_op.dats``:

.. literalinclude:: code/basic_datatype/double_op.dats
   :language: ocaml
   :linenos:

.. literalinclude:: code/basic_datatype/double_op_compile.txt
   :language: shell

Zeros after the decimal point are optional.

.. literalinclude:: code/basic_datatype/double_op_nozero.dats
   :language: ocaml
   :linenos:

ATS is different to OCaml, and can use operators between different types (such like ``int`` and ``double``).

.. literalinclude:: code/basic_datatype/double_int_op.dats
   :language: ocaml
   :linenos:

.. literalinclude:: code/basic_datatype/double_int_op_compile.txt
   :language: shell

This mixing is based on ATS template system.

.. note::

   **Exercise**: Calculate following expressions on ATS language.

   A. :math:`2 \times 3.14 \times 10`
   B. :math:`1.73 \times 1.73`
   C. :math:`7 / 2`

Boolean value
=============

Boolean value is a value for true or false.
On ATS language, ``true`` is for true and ``false`` for false.
Type of the boolean value is ``bool``.

.. literalinclude:: code/basic_datatype/print_bool.dats
   :language: ocaml
   :linenos:

.. literalinclude:: code/basic_datatype/print_bool_compile.txt
   :language: shell

We can use logical operations on the boolean value.x
``&&`` is for "and", ``||`` for "or" and ``not`` for "negation", in the order of descending priorities.

.. literalinclude:: code/basic_datatype/bool_op.dats
   :language: ocaml
   :linenos:

.. literalinclude:: code/basic_datatype/bool_op_compile.txt
   :language: shell

``true`` and ``false`` are rarely used on real programming.
Normally, we use them to test whether some conditions hold.
Examples of the test operators are: ``=`` is for "equality", ``!=`` for "inequality", ``>`` for "greater than", ``<`` for "less than", ``>=`` for "greater than or equal", and ``<=`` "less than or equal".

.. literalinclude:: code/basic_datatype/bool_test.dats
   :language: ocaml
   :linenos:

.. literalinclude:: code/basic_datatype/bool_test_compile.txt
   :language: shell

.. note::

   **Exercise**: Test conditions of following sentences on ATS language.

   A. ":math:`2` is greater than :math:`3`."
   B. "The second power of :math:`3.1415` is not less than :math:`10`."
   C. "The remainder obtained by dividing :math:`8` by :math:`3` is equal to :math:`2`."
   D. ":math:`3 + 4 + 5` is equal to :math:`4 \times 3`."

The other data types
====================

Character string and the other data types are explained later.
