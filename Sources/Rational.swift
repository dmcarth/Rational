public struct Rational {
	
	public var numerator: Int
	
	public var denominator: Int
	
	public init?(_ numerator: Int, _ denominator: Int) {
		guard denominator != 0 else { return nil }
		
		var sign = 1
		if numerator < 0 {
			sign *= -1
		}
		if denominator < 0 {
			sign *= -1
		}
		
		self.numerator = abs(numerator) * sign
		self.denominator = abs(denominator)
	}
	
}

extension Rational {
	
	public var reciprocal: Rational? {
		return Rational(denominator, numerator)
	}
	
	public var reduced: Rational {
		let gcd = greatestCommonDivisor(numerator, denominator)
		
		return Rational(numerator / gcd, denominator / gcd)!
	}
	
	func leastCommonMultiple(_ lhs: Int, _ rhs: Int) -> Int {
		return (lhs * rhs) / greatestCommonDivisor(lhs, rhs)
	}
	
	func greatestCommonDivisor(_ lhs: Int, _ rhs: Int) -> Int {
		let alhs = abs(lhs)
		let arhs = abs(rhs)
		var a = max(alhs, arhs)
		var b = min(alhs, arhs)
		
		while b > 0 {
			let r = a % b
			a = b
			b = r
		}
		
		return a
	}
	
}

extension Rational: Comparable {
	
	static public func == (lhs: Rational, rhs: Rational) -> Bool {
		return Double(lhs) == Double(rhs)
	}
	
	static public func < (lhs: Rational, rhs: Rational) -> Bool {
		return Double(lhs) < Double(rhs)
	}
	
}

extension Rational: CustomStringConvertible {
	
	public var description: String {
		return "\(numerator)/\(denominator)"
	}
}

public func + (lhs: Rational, rhs: Rational) -> Rational {
	return Rational(lhs.numerator * rhs.denominator + rhs.numerator * lhs.denominator, lhs.denominator * rhs.denominator)!
}

public func - (lhs: Rational, rhs: Rational) -> Rational {
	return Rational(lhs.numerator * rhs.denominator - rhs.numerator * lhs.denominator, lhs.denominator * rhs.denominator)!
}

public func * (lhs: Rational, rhs: Rational) -> Rational {
	return Rational(lhs.numerator * rhs.numerator, lhs.denominator * rhs.denominator)!
}

public func / (lhs: Rational, rhs: Rational) -> Rational? {
	guard let rrhs = rhs.reciprocal else {
		return Rational(0, 1)
	}
	
	return lhs * rrhs
}
