package testpkg

import "testing"

func TestPKG(t *testing.T) {
	if ExamplePKG() != "Example PKG" {
		t.Errorf("ExamplePKG() = %q, want %q", ExamplePKG(), "Example PKG")
	}
}
