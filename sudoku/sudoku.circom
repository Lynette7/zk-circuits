pragma circom 2.1.9;

template NonEqual() {
    signal input in0;
    signal input in1;
    signal inverse;

    inverse <-- 1 / (in0 - in1);
    1 === inverse * (in0 - in1);
}