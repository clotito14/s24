# classes

class ScaleConverter:
    """Conversion of one unit to another"""
    def __init__(self, units_from, units_to, factor):
        self.units_from = units_from
        self.units_to = units_to
        self.factor = factor

    def description(self):
        """Description method"""
        return 'convert' + self.units_from + ' to ' + self.units_to
    
    def convert(self, value):
        """Conversion method"""
        return value * self.factor
