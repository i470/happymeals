## Axiom burn address creation script

### burnaddress.py: create a axiom burn address

  - Original author: James C. Stroud
  - This program requires [base58](https://pypi.python.org/pypi/base58/0.2.1).

Call the program with a template burn address as the only argument:

    ```
    burnaddress.py.py AxiomBurnAddressBurnPremineXXXXXX
    AxiomBurnAddressBurnPremineXmtXTL
    ```

For instructions, call the program with no arguments::

    ```
    burnaddress.py.py
    usage: burnaddress.py.py TEMPLATE
       TEMPLATE - 34 letters & numbers (no zeros)
                  the first two are coin specific
    ```

An example template is accessible using "test" as the argument::

    ```
    burnaddress.py.py test
    AxiomBurnAddressBurnPremineXmtXTL
    ```

Validate bitcoin burn addresses at [official axiom blockexplorer](https://explorer.axiom.com/address/)

