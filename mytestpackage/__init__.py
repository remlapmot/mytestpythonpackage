from .myfunctions import f as f
from .myfunctions import say_goodbye as say_goodbye
from .myimportedfns import myrand as myrand


def say_hello() -> None:
    print("Hello, World")


# Specifies the functions/methods which imported when package imported with wildcard, e.g., from mytestpackage import *
__all__ = ["f", "myrand", "say_goodbye", "say_hello"]
