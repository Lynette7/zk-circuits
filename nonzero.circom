pragma circom 2.1.9;

template NonZero() {
    signal input in;
    signal inverse;

    inverse <-- 1 / in;
    1 === in * inverse;
}

template Main() {
    signal input a;
    signal input b;
    component nz = NonZero();
    nz.in <== a;
    0 === a * b;
}

component main = Main();