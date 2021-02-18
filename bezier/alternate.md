---
layout: default
---

[<- go back](https://alosola.github.io/trajectory/)

## Alternate representations of Bézier Curves

A Bézier curve can also be described as a multiplication between an exponent vector containing the parametric variable and a coefficient matrix which scales each point:

$B(t)=\left(\begin{bmatrix} 1 \\ t^{1} \\ t^{2} \\ r^{3} \\ r^{4} \end{array}\right)^T \left(\begin{array}{ccccc} 1 & 0 & 0 & 0 & 0 \\ -4 & 4 & 0 & 0 & 0 \\ 6 & -12 & 6 & 0 & 0 \\ -4 & 12 & -12 & 4 & 0 \\ 1 & -4 & 6 & -4 & 1 \end{array}\right)\left(\begin{array}{c} P_{0} \\ P_{1} \\ P_{2} \\ P_{3} \\ P_{4} \end{bmatrix} \right)$
