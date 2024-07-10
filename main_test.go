package main

import "testing"

func TestPing(t *testing.T) {
	got := ping()
	if got != "kut" {
		t.Errorf("ping() =%v; want pong", got)
	}
}
