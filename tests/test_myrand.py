from mytestpackage import myrand

def test_myrand():
    assert isinstance(myrand(), float)
