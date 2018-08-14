//! Multiples of 3 and 5
//!
//! Problem 1
//!
//! If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these
//! multiples is 23.
//!
//! Find the sum of all the multiples of 3 or 5 below 1000.

fn run(num: usize) -> usize {
    (1..num).fold(0, |acc, x| if x % 3 == 0 || x % 5 == 0 {acc + x} else {acc})
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_p001() {
        assert_eq!(run(10), 23);
        assert_eq!(run(1_000), 233_168);
    }
}
