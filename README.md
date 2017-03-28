# Rational
A lightweight library for rational numbers in Swift.

## Installation
```swift
.Package(url: "https://github.com/dmcarth/Rational.git", majorVersion: 1, minor: 0)
```

## Usage
```swift
import Rational

let ratio: Rational = 1/4
```

Rational supports all of same functionality you'd expect from an native number type like Int or a Float.

```swift
let a: Rational = 1/4
let b: Rational = 2/4

let c = a + b   // 3/4
let d = c / a   // 3/1

let dict: [Rational: String] = [
    1/4: "One quarter",
    1/2: "One half",
    3/4: "Three quarters"
]
```