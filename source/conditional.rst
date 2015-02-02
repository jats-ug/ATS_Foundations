==================
Conditional branch
==================

Syntax to define conditional branch
===================================

ATS can define a conditional branch using ``if``, like as the other programming language.
The syntax is following:

.. code-block:: ocaml

   if CONDITION then EXPRESSION_A else EXPRESSION_B

The ``EXPRESSION_A`` and ``EXPRESSION_B`` are typed with same type.
Also, the part ``else EXPRESSION_B`` is optional, if type of the ``EXPRESSION_A`` is ``void``.

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

However, a compile error occurs with writing a value of the other type at ``CONDITION``.

.. literalinclude:: code/conditional/if_not_bool.dats
   :language: ocaml
   :linenos:

.. literalinclude:: code/conditional/if_not_bool_compile.txt
   :language: shell
