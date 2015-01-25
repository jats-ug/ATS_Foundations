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

We learned addition, subtraction and multiplication on integers.
Create a new file ``int_op.dats`` to watch the type using ``$showtype`` directive.

.. literalinclude:: code/showtype/int_op.dats
   :language: ocaml
   :linenos:

We can inject $showtype directive into ATS code such like ``int_op.dats``,
because the ``$showtype`` directive directly returns the argument.
Let's compile and run it.

.. literalinclude:: code/showtype/int_op_compile.txt
   :language: shell

Result of running executable is intended by readers.
However, the type printed by ``$showtype`` is more complex than simple integer literal.
Let's pretty-print the internal type representation of ``3 + 4 * 2``.

.. code-block:: ocaml

    g1int(atstype_int, (3 + (mul_int_int(4, 2))))

First argument of ``g1int`` explains this type is ``int`` type.
Second argument of ``g1int`` directly explains the calculation ``3 + 4 * 2``.
``mul_int_int`` is for the function doing multiplication on type-level.
That is **ATS's dependent type knows** how the value of ``int`` type is computed.

What kinds of situations is these dependent type good for?

xxx About division operator

Character string
================

xxx

Function
========

xxx
