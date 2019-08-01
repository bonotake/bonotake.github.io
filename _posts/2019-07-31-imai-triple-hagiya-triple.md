---
layout: post
title: "Imai triple, Hagiya triple, and witnessed Hoare triple"
date: 2019-07-31
categories:
  - Deep Learning and CS
tags:
  - DL and CS
mathjax: true
---
As mentioned, the last post ["Deep learning from a computer science perspective"](https://bonotake.github.io/deep%20learning%20and%20cs/2019/07/29/deep-learning-from-cs.html) was a translation of my Japanese article "計算機科学から見たディープラーニング."

And based on this article, Prof. [Masami Hagiya](https://hagi.is.su-tokyo.ac.jp/~hagiya/), Dr. [Hiroshi Maruyama](https://researchmap.jp/hiroshi.maruyama/?lang=english) and I had a three-way conversation at an academic workshop.

This post is an introduction to the talk presented by Masami, who specializes in logic and theoretical computer science, at the conversation. He discussed deeper based on my article. [The original material](https://www.slideshare.net/MLSE/ss-154452927) is in Japanese, but I translated some of the slides into English.

## Hoare triple and Imai triple
This is a description of conventional Hoare triple.
> ![Conventional Hoare triple](/assets/images/hagiya_triple/hoare_triple.png)

For the triple consisting of the precondition `P`, the program `c` and the postcondition `Q`, a pair `(i, o)` comes out, which is a test case.
The `i` is an input and `o` is a test oracle corresponds to the input.
`i` satisfies `P`, and `(i, o)` satisfies `Q`.

What I wrote above is about traditional software, but **[Software 2.0](https://medium.com/@karpathy/software-2-0-a64152b37c35)**, a new programming paradigm based on deep learning, enhances this framework.

> ![Imai triple](/assets/images/hagiya_triple/imai_triple.png)

This composition is exactly what I wrote in [the last post](https://bonotake.github.io/deep%20learning%20and%20cs/2019/07/29/deep-learning-from-cs.html). (That's why he named it after me. I'm a bit shy to write this name...)

It is the point that this employs `{P}[c]{Q}` instead of `{P}c{Q} `, and `[c]` in the middle is not a program but a program schema ($$\approx$$ a set of programs that meet some requirements). In deep learning, this corresponds to a neural network architecture.  
And further, there is a trainer `t`, which will automatically search for and output an optimal program `c`  when `t` takes a test set `{(i, o)}`.

## Hagiya triple

Extending this further, Masami argued that there is a meta-strategy `m` that determines the three of `{P}[c]{Q}`, `{(i, o)}`, and `t`.

> ![Meta strategy](/assets/images/hagiya_triple/meta_strategy.png)

This is _Hagiya triple_, a new framework that prescribes this meta-strategy.

> ![Hagiya triple](/assets/images/hagiya_triple/hagiya_triple.png)

Plus, Masami considers that this meta-strategy contains a set of machine learning engineers `E`.

> ![Hagiya triple with engineers](/assets/images/hagiya_triple/ht_with_engineers.png)

Essentially, the meta-strategy is a function with three parameters `P, Q`, and `{E}`. In the current situation, however, the meta-strategy `m(P, Q)` is *to collect a set of competent engineers `{E}`, and the excellent engineer `E`s design a good network,* which is quite dependent on the engineers' skills and almost non-scientific one. This is what he asks the public.
The question is how to make this `{E}` controllable in a theoretical framework to make deep learning science.

## Witnessed Hoare triple
Another suggestion of Prof. Hagiya is this witnessed Hoare triple.

> ![Witnessed Hoare triple](/assets/images/hagiya_triple/witnessed_hoare_triple.png)

Currently, the `Q` in my triple is not deterministic but statistical, but `Q'` with a witness `w` must be deterministic.
We don't have any way to find such `w` and construct `Q'` so far, but it might be a right research direction to find the way.
