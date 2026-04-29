---
layout: post
title: He interviewed 20+ Engineers. Here's why Engineers need the Humanities
published: false
tags: article, rebuttal, programming, 100 days to offload
---

### or: "Unhinged LinkedIn Posting breaks containment, infects Medium.com"

Every time morbid curiosity tempts me to look behind the Medium Paywall a new
horror awaits. The last time I looked it was an AI-generated article
advertising an AI-generated book about how you can use AI to make money writing
books and articles, signed by a business name. Todays eyeroll comes from ["I
Interviewed 20+ Engineers. Here's Why Most Can't Code." by The Latency
Gambler](https://medium.com/@kanishks772/i-interviewed-20-engineers-heres-why-most-can-t-code-b647d23f8c89)[^archive]
who has interviewed 23 people for an SDE-2[^1] position over the past year.

This seems to be a change of pace, because before he'd interviewed from Intern
all the way to SDE-1*

```
Problem 1 (Intern/SDE-1):
"Design a rate limiter that allows 100 requests per user per hour"
```

This is a great question for an intern in Comp-Sci, it's probably something
they just learned in college; but he complains about "Algorithm Memorizers" who
ask clarifying questions about the parameters of the request? Some of these
questions do point towards a lack of understanding, but sometimes questions are
asked to buy time for further consideration and avoid awkward silences. Seems
like he's already tossing out Good Developers for doing what they should do,
learning strategies and working with clients (or interviewers) to solve
problems.

```
Problem 2 (SDE-2):
"Implement a cache with TTL that can handle 10k ops/sec"
```

 he only offers more complaints about clarifying questions and the
one-off example code that was attempted.


``` Problem 3 (unlisted):
"Implement a simple LRU Cashe"
```

Again, straight out of whatever textbook he most recently read.

> My go-to problems aren’t LeetCode hard. They’re practical scenarios we face
> daily... These aren’t algorithm puzzles. They’re real-world engineering
> problems that require basic problem-solving skills."

Are you sure about that? At the level of Amazon I suspect these are all solved
problem that involves at most a library call; but, do you really need to
re-build this from scratch, off the top of your head, in a high-stress
situation? You're not hiring James Bond to dangle above a shark tank to save
the world on a usual day at the job, are you? I don't think I would want to
work under that sort of artifical pressure, no matter how Elite the instition.

> The 3 successful candidates shared common traits:
> 1. They Asked Clarifying Questions
> 2. They Thought About Coding
> 3. They Implemented Incrementally

<div class="tenor-gif-embed" data-postid="3547413" data-share-method="host" data-aspect-ratio="1.91538" data-width="100%"><a href="https://tenor.com/view/zoolander-will-ferrell-mugatu-crazy-pills-gif-3547413">I Feel Like I&#39;M Taking Crazy Pills! - Will Ferrell In Zoolander GIF</a>from <a href="https://tenor.com/search/zoolander-gifs">Zoolander GIFs</a></div> <script type="text/javascript" async src="https://tenor.com/embed.js"></script>

I feel like I'm taking crazy pills, he doesn't like some candidates clarifying
(or stalling) questions; he doesn't like their barebones boilerplate buildouts
that could be fleshed out with answers to those questions; sometimes he values
thinking about code and sometimes he doesn't, they have to think about code
"The Right Way" - but There's More Than One Way Do It[^pythonlie], to think about and solve
problems; and a variety of angles of attack work better to solve the complete
problem than these convoluted one-off "issues."


> Based on my 4 years in the industry&hellip;

And there it is, he's fresh out of college, 4 years of work experience, and
already misses the good ol' days. The rest of the article is the usual AI
Brainrot stuff about how people aren't being taught to think anymore; but
imagine how much worse it feels when you've been watching people play this same
superiority game for 20+ years and these young bucks come in and think their
shibboleths actually rank people on merit instead of on self-similarity.

> Understand the problem domain before writing code
> Think in systems, not just algorithms
> Use AI as a tool, not a crutch
> Practice building, not just solving puzzles

I can't really complain about this "back to basics" aproach, I value the
"begginer mindset" as much as the socratic method or whatever way you have to
investigate and learn and solve problems. I'm personally more of a utilitarian,
there has to be some practical applications, But this feels more like the Motte
to his Bailey.

He Argues against all the things he claims to be for, because of stylistic
differences and unmentioned biases wrapped up in the idea of "good code" - but
all code is a necessary evil, to force general-purpose machines to bend to our
specific will for a specific use-case.

It hints at a culture that devalues humans in favor of idealism, Is this
institution really Elite, or just Elitist? and if your business isn't solving
somebody's needs I'm not really sure what its purpose could be,
self-aggrandizement? Solving some other Business's needs in a quest to be
bought by them for self-aggrandizement? This is Amazon, after all, they already
own enough infrastructure and optimizations to [self-aggrandize Jeff Bezos into
the stratophere](https://en.wikipedia.org/wiki/Blue_Origin), the only way to
grow with their propreitary knowledge is from inside the walls of the castle,
no college will teach you what Amazon needs unless Amazon writes the lesson
plan, [which it does.](https://careerchoice.amazon/) but that primarily
benefits college students, not experienced developers who didn't take the
class.

Nobody seems to want to make things anymore, they want somebody else to make it
for them, and the'll just take the money; and the people who make money want to
defend their position through their various tests that only serve to prove
their own superiority and the superiority of their position, school, or
workplace against all external threats. The old rivalries are extended beyond
their juvenile origins and extended to the rest of their adult lives. The
In-Group detests the Out-Group, and who needs to grow up and learn to work
together when you're locked in this perpetual highschool rivalry?

[^archive]: <https://archive.is/Jg9Yr>
[^1]: Amazon-speak (if you wanted to know what his "B2B SaaS Company" might be) for Software Development Engineer with 2-5 years of experience
[^2]: Intern and SDE-1 have the same expectations judging by the questions posed - e.g. a comp-sci degree
[^pythonlie]: At least according to Perl & Larry Wall; I know the Python Philosophy says there is "There should be one-- and preferably only one --obvious way to do it." but even they know that might only apply to a [certain type of Dutch programmer.](https://peps.python.org/pep-0020/#:~:text=Although%20that%20way%20may%20not%20be%20obvious%20at%20first%20unless%20you%27re%20Dutch)
