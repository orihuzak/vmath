module vmath

import math

// fract returns the fractional part of x.
pub fn fract(x f64) f64 {
	_, fract := math.modf(x)
	return fract
}
