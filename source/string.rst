================
Character string
================

Immutable string
================

Literal of character string is wrapped with double quotes such like ``"foo"``, and the type is ``string``.

.. literalinclude:: code/string/print_foo.dats
   :language: ocaml
   :linenos:

.. literalinclude:: code/string/print_foo_compile.txt
   :language: shell

However, immutable string can't do such like following:

* append
* reverse

Mutable string
==============

How to concatenate two strings? Please use ``string_append`` function.

.. literalinclude:: code/string/try_string_append.dats
   :language: ocaml
   :linenos:

However the code causes following compile error:

.. literalinclude:: code/string/try_string_append_compile.txt
   :language: shell

Why does the error occur? Because we forget to free the mutable string.

.. literalinclude:: code/string/string_append.dats
   :language: ocaml
   :linenos:

.. literalinclude:: code/string/string_append_compile.txt
   :language: shell

.. figure:: fig/string/string_append.png
   :scale: 90%

xxx
