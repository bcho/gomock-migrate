module github.com/bcho/gomock-migrate/mylib

go 1.20

replace github.com/bcho/gomock-migrate/legacylib => ../legacylib

require github.com/bcho/gomock-migrate/legacylib v0.0.0-00010101000000-000000000000

require (
	github.com/golang/mock v1.6.0 // indirect
	go.uber.org/mock v0.2.0 // indirect
)
