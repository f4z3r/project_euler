//! Smallest multiple
//! Problem 5
//! 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
//!
//! What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?


fn run(val: i32) -> i32 {
    let mut guess = 0;
    let mut found = false;
    while !found {
        found = true;
        guess += val;
        for num in 1..=val {
           if guess % num != 0 {
               found = false;
               break;
           }
        }
    }
    guess
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_p005() {
        assert_eq!(run(10), 2520);
    }
}
