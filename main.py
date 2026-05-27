import unittest
from tamilrulepy.euphonic import get
from tamilrulepy.thogaimarabu.thogaimarabu import thogai_6, thogai_7, thogai_8
from tamilrulepy.thogaimarabu.thogaimarabu import (
    thogai_1,
    thogai_2,
    thogai_3,
    thogai_4,
    thogai_5,
)


class Test_thogaimarabu(unittest.TestCase):

    def test_thogai_rule_1(self):
        result = get(["தட", "தோள்"])
        self.assertIn(["தடந்தோள்"], result)
        result = get(["கருமை", "சூழ்"])
        self.assertIn(["கருஞ்சூழ்"], result)




result = get(["தட", "தோள்"])

print(result)