# gomock-migrate

## Error

```
$ cd mylib
$ go generate ./...                     
panic: gob: registering duplicate types for "*model.ArrayType": *model.ArrayType != *model.ArrayType

goroutine 1 [running]:
encoding/gob.RegisterName({0x10fad4f, 0x10}, {0x110b460, 0xc000010468})
        /usr/local/go/src/encoding/gob/type.go:820 +0x3f4
encoding/gob.Register({0x110b460, 0xc000010468})
        /usr/local/go/src/encoding/gob/type.go:874 +0x1c5
github.com/golang/mock/mockgen/model.init.0()
        $HOME/workshop/go/pkg/mod/github.com/golang/mock@v1.6.0/mockgen/model/model.go:146 +0x39
panic: gob: registering duplicate types for "*model.ArrayType": *model.ArrayType != *model.ArrayType

goroutine 1 [running]:
encoding/gob.RegisterName({0x10fad4f, 0x10}, {0x110b460, 0xc0000a0450})
        /usr/local/go/src/encoding/gob/type.go:820 +0x3f4
encoding/gob.Register({0x110b460, 0xc0000a0450})
        /usr/local/go/src/encoding/gob/type.go:874 +0x1c5
github.com/golang/mock/mockgen/model.init.0()
        $HOME/workshop/go/pkg/mod/github.com/golang/mock@v1.6.0/mockgen/model/model.go:146 +0x39
prog.go:14:2: no required module provides package github.com/bcho/gomock-migrate/mylib: go.mod file not found in current directory or any parent directory; see 'go help modules'
prog.go:12:2: no required module provides package go.uber.org/mock/mockgen/model: go.mod file not found in current directory or any parent directory; see 'go help modules'
2023/08/04 18:17:50 Loading input failed: exit status 1
foo.go:5: running "mockgen": exit status 1
```