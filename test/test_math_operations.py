from src.math_operations import division


class TestMathOperations:
    def test_division_operation(self):
        # Given
        numerator = 4
        denominator = 2
        # When
        res = division(numerator, denominator)
        # Then
        assert res == 2
