module vmath

import math

@[noinit]
pub struct NonZeroInt {
	value int
}

pub fn NonZeroInt.new(n int) !NonZeroInt {
	if n == 0 {
		return error('Input must be a non-zero integer.')
	}
	return NonZeroInt{n}
}

// fract returns the fractional part of x.
pub fn fract(x f64) f64 {
	_, fract := math.modf(x)
	return fract
}

fn fib(n int) int {
	mut ans := [0, 1]
	for i in 2 .. n + 1 {
		ans << ans[i - 1] + ans[i - 2]
	}
	return ans[n]
}

fn fib2(n int) int {
	if n == 0 || n == 1 {
		return n
	}
	return fib2(n - 1) + fib2(n - 2)
}
