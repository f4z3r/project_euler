//! Largest prime factor
//!
//! Problem 3
//!
//! The prime factors of 13195 are 5, 7, 13 and 29.
//!
//! What is the largest prime factor of the number 600851475143 ?


use utils;

fn run(num: u64) -> u64 {
    (2..num).filter(|i| num % i == 0 && utils::is_prime(*i)).max().unwrap()
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_p003() {
        assert_eq!(run(13_195), 29);
    }
}
