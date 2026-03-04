# VerifyThis in Picinae

Some examples of [Picinae](https://github.com/CharlesAverill/Picinae) proofs for the challenges provided by [VerifyThis](https://verifythis.github.io/onsite/archive/).

## Progress

| Challenge | Progress |
| --- | --- |
| [Minimum Excludant](https://verifythis.github.io/onsite/archive/2025/challenges/verifyThis2025-Challenge-1.pdf) | - [ ] Naive<br>- [ ] Boolean Marks<br>- [ ] Mutated Array<br>- [ ] Sorted Array |

## Building

```bash
opam install coq.8.20.1

git clone https://github.com/CharlesAverill/Picinae.git && cd Picinae
make -j
cd ..

git clone https://github.com/CharlesAverill/vt_pic.git && cd vt_pic
make
