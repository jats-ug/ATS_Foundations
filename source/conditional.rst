==================
Conditional branch
==================

Syntax to define conditional branch
===================================

ATS can define a conditional branch using ``if``, like as the other programming language.
The syntax is following:

.. code-block:: ocaml

   if CONDITION then EXPRESSION_A else EXPRESSION_B

The ``CONDITION`` should be a value of ``bool`` type.
Also, the ``EXPRESSION_A`` and ``EXPRESSION_B`` should be typed with same type.

Let's write some code using ``if`` keyword.

.. literalinclude:: code/conditional/if_then_else.dats
   :language: ocaml
   :linenos:

.. literalinclude:: code/conditional/if_then_else_compile.txt
   :language: shell

The execution result is able to understand for us.
BTW, why needs some type assignments such like ``println! (a:int)``?
Type inference on ATS language can't understand type of everything.
Sometimes we should tell the type inferencer the type of values.

We can also write any values of ``bool`` type at ``CONDITION``.

.. literalinclude:: code/conditional/if_then_else2.dats
   :language: ocaml
   :linenos:

.. literalinclude:: code/conditional/if_then_else2_compile.txt
   :language: shell

Line number 5 of the code ``if_then_else2.dats`` has the type drawn following figure:

.. figure:: fig/conditional/if_then_else2.png
   :scale: 90%

However, a compile error occurs with writing a value of the other type at ``CONDITION``.

.. literalinclude:: code/conditional/if_not_bool.dats
   :language: ocaml
   :linenos:

.. literalinclude:: code/conditional/if_not_bool_compile.txt
   :language: shell

It's caused with the following type error:

.. figure:: fig/conditional/if_not_bool.png
   :scale: 90%

And also, type check error occurs while the type of ``EXPRESSION_A`` is different from the type of ``EXPRESSION_B``.

.. literalinclude:: code/conditional/different_expr.dats
   :language: ocaml
   :linenos:

.. literalinclude:: code/conditional/different_expr_compile.txt
   :language: shell

.. figure:: fig/conditional/different_expr.png
   :scale: 90%


We can write ``println!`` in ``EXPRESSION_A`` or ``EXPRESSION_B``.

.. literalinclude:: code/conditional/println_expr.dats
   :language: ocaml
   :linenos:

.. literalinclude:: code/conditional/println_expr_compile.txt
   :language: shell

.. figure:: fig/conditional/println_expr.png
   :scale: 90%

The part ``else EXPRESSION_B`` is optional, if type of the ``EXPRESSION_A`` is ``void``.

.. literalinclude:: code/conditional/println_without_else.dats
   :language: ocaml
   :linenos:

.. note::

   **Exercise**: What type is assigned on following conditional branch? Or, where is a type error issue on the expression?

   A. ``if 2 < 1 then 3 else 4``
   B. ``if "true" then 3.14 else 2.72``
   C. ``if not (3 = 4) then 1 < 2 else 1 > 2``
   D. ``if println! "false" then true else false``
