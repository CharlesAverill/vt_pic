# VerifyThis in Picinae

Some examples of [Picinae](https://github.com/CharlesAverill/Picinae) proofs for the challenges provided by [VerifyThis](https://verifythis.github.io/onsite/archive/).

## Progress

| Challenge | Version | Progress |
| --- | --- | --- |
| [Minimum Excludant](https://verifythis.github.io/onsite/archive/2025/challenges/verifyThis2025-Challenge-1.pdf) | [Naive](./src/min_ex.c) | [In Progress](./theories/min_ex_proofs.v) |
| | Boolean Marks | |
| | Mutated Array | |
| | Sorted Array | |

## Building

```bash
opam install coq.8.20.1

git clone https://github.com/CharlesAverill/Picinae.git && cd Picinae
make -j
cd ..

git clone https://github.com/CharlesAverill/vt_pic.git && cd vt_pic
make
