pragma circom 2.1.6;

include "circomlib/poseidon.circom";
// include "https://github.com/0xPARC/circom-secp256k1/blob/master/circuits/bigint.circom";

template Num2Bits (nBits) {
    signal input in;

    signal input b[nBits];

    var accum;
    for (var i = 0; i < nBits; i++) {
        accum += (2 ** i) * b[i];
    }
    in === accum;

    for (var i = 0; i < nBits; i++) {
        0 === b[i] * (b[i] - 1);
    }
}

component main { public [ b ] } = Num2Bits(4);

/* INPUT = {
    "in" : "11",
    "b":["1", "1", "0", "1"]
} */