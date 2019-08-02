---
layout: post
title: "Where did \"differentiable programming\" come from?"
date: 2019-08-02
categories:
  - Deep Learning and CS
tags:
  - DL and CS
mathjax: true
---
One of the factors that deep Learning is so popular today is that frameworks such as TensorFlow and PyTorch are very useful. a neural net design, training, and inference such as classification are very easy to do using the frameworks.

Those who use it normally would regard these frameworks as "tools" or "libraries". But in fact, _these are programming languages._ More precisely, all deep learning frameworks can be considered as DSLs (Domain-Specific Languages) for deep learning computations. This DSL is usually embedded in another general purpose language ​​such as Python.

The feature common to these DSLs is *differentiability*: A program written in the DSL can be differentiated automatically, and the internal parameters can be updated automatically according to the result of the differentiation.

Once I met a web page that wrote _"differentiable programming language"_ somewhere on the net. I do not remember exactly when it was or which site, but I remember it was around 2017.

After that, Yann LeCun, one of deep Learning's fathers who won the Turing Award this year, posted [this post](https://www.facebook.com/yann.lecun/posts/10155003011462143) on Faebook, on January 7, 2018.
> OK, Deep Learning has outlived its usefulness as a buzz-phrase.  
> Deep Learning est mort. Vive Differentiable Programming!

And this buzzed.

Maybe because this post became too famous, I was a little embarrassed to see a few sentences that "LeCun is an origin of 'differentiable programming'.” Furthermore, Gordon Plotkin (a master of programming language theory research) gave [a keynote address titled “Some Principles of Differential Programming Languages”](https://popl18.sigplan.org/details/POPL-2018-papers/76/Some-Principles-of-Differential-Programming-Languages) at POPL '18, the top conference on programming language theory. It was in early January, 2018. So it contradicts the folklore that states LeCun originated the idea.

So I started to find out what the origin of this phrase is. It was the perfect timeing that Prof. Plotkin came to Japan in March this year, and thanks to that, I was able to receive important tips from him.

## The origin

Prof. Plotkin said he first learned of this idea from [Chris Olah's blog post](http://colah.github.io/posts/2015-09-NN-Types-FP/) in 2015, which says that neural networks and type systems in functional languages are analogous.
In this post, the phrase "differentiable *functional* programming language" appears some times.

I could not find out any literature using words like "differentiable programming" before the post.
I sent Chris an email that asks if there was anyone she refered to. The reply was the following:

> I'm not aware of any consideration of "differentiable programming" exactly prior to my post, although it's possible there are things I am unaware of.  
>  I do think there are similar ideas floating around. For example, Leon Bottou has a line in [this paper](https://arxiv.org/pdf/1102.1808v3.pdf) drawing analogues between neural nets and list manipulation in LISP.  
(Note: she approved I post her reply.)

By the way, Yann LeCun had commented on Chris's post. So he has at least read it.

Then in 2016, Atılım Güneş Baydin had [a talk titled "Diffferentiable Programming"](https://www.cs.nuim.ie/~gunes/files/Baydin-MSR-Slides-20160201.pdf). Baydin used the phrase "differentiable programming" many times while referring to Chris's.

Furthermore, in this talk, he also refered to [David Dalrymple's essay](http://edge.org/response-detail/26794), which also used the phrase "differentiable programming" and wrote that neural networks and functional programs are similar.
I wanted to ask him the origin of his idea, but I could only find his Twitter account... so I still don't know if I can hear the details.

Baydin also wrote [a survey paper](http://jmlr.org/papers/volume18/17-468/17-468.pdf) in 2018, which says Chris Olah, David Dalrymple, and Yann LeCun are the proponents of "differentiable programming".

So, as far as I investigated, Chris Olah was the first person who gave the idea and the phrase, and David Dalrymple might have thought about this independently. Although Yann LeCun is not of the origin, it is undoubtedly his credit for making this idea very popular.


#### Acknowledgment
Special thanks to Gordon Plotkin and Chris Olah for answering my rude questions for my wrighting this post.
