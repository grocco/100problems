fn length<T>(list: &[T]) -> usize {
    list.len()
}

// now let's write it by hand, from scratch
fn length_by_hand<T>(list: &[T]) -> usize {
    let mut count = 0;
    for _ in list {
        count += 1;
    }
    count
}

// now let's be as functional as possible:
fn length_functional<T>(list: &[T]) -> usize {
    list.iter().count()
}

// now let's be functional using recursion similar to oicaml
fn length_functional_recursion<T>(list: &[T]) -> usize {
    if list.is_empty() {
        0
    } else {
        1 + length_functional_recursion(&list[1..])
    }
}

// now let's be functional but using tail recursion
fn length_functional_tail_recursion<T>(list: &[T]) -> usize {
    fn length_functional_tail_recursion_helper<T>(list: &[T], count: usize) -> usize {
        if list.is_empty() {
            count
        } else {
            length_functional_tail_recursion_helper(&list[1..], count + 1)
        }
    }
    length_functional_tail_recursion_helper(list, 0)
}

// now using pattern matching
fn length_pattern_matching<T>(list: &[T]) -> usize {
    match list {
        [] => 0,
        [_] => 1,
        [_, tail @ ..] => 1 + length_pattern_matching(tail),
    }
}


// now using pattern matching and tail recursion
fn length_pattern_matching_tail_recursion<T>(list: &[T]) -> usize {
    fn length_pattern_matching_tail_recursion_helper<T>(list: &[T], count: usize) -> usize {
        match list {
            [] => count,
            [_] => count + 1,
            [_, tail @ ..] => length_pattern_matching_tail_recursion_helper(tail, count + 1),
        }
    }
    length_pattern_matching_tail_recursion_helper(list, 0)
}


fn main() {
    // test cases
    assert_eq!(length(&[1, 2, 3]), 3);
    assert_eq!(length(&['a', 'b', 'c']), 3);
    assert_eq!(length(&["a", "b", "c"]), 3);
    assert_eq!(length::<i32>(&[]), 0);

    assert_eq!(length_by_hand(&[1, 2, 3]), 3);
    assert_eq!(length_by_hand(&['a', 'b', 'c']), 3);
    assert_eq!(length_by_hand(&["a", "b", "c"]), 3);
    assert_eq!(length_by_hand::<i32>(&[]), 0);

    assert_eq!(length_functional(&[1, 2, 3]), 3);
    assert_eq!(length_functional(&['a', 'b', 'c']), 3);
    assert_eq!(length_functional(&["a", "b", "c"]), 3);
    assert_eq!(length_functional::<i32>(&[]), 0);

    assert_eq!(length_functional_recursion(&[1, 2, 3]), 3);
    assert_eq!(length_functional_recursion(&['a', 'b', 'c']), 3);
    assert_eq!(length_functional_recursion(&["a", "b", "c"]), 3);
    assert_eq!(length_functional_recursion::<i32>(&[]), 0);

    assert_eq!(length_functional_tail_recursion(&[1, 2, 3]), 3);
    assert_eq!(length_functional_tail_recursion(&['a', 'b', 'c']), 3);
    assert_eq!(length_functional_tail_recursion(&["a", "b", "c"]), 3);
    assert_eq!(length_functional_tail_recursion::<i32>(&[]), 0);

    assert_eq!(length_pattern_matching(&[1, 2, 3]), 3);
    assert_eq!(length_pattern_matching(&['a', 'b', 'c']), 3);
    assert_eq!(length_pattern_matching(&["a", "b", "c"]), 3);
    assert_eq!(length_pattern_matching::<i32>(&[]), 0);

    assert_eq!(length_pattern_matching_tail_recursion(&[1, 2, 3]), 3);
    assert_eq!(length_pattern_matching_tail_recursion(&['a', 'b', 'c']), 3);
    assert_eq!(length_pattern_matching_tail_recursion(&["a", "b", "c"]), 3);
    assert_eq!(length_pattern_matching_tail_recursion::<i32>(&[]), 0);

    println!("All tests passed!");
}
