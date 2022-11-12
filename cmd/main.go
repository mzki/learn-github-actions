package main

import (
	"flag"
	"fmt"

	"golang.org/x/time/rate"
)

func main() {
	flag.Parse()
	args := flag.Args()

	s := rate.Sometimes{Every: 2}
	fmt.Println("arguments (every 2 spans): ")
	for i := 0; i < len(args); i++ {
		s.Do(func() { fmt.Println(i+1, ":", args[i]) })
	}
}
