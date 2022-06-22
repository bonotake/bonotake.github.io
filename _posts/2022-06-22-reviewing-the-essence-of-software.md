---
layout: post
title: '"The Essence of Software" proposes a whole new way of software design'
date: 2022-06-22
categories:
  - Software Engineering
tags:
  - Software design
mathjax: true
---
In this post, I would like to introduce the book "The Essence of Software", which is about a whole new way of thinking about software design.

- [The Essence of Software: Why Concepts Matter for Great Design - Amazon](https://www.amazon.com/Essence-Software-Concepts-Matter-Design/dp/0691225389/)

The author is Daniel Jackson, an MIT professor and one of the world's leading researchers in software engineering.
You may know him as an inventor of a formal method ["Alloy"](https://alloytools.org/). Formal methods are, to put it bluntly, methods that use mathematical logic to logically eliminate bugs in software.
(I once translated his Alloy book and published [the Japanese edition](https://amzn.to/3HIorg3).)

He published a new book last November, and I bought it almost the same day. But when I opened the book, I found something outrageous from the very beginning.

> My main research contribution in the 30 years since my PhD has been Alloy, a language for describing software design and analyzing them automatically. (snip) but I came to realize over time that the essence of software doesn't lie in any logic or analysis.  
> 
> (From "The Essence of Software," Chapter 1)

Reading the sentence that seemed to deny all of his own research that he had done up to that point, I remember feeling a shock as if I had been hit over the head with a sledgehammer.

I managed to regain my composure and read about a quarter of the way through after that, but at that point I honestly did not understand what he was trying to say. It was even painful to read.

But then, suddenly, I understood what he meant. From that point on, it was a lot of fun to read, and I was excited to turn the pages.

What he was writing about was a completely new way of thinking about software design from a novel perspective. But because it was so new and innovative, I had a hard time grasping the true meaning of the book.

Below is a description of what I understand as **the concept design** proposed in the book.

Traditionally, software design has been, without fear of misunderstanding, all about "how to write a program" in the end. If we compare it to the world of architecture, it designs from the viewpoint of how you should assemble the building materials in the end.

From this perspective, Object Oriented Design (OOD) can be compared to the contents of this book. Object orientation is a concept that was popular from the 90's to the early 2000's. It is a method of designing software as a collection of virtual objects,  their relationships, and interactions with each other.  
(You may know UML, including class diagrams, sequense diagrams, etc., which is the most famous notation for OOD. There may be some sites that still use it, though I don't see it around me much anymore... )

However, this was only from the perspective of developers, and those objects were not intended to be exposed to users.

On the other hand, the design of user interface and user experience, or UI/UX, was separated from so-called software design.

Daniel Jackson's idea was to design the mental model the users get from the software, prior to how to realize it.
Software does not have a physical entity, but rather virtual entities (e.g., "files" and "folders" in Windows and macOS) that users manipulate through keyboards, mice, and monitors. The mental model that consists of these virtual entities, or **concepts**, should be designed first, and placed at the center of the software.
To use an architectural analogy, we should first design what kind of things should be there and what kind of attention should be paid to the residents in order to make them feel comfortable and have a good experience.

The most obvious example of this concept is "trash box" in many OSes, mentioned in this book.
What experienced engineers are probably aware of is that the trash box is not for trashing files. Rather, it is a mechanism for easily restoring files that were inadvertently thrown away.  
But then, would a developer who wanted to be able to restore files come up with the concept of a "trash box" from there?

You can easily imagine that the "trash box" has a great UI/UX. For many of ordinary engineers, however, if they were to design a "file recovery" feature, they would probably just put a "file recovery" menu as one of many sub-menus that can be accessed from the menu bar at the edge of the screen. This would mean that all functions would be buried deep in nested menus, making the software difficult for the user to understand and find, even though the functions are well implemented.  
What's more, the concept also produces a brilliant way to implement it: it is hard to restore files that were deleted at the OS level, and in some cases, it will fail. However, since the "trash box" is just a special folder for moving files to be deleted, restoration can also be easily accomplished by moving files around.

This example can be seen as a rather typical UI design issue, but this book also provides a case of a shared folder in Dropbox as an example that cannot be fully explained within such a context. When user A and B share a folder and B deletes it, the folder for A may be deleted along with it, or it may remain undeleted, depending on the situation.
This actually is not a bug. However, because the mental model of the Dropbox developers are different from that of some users, the behavior seems very strange and confusing to them.
The concepts to be addressed here are "folders" and "synchronization". In particular, the attributes of synchronization is different between users and developers, which creates a discrepancy in their mental models. This problem is not just a UI problem, nor is it just an implementation problem.

The mental models derived from concepts should be at the center, the user interface should be a concise representation of them (this book calls it as *concept mapping*), and the underlying program should be written for the purpose of realizing them. This allows the developers (programmers), UI/UX designers, and users to share the same mental model. 

If there is a discrepancy between the mental model intended by the software provider and that held by the user, the software will be very difficult for the user to use, even though it doesn't have a bug.

This is what I read from his book, and probably what he wants to argue.

However, I am not sure if this book will be universally accepted for its intentions and significance, as it is an advocacy of a completely new way of thinking. Also, as he himself admits in the book, the concept design proposed in this book and the way to proceed with it still have some rough edges.
For example, the notation of concepts proposed in the book is clearly influenced by Alloy or other formal specification languages, where it includes so-called preconditions, postconditions, and invariants. However, such conditions are for checking logical consistency, and it is questionable whether they are always necessary for describing mental models.
(However, they may perhaps be necessary in the Dropbox case; the problem is very similar to ones Alloy has been trying to solve.)
Also, relationship to the latest UI/UX design methods is unorganized or at least not much discussed in this book.

However, the backbone of the idea is very sympathetic.
In fact, when I posted almost exactly what I wrote above on my Facebook page, I received quite a bit of feedback.

Incidentally, I received a rather interesting comments on Facebook at that time.
Several engineers with experience in the video game industry commented that users don't often get stumped by such mental models in games.

A variety of reasons were mentioned, but my own thought was that perhaps game designers are always doing what this book calls "concept design".
In video games, all of the functions provided to the user are replaced with in-game objects that do not destroy the game world (for example, players can save their play data with a "magic crystal", "typewriter", or something like that), or the fuctions have a carefully designed UI that does not cause stress to the player. This may be exactly what concept design is all about.  
In other words, there may be hints of good software design hidden in game design methods from the perspective of this book.

I think there is a lot of value to be pursued in the methodology proposed in this book. The current contents of the book are too rough, and I don't think the book has not been a hot topic at least in Japan, but if more and more people understand and support his ideas, it may become a bible in a few years. I feel this book has that much potential.
