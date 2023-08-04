package mylib

import "github.com/bcho/gomock-migrate/legacylib"

//go:generate mockgen . MyInterface

type MyInterface interface {
	Foo()
}

func Foo() {
	legacylib.Foo()
}
