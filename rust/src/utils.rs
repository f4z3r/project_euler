//! utility module containing shared functionality for the problems


pub fn is_prime(num: u64) -> bool {
    if num <= 1 { return false }
    if num <= 3 { return true }
    if num % 2 == 0 || num % 3 == 0 { return false }

    let mut i = 5_u64;
    while i * i <= num {
        if num % i == 0 || num % (i + 2) == 0 { return false }
        i += 6;
    }
    true
}

pub struct FibRange {
    curr: u64,
    next: u64,
    max: Option<u64>,
    max_count: Option<u64>,
    count: u64,
}

impl FibRange {
    pub fn new() -> FibRange {
        FibRange {
            curr: 0,
            next: 1,
            max: None,
            max_count: None,
            count: 0,
        }
    }

    /// Makes the iterator stop when the value of the returned fibonacci number has reached max.
    pub fn with_max(max: u64) -> FibRange {
        let mut range = FibRange::new();
        range.max = Some(max);
        range
    }

    /// Makes the iterator stop when the number of returned values has reached the limit.
    pub fn with_count_limit(max: u64) -> FibRange {
        let mut range = FibRange::new();
        range.max_count = Some(max);
        range
    }
}

impl Iterator for FibRange {
    type Item = u64;

    fn next(&mut self) -> Option<u64> {
        let temp = self.curr;
        self.curr = self.next;
        self.next += temp;

        if let Some(max_count) = self.max_count {
            if max_count <= self.count { return None }
        }
        if let Some(max) = self.max {
            if max <= self.curr { return None }
        }

        self.count += 1;

        Some(self.curr)
    }
}

