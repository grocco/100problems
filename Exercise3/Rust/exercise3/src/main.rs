fn nth<T>(list: &[T], n: usize) -> Option<&T> {
    list.get(n)
}

fn main() {
    // Test cases
    assert_eq!(nth(&[1, 2, 3], 0), Some(&1));
    assert_eq!(nth(&[1, 2, 3], 1), Some(&2));
    assert_eq!(nth(&[1, 2, 3], 2), Some(&3));
    assert_eq!(nth::<i32>(&[], 0), None);
    assert_eq!(nth::<i32>(&[], 1), None);
    println!("All tests passed!");
}
