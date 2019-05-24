# isEven: tests if the past integer is an even number

![alt text](https://travis-ci.org/burner/iseven.svg)
[![Coverage](https://codecov.io/gh/burner/iseven/branch/master/graph/badge.svg)](https://codecov.io/gh/burner/iseven)
[![Latest version](https://img.shields.io/dub/v/dscanner.svg)](http://code.dlang.org/packages/iseven)


```d
assert( isEven(0));
assert(!isEven(1));
assert( isEven(2));

assert( isEven(-0));
assert(!isEven(-1));
assert( isEven(-2));
```

More of a joke, but a nice example how to test with different input types,
get the ci set up and other things.
