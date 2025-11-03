from mytestpackage.myfunctions import say_goodbye as say_goodbye
from mytestpackage.myfunctions import f as f
from mytestpackage.myimportedfns import myrand as myrand


def say_hello() -> None:
    print("Hello, World")


# Specifies the functions/methods which imported when package imported with wildcard, e.g., from mytestpackage import *
__all__ = ["say_goodbye", "say_hello", "f", "myrand"]
