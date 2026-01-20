# Prime_No – Prime Number Generation using SystemVerilog Constraints

This folder contains a SystemVerilog example that demonstrates how to generate **prime numbers using constrained randomization** and validate them using a deterministic algorithm.

---

## 📌 Objective

To generate random numbers within a given range and ensure that only **prime numbers** are accepted using:

- Constraint randomization  
- Post-randomization validation  
- Efficient prime checking logic  

This example is useful for understanding **constraint solvers**, **post_randomize() hooks**, and **algorithmic validation** in SystemVerilog.

---

## 🧠 Design Approach

The design follows three main steps:

### 1. Random Number Generation

```sv
rand int num;

constraint range_c {
  num inside {[2:100]};
}
