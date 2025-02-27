from mytestpackage import say_goodbye


def test_say_goodbye():
    assert say_goodbye() is None
