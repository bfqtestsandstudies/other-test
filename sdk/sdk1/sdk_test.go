package sdk1

import "testing"

func TestSDK(t *testing.T) {
	if ExampleSDK() != "Example SDK" {
		t.Errorf("ExampleSDK() = %q, want %q", ExampleSDK(), "Example SDK")
	}
}
