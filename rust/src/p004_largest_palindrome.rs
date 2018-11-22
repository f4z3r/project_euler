//! Largest palindrome product
//!
//! Problem 4
//!
//! A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers
//! is 9009 = 91 × 99.
//!
//! Find the largest palindrome made from the product of two 3-digit numbers.

fn run(val: u64) -> u64 {
    let mut max_val = 0;
    for i in 0..val {
        for j in 0..val {
            let test_val = i * j;
            if is_palindrome(test_val) {
                if test_val > max_val {
                    max_val = test_val
                }
            }
        }
    }
    max_val
}

fn is_palindrome(val: u64) -> bool {
    let val_str = val.to_string();
    for (ch1, ch2) in val_str.chars().zip(val_str.chars().rev()) {
        if ch1 != ch2 {
            return false;
        }
    }
    true
}


#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_p004() {
        assert_eq!(run(100), 9009);
    }
}
