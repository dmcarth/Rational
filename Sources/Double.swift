
extension Double {
	
	init(_ rational: Rational) {
		self = Double(rational.numerator) / Double(rational.denominator)
	}
	
}

extension Float {
	
	init(_ rational: Rational) {
		self = Float(rational.numerator) / Float(rational.denominator)
	}
	
}
