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
