pragma circom 2.0.3;

include "../node_modules/circomlib/circuits/mimcsponge.circom";

template Main() {
  signal input x;

  signal output out;

  component mimc = MiMCSponge(1, 220, 1);
  mimc.ins[0] <== x;
  mimc.k <== 0;

  out <== mimc.outs[0];
}

component main = Main();
