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
One of the factors that deep Learning is so popular today is that frameworks such as TensorFlow and PyTorch are very useful. A neural net design, training, and inference such as classification are very easy to do using the frameworks.

Those who use it normally would regard these frameworks as "tools" or "libraries". But in fact, _these are programming languages._ More precisely, all deep learning frameworks can be considered as DSLs (Domain-Specific Languages) for deep learning computations. This DSL is usually embedded in another general-purpose language ​​such as Python.

The feature common to these DSLs is *differentiability*: A program written in the DSL can be differentiated automatically, and the internal parameters can be updated automatically according to the result of the differentiation.

Once I met a web page that wrote _"differentiable programming language"_ somewhere on the net. I do not remember exactly when it was or which site, but I remember it was around 2017.

After that, Yann LeCun, one of the deep learning's fathers who won the Turing Award this year, posted [this post](https://www.facebook.com/yann.lecun/posts/10155003011462143) on Facebook, on January 7, 2018.
> OK, Deep Learning has outlived its usefulness as a buzz-phrase.  
> Deep Learning est mort. Vive Differentiable Programming!

And this buzzed.

Maybe because this post became too famous, I was a little embarrassed to see a few sentences that "LeCun is an origin of 'differentiable programming'.” Furthermore, Gordon Plotkin (a master of programming language theory research) gave [a keynote address titled “Some Principles of Differential Programming Languages”](https://popl18.sigplan.org/details/POPL-2018-papers/76/Some-Principles-of-Differential-Programming-Languages) at POPL '18, the top conference on programming language theory. It was in early January 2018. So it contradicts the folklore that states LeCun originated the idea.

So I started to find out what the origin of this phrase is. It was the perfect timing that Prof. Plotkin came to Japan in March this year, and thanks to that, I was able to receive important tips from him.

## The origin

Prof. Plotkin said he first learned of this idea from [Chris Olah's blog post](http://colah.github.io/posts/2015-09-NN-Types-FP/) in 2015, which says that neural networks and type systems in functional languages are analogous.
In this post, the phrase "differentiable *functional* programming language" appears some times.

I could not find out any literature using words like "differentiable programming" before the post.
I sent Olah an email that asks if there was anyone he referred to. The reply was the following:

> I'm not aware of any consideration of "differentiable programming" exactly prior to my post, although it's possible there are things I am unaware of.  
>  I do think there are similar ideas floating around. For example, Leon Bottou has a line in [this paper](https://arxiv.org/pdf/1102.1808v3.pdf) drawing analogues between neural nets and list manipulation in LISP.  
(Note: he approved I post his reply.)

By the way, Yann LeCun had commented on Olah's post. So he has at least read it.

Then in 2016, Atılım Güneş Baydin had [a talk titled "Differentiable Programming"](https://www.cs.nuim.ie/~gunes/files/Baydin-MSR-Slides-20160201.pdf). Baydin used the phrase "differentiable programming" many times while referring to Olah's.

Furthermore, in this talk, he also referred to [David Dalrymple's essay](http://edge.org/response-detail/26794), which also used the phrase "differentiable programming" and wrote that neural networks and functional programs are similar.
~~I wanted to ask him the origin of his idea, but I could only find his Twitter account... so I still don't know if I can hear the details.~~  
Just after I published this post, I got in touch with Dalrymple. I was able to listen to various stories but he gave me the following testimony about this matter.

> I also have a strong reason to believe LeCun read my essay before popularizing the perspective, and I think it was a substantial influence. But I'd bet LeCun also read Olah's blog already so I t want to take much credit, except for streamlining the phrase by removing the word "functional."

When I asked if I can publish the testimonials on my blog, after some indecision, he asked me to include the following comments.

> I cited Olah's blog in the manuscript I sent to [EDGE.org](http://EDGE.org), but the editors removed the citation with references to outside works are against the editorial policy of [EDGE.org](http://EDGE.org) (which prioritizes self-containedness over other intellectuals like giving credits where credits is due). Removing the citation then made it seemingly implicit claiming novelty in the essay

I respect him trying to be sincere.

By the way, Baydin also wrote [a survey paper](http://jmlr.org/papers/volume18/17-468/17-468.pdf) in 2018, which says Chris Olah, David Dalrymple, and Yann LeCun are the proponents of "differentiable programming".

So, as far as I investigated, Chris Olah was the first person who gave the idea, and David Dalrymple gave the phrase "differentiable programming." Although Yann LeCun is not of the origin, it is undoubtedly his credit for making this idea very popular.


#### Acknowledgment
Special thanks to Gordon Plotkin, Chris Olah and David Dalrymple for kindly answering my rude questions for my wrighting this post.

#### Note on Aug 3
I added and revised some parts of this post according to an additional testimony from David Dalrymple.