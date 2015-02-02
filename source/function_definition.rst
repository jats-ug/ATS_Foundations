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

The function ``f`` is typed as following figure that explains the argument ``x`` is typed with ``int`` and the return value is also typed with ``int``. The function ``f`` is typed with ``(int) -> int``.

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

.. note::

   **Exercise**: Write a function ``bmi`` that takes a meter tall and a kilogram weight then returns the body mass index (BMI). The BMI is calculated with dividing the kilogram weight by the square of the meter tall.

Typechecking
============

What happen if the function ``f`` takes a value typed ``double``?

.. literalinclude:: code/function_definition/f_takes_double.dats
   :language: ocaml
   :linenos:

.. literalinclude:: code/function_definition/f_takes_double_compile.txt
   :language: shell

A compile error occurs at the code ``val r  = f 4.0`` while typechecking.
It means the function ``f`` takes ``double`` type that not match type of ``f`` as following figure:

.. figure:: fig/function_definition/f_takes_double.png
   :scale: 90%

You should create a new function ``f2`` to maintain ``double`` type on the function ``f``.

.. literalinclude:: code/function_definition/f_takes_double2.dats
   :language: ocaml
   :linenos:

.. literalinclude:: code/function_definition/f_takes_double2_compile.txt
   :language: shell

The code ``f_takes_double2.dats`` can be compiled. The function ``f2`` is typed as following figure:

.. figure:: fig/function_definition/f_takes_double2.png
   :scale: 90%

.. note::

   **Exercise**: Write a function that takes a number of cranes and returns the total of their legs. (Crane has two legs.)

.. note::

   **Exercise**: Write a function that takes a number of tortoises and returns the total of their legs. (Tortoise has four legs.)

.. note::

   **Exercise**: Finally, write a function that takes the total of cranes and tortoises and the total of their legs, and return the total of the cranes.
