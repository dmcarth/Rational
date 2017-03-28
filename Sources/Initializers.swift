
extension Double {
	
	public init(_ rational: Rational) {
		self = Double(rational.numerator) / Double(rational.denominator)
	}
	
}

extension Float {
	
	public init(_ rational: Rational) {
		self = Float(rational.numerator) / Float(rational.denominator)
	}
	
}

public func / (lhs: Int, rhs: Int) -> Rational {
	return Rational(lhs, rhs)
}
