# lumen-silex-slim
=====

# setup

```
make init
```

please write to your "/etc/hosts"  

```
127.0.0.1   silex.local.com
127.0.0.1   slim.local.com
127.0.0.1   lumen.local.com
```

# install all

```
make install
```

# bench

please install `siege` command

## bench lumen

first

```
make server -C lumen
```

second 

```
make bench-lumen
```

## bench silex

first

```
make server -C silex
```

second 

```
make bench-silex
```

## bench slim

first

```
make server -C slim
```

second 

```
make bench-slim
```

