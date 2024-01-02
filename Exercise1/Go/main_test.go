package main

import (
	"testing"
)

func TestLastElement(t *testing.T) {
	var tests = []struct {
		input       []int
		expected    int
		expectedErr string
	}{
		{[]int{1, 2, 3}, 3, ""},
		{[]int{4, 5, 6}, 6, ""},
		{[]int{7, 8, 9}, 9, ""},
		{[]int{}, 0, "Array is empty"},
	}

	for _, test := range tests {
		output, err := last_element_rec(test.input)

		// Check if an error was expected and if it occurred
		if test.expectedErr != "" {
			if err == nil || err.Error() != test.expectedErr {
				t.Errorf("Test Failed: %v inputted, expected error %v, but received %v", test.input, test.expectedErr, err)
			}
		} else if err != nil {
			t.Errorf("Test Failed: %v inputted, did not expect error but received %v", test.input, err)
		} else if output != test.expected {
			t.Errorf("Test Failed: %v inputted, %v expected, received: %v", test.input, test.expected, output)
		} else {
			t.Logf("Test Passed: %v inputted, received: %v", test.input, output)
		}
	}
}
