fn last<T>(list: &[T]) -> Option<&T> {
    list.last()
}

fn main() {
    assert_eq!(last(&[1, 2, 3]), Some(&3));
    assert_eq!(last(&['a', 'b', 'c']), Some(&'c'));
    assert_eq!(last(&["a", "b", "c"]), Some(&"c"));
    assert_eq!(last::<i32>(&[]), None);
}
