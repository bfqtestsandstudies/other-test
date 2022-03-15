package main

import "testing"

func TestHello(t *testing.T) {
	if Hello() != "Hello" {
		t.Errorf("Expected: Hello. Return %s", Hello())
	}
}
