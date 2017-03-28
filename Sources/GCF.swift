
func leastCommonMultiple(_ lhs: Int, _ rhs: Int) -> Int {
	return (lhs * rhs) / greatestCommonFactor(lhs, rhs)
}

func greatestCommonFactor(_ lhs: Int, _ rhs: Int) -> Int {
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
