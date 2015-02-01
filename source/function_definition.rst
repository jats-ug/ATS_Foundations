===================
Function definition
===================

Syntax to define function
=========================

Let's write a function ``f`` to triple the argument.

.. literalinclude:: code/function_definition/func_syntax.dats
   :language: ocaml
   :linenos:

.. literalinclude:: code/function_definition/func_syntax_compile.txt
   :language: shell

The function ``f`` is typed with following figure that explains the argument ``x`` is typed with ``int`` and the return value is also typed with ``int``. The function ``f`` is typed with ``(int) -> int``.

.. figure:: fig/function_definition/func_syntax.png
   :scale: 90%

A function having two arguments can be written with following:

.. literalinclude:: code/function_definition/two_arguments.dats
   :language: ocaml
   :linenos:

.. literalinclude:: code/function_definition/two_arguments_compile.txt
   :language: shell

The function ``g`` is typed with following figure, and it's not curried form.
However, currying is rarely used at ATS programming.

.. figure:: fig/function_definition/two_arguments.png
   :scale: 90%

