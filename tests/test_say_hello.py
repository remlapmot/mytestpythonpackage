from mytestpackage import say_hello

def test_say_hello():
    assert say_hello() is None
