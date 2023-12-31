fn last_two<T>(list: &[T]) -> Option<&[T]> {
    if list.len() < 2 {
        None
    } else {
        Some(&list[list.len() - 2..])
        // what is the above line doing?
        // list.len() - 2.. is a range from the second to last element to the last element
        // &list[list.len() - 2..] is a slice of the list from the second to last element to the last element
        // Some(&list[list.len() - 2..]) is an Option<&[T]> that is Some if the list has at least two elements
        // And what is &?
        // & is the reference operator
        // It takes a value and returns a reference to that value
        // References are immutable by default
        // So &list[list.len() - 2..] is an immutable reference to a slice of the list from the second to last element to the last element
        // And what is Option?
        // Option is an enum that represents the possibility of a value being present or absent
        // It has two variants: Some and None
        // Some contains a value, and None contains no value
        // Option<&[T]> reads as "an Option that contains a reference to a slice of type T"
        // The compiler complains saying it should return Option<&[{integer}; 2]> instead of Option<&[T]>
        // This is because the compiler can't infer the type of the slice
        // So we have to tell it what type the slice is by using the turbofish operator: ::<>
        // The turbofish operator is ::<> and it is used to specify the type of a generic function
        // So last_two::<i32>(&[]) is an Option<&[{integer}; 2]> that is None
        // And last_two::<i32>(&[1, 2, 3]) is an Option<&[{integer}; 2]> that is Some(&[2, 3])
        // What is the difference between Option<&[{integer}; 2]> and Option<&[T]>?
        // Option<&[{integer}; 2]> is an Option that contains a reference to a slice of two integers
        // Option<&[T]> is an Option that contains a reference to a slice of any type
        // So Option<&[{integer}; 2]> is more specific than Option<&[T]>
    }
}

fn main() {
    // Test cases
    assert_eq!(last_two(&[1, 2, 3]), Some(&[2, 3][..]));
    assert_eq!(last_two(&['a', 'b', 'c']), Some(&['b', 'c'][..]));
    assert_eq!(last_two(&["a", "b", "c"]), Some(&["b", "c"][..]));
    assert_eq!(last_two::<i32>(&[]), None);
    // What was that [..]?
    // [..] is a range from the first element to the last element
    // So &[2, 3][..] is a slice of the array from the first element to the last element
    // And &[2, 3][..] is the same as &[2, 3], howeverm their types are different,
    // the first is a slice of the array and the second is a reference to the array
}
