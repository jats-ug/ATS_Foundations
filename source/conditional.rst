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
