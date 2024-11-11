pragma circom 2.1.6;

template Example () {
    signal input x1;
    signal input x2;
    signal input x3;
    signal input x4;

    signal input y1;
    signal input y2;

    signal input out;

    y1 === x1 + x2;
    y1 === y2 * x3;
    y2 === out + x4;
}

component main { public [ out ] } = Example();

INPUT = {
    "x1" : "6",
    "x2" : "4",
    "x3" : "5",
    "x4" : "1",
    "y1" : "10",
    "y2" : "2",
    "out" : "1"
}