# VerifyThis in Picinae

Some examples of [Picinae](https://github.com/CharlesAverill/Picinae) proofs for the challenges provided by [VerifyThis](https://verifythis.github.io/onsite/archive/).

## Progress

| Year | Challenge | Version | Verification |
| --- | --- | --- | --- |
| 2025 | [Minimum Excludant](https://verifythis.github.io/onsite/archive/2025/challenges/verifyThis2025-Challenge-1.pdf) | [Naive](./src/min_ex/min_ex.c) | [Security and Correctness](./theories/min_ex/mex0_proofs.v) |
| | | [Boolean Marks](./src/min_ex/min_ex.c) | [In Progress](./theories/min_ex/mex1_proofs.v) |
| | | Mutated Array | |
| | | Sorted Array | |
| 2011 | [Maximum in Array](https://verifythis.github.io/onsite/archive/2011/report-cost-competition-2011.pdf) | [Elimination](./src/max/max.c) | [In Progress](./theories/max/max_proofs.v) |

## Building

```bash
opam install coq.8.20.1

git clone https://github.com/CharlesAverill/Picinae.git && cd Picinae
make -j
cd ..

git clone https://github.com/CharlesAverill/vt_pic.git && cd vt_pic
make
```
