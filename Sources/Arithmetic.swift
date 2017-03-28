
public func + (lhs: Rational, rhs: Rational) -> Rational {
	return Rational(lhs.numerator * rhs.denominator + rhs.numerator * lhs.denominator, lhs.denominator * rhs.denominator)
}

public func - (lhs: Rational, rhs: Rational) -> Rational {
	return Rational(lhs.numerator * rhs.denominator - rhs.numerator * lhs.denominator, lhs.denominator * rhs.denominator)
}

public func * (lhs: Rational, rhs: Rational) -> Rational {
	return Rational(lhs.numerator * rhs.numerator, lhs.denominator * rhs.denominator)
}

public func / (lhs: Rational, rhs: Rational) -> Rational {
	let rrhs = rhs.reciprocal
	
	guard !rrhs.isNaN else {
		return 0 / 1
	}
	
	return lhs * rrhs
}

public func % (lhs: Rational, rhs: Rational) -> Rational {
	let div = lhs / rhs
	
	return lhs - rhs * div
}
