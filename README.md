# samp-uuid-rs

[![sampctl](https://img.shields.io/badge/sampctl-samp--uuid--rs-2f2f2f.svg?style=for-the-badge)](https://github.com/carlos-menezes/samp-uuid-rs)

This library provides a [UUID v4](<https://en.wikipedia.org/wiki/Universally_unique_identifier#Version_4_(random)>) generator function.

UUIDs are generally used for identifying information that needs to be unique within a system or network thereof. Their uniqueness and low probability in being repeated makes them useful for being associative keys in databases and identifiers for physical hardware within an organization.

## Installation

Simply install to your project:

```bash
sampctl package install carlos-menezes/samp-uuid-rs
```

Include in your code and begin using the library:

```pawn
#include <uuid>
```

## Usage

```cpp
new dest[UUID_LEN];
UUID(dest);
printf("%s", dest); // xxxxxxxx-xxxx-Mxxx-Nxxx-xxxxxxxxxxxx
```

## Build

To build, run:

```bash
make build
```

## Testing

To test, run:

```bash
make test
```
