package main

import "errors"

// standard function
func last_element[T any](arr []T) T {
	return arr[len(arr)-1]
}

// recursive function
func last_element_rec[T any](arr []T) (T, error) {
	if len(arr) == 0 {
		return *new(T), errors.New("Array is empty")
	} else if len(arr) == 1 {
		return arr[0], nil
	} else {
		return last_element_rec(arr[1:])
	}
}
