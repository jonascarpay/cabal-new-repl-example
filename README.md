# `cabal new-repl` module loading example

On load, `cabal new-repl` only imports 1 module:

```shell
[cached-nix-shell:~/Dev/repl-module-example]$ cabal new-repl
Warning: The package list for 'hackage.haskell.org' is 21 days old.
Run 'cabal update' to get the latest list of available packages.
Resolving dependencies...
Build profile: -w ghc-8.8.3 -O1
In order, the following will be built (use -v for more details):
 - repl-module-example-0 (lib) (configuration changed)
Configuring library for repl-module-example-0..
Preprocessing library for repl-module-example-0..
GHCi, version 8.8.3: https://www.haskell.org/ghc/  :? for help
Loaded GHCi configuration from /nix/store/f88yhq88xq8mjxlq4rvr1b5kap0l53cp-hm_ghciConf
[1 of 2] Compiling Module1          ( Module1.hs, interpreted )
[2 of 2] Compiling Module2          ( Module2.hs, interpreted )
Ok, two modules loaded.
*Module1
λ> 
```

Specifically, it seems it only loads the top module in the cabal `exposed-modules` section
