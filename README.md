# Circom HDL

Circom is a hardware description language used to programme zero knowledge circuits.

More specifically,it's used to create Rank 1 Constraint Systems.

A Rank 1 Constraint System (R1CS) is an arithmetic circuit which requires that each equality constraint has one multiplication (and no restriction on the number of additions) i.e.

```bash
G1 * G2 -> GT
```

This makes the representation of the arithmetic circuit compatible with the use of bilinear pairings. The output of a pairing cannot be paired again, as an element in GT cannot be used as part of the input of another pairing. Hence, we only allow one multiplication per constraint.
