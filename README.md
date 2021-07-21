Code to reproduce the doctest + quasiquote issue
================================================

How to try with stack
---------------------

    stack test

How to try with nix
-------------------

    nix-build

Result
------

- Expected output:
  Should be the same as the stack test output (success and two tests run)
- Actual output:
  Fails with a .so file not found

Other information
-----------------

- Removing the (useless) dependency on test-doctest-nix in the package.yaml fixes the issue, but it’s just a symptom (in other projects it’s not sufficient)
- Removing the QuasiQuote seems to correctly fix the issue.
- It seems like TemplateHaskell (of which QuasiQuote is an extension) is working fine.
