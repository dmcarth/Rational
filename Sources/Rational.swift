
public struct Rational {
	
	public var numerator: Int
	
	public var denominator: Int
	
	public init(_ numerator: Int, _ denominator: Int) {
		guard denominator != 0 else {
			self.numerator = 1
			self.denominator = 0
			
			return
		}
		
		var sign = 1
		if numerator < 0 {
			sign *= -1
		}
		if denominator < 0 {
			sign *= -1
		}
		
		let gcd = greatestCommonFactor(numerator, denominator)
		
		self.numerator = abs(numerator) * sign / gcd
		self.denominator = abs(denominator) / gcd
	}
	
}

extension Rational {
	
	static public var nan: Rational {
		return Rational(1, 0)
	}
	
	public var isNaN: Bool {
		return self == Rational.nan
	}
	
	public var reciprocal: Rational {
		return Rational(denominator, numerator)
	}
	
	public var reduced: Rational {
		let gcd = greatestCommonFactor(numerator, denominator)
		
		return Rational(numerator / gcd, denominator / gcd)
	}
	
}

extension Rational: SignedNumber {
	
	public init(integerLiteral value: Int) {
		self.init(value, 1)
	}
	
	static public func == (lhs: Rational, rhs: Rational) -> Bool {
		return Double(lhs) == Double(rhs)
	}
	
	static public func < (lhs: Rational, rhs: Rational) -> Bool {
		return Double(lhs) < Double(rhs)
	}
	
	static public prefix func -(x: Rational) -> Rational {
		return Rational(-x.numerator, x.denominator)
	}
	
}

extension Rational: CustomStringConvertible {
	
	public var description: String {
		return "\(numerator)/\(denominator)"
	}
}
	
