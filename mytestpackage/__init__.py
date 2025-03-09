from mytestpackage.myfunctions import say_goodbye as say_goodbye
from mytestpackage.myfunctions import f as f
from mytestpackage.myimportedfns import myrand as myrand


def say_hello() -> None:
    print("Hello, World")


# Unsure whether this is required
__all__ = ["say_goodbye", "say_hello", "f", "myrand"]
