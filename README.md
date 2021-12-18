## Evaluate booleans using bison
A simple shell used to evaluate boolean expressions

### Build
To build the simple project run
```bash
make eval
```
### Run
```bash
./eval
```

### Usage example
```bash
> true & (false | true)
```
it should return
```bash
> true & (false | true)
> 1
```