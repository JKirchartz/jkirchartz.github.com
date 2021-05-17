---
layout: post
title: Your Culture is Not Yours Alone
tags: article 100-days-to-offload culture practices
---

You worked hard brainstorming your company values, hours of meetings, days of
discussion with core stakeholders, and finally you get a handful of things that
define who You are as a Corporate Person. A list of words or concepts, about
how fun and unique and valuable your business culture is! It's easy to pay lip
service to these values, point at a sign on the wall, and say "This is what We
are!" but [Do they do more than just sound nice?][1] Do those values actually
lead to success? [Is your culture actually distinct from the culture outside
your walls?][5]<!--more-->

<div id="values"></div>

You might say you value "Togetherness" or "Teamwork" but what do you mean?
You're together in the same room, or under the same roof, or at least have the
same person signing all your checks. You work together to achieve a common
goal, but that's the nature of the job. Are you acting like a team? How do your
communicate? Communication isn't just calling a meeting to recite sales numbers
and give the latest roadmap update, it's a two-way street where every member of
the team is offered a chance to participate, and individual contributions
recognized. Not only should everyone have a chance to speak, nobody should be
unable or afraid to ask question or dissent &mdash; [nobody should be feel bullied
or humiliated.][8]

You may choose to value "Working Smart" or "Innovation," good. So does everyone
else. How are you smarter or more innovative? Are your human resources being
supported to make smarter more innovative choices? What, exactly, is being done that
makes You special? What are you doing to improve your processes, hone your marketing and
sales chops, perfect the method behind making your core product, file down the
sharp edges and reduce internal friction?
Ambition isn't so much stress as it is trying harder and experiencing individual growth.
When a team grows together it creates a bond, can your on-boarding procedure replicate that?
If you're doing the same exact thing you did two years ago and getting the similar
results you're probably not growing and certainly not innovating.

Try as you might to [dictate your culture][2] it's probably not going to work,
you actually have to [live it.][3]  Your company's culture is a conglomerate
of each employee's individual talents and personalities, including your own.
How do you pass that on? Who in your organization is a [catalyst][6]? You can
try to hire based on 'culture fit' or some semblance of who you are and who
your employees should be - but you absolutely need to nurture your culture and
perpetuate it, be a model for your company to follow. When an undefined and
undefended "cultural fit" is your only hiring metric you risk only going to get
one type of employee.

![culture fit level: agent smith](https://i.imgur.com/dNAH1KZ.gif)

## closing thought

> Evaluating the institution involves many more questions, but I'd argue these
> few are most important: Is there a real opportunity to make a positive
> impact? If so, is the team equal to the challenge, or (more likely) on the
> path to getting there? Is there a possibility of surviving as a standalone
> entity - this is almost impossible to know ex ante, but if the stated goal is
> to get acquired that should tell you something. Do they have a real mission
> and culture, or just hedonism and homogeneity? Do they invest in an
> individual's growth, or just increased productivity?

~ [Shyam Sankar][4]


## further reading

- [The Characteristics of White Supremacy Culture][5]
- [Company Culture is Not Just Listing Core Values][1]
- [You Can’t Dictate Culture — but You Can Influence It][2]
- [Debunking Five Myths of Corporate Culture][3]
- [Your corporate values are bullshit][7]

[1]: https://thecontextofthings.com/2016/02/04/company-culture-is-not-just-listing-core-values/
[2]: https://hbr.org/2011/06/you-cant-dictate-culture-but-y
[3]: http://adage.com/article/agency-viewpoint/debunking-myths-corporate-culture/305166/
[4]: https://shyamsankar.com/dont-let-techno-hedonism-waste-your-potential
[5]: https://www.showingupforracialjustice.org/white-supremacy-culture-characteristics.html
[6]: https://freenode.net/catalysts
[7]: https://christianvasile.medium.com/your-corporate-values-are-bullshit-aabce8f1d982
[8]: https://www.pmi.org/learning/library/impact-bullying-project-management-9908


<!---
http://www.usatoday.com/story/news/nation/2015/04/16/army-survey-morale/24897455/
http://www.microsoft.com/en-us/about
http://www.amazon.com/Values-Careers-Homepage/b?ie=UTF8&node=239365011
http://www.google.com/about/company/philosophy/
http://www.dorisandbertie.com/goodcopybadcopy/2011/05/25/how-not-to-write-your-companys-core-values/
http://money.usnews.com/money/blogs/outside-voices-careers/2012/01/17/how-to-spot-bad-company-culture-
http://www.forbes.com/sites/erikaandersen/2012/12/05/bad-company-culture-heres-what-to-do/
https://www.showingupforracialjustice.org/white-supremacy-culture-characteristics.html
--->


<!--- script>
var allvalues = [
"Integrity",
"Boldness",
"Honesty",
"Trust",
"Accountability",
"Commitment to Customers",
"Passion",
"Fun",
"Humility",
"Continuous Learning",
"Ownership",
"Constant Improvement",
"Leadership",
"Diversity",
"Innovation",
"Quality",
"Teamwork",
"Simplicity",
"Stewardship",
"The Best People",
"Client Value Creation",
"One Global Network",
"Respect for the Individual",
"Integrity",
"Customer Commitment",
"Quality",
"Integrity",
"Teamwork",
"Respect for People",
"Good Citizenship",
"A Will to Win",
"Personal Accountability",
"Focus on impact",
"Move fast",
"Be bold",
"Be open",
"Build social value",
"We believe in people",
"We are one team",
"Straightforward and open-minded",
"Keep it simple",
"Entrepreneurial spirit",
"Constant improvement",
"Cost-consciousness",
];
(function Values() {
  let values = document.getElementById("values");
  let list = document.createElement('ul');
  let currentvalues = allvalues.sort(() => Math.round(Math.random())).slice(0,5);
  for (let v in currentvalues) {
   let li = document.createElement('li');
   li.innerHTML = currentvalues[v];
   list.appendChild(li);
  }
  values.replaceChildren(list);
  setTimeout(Values, 5000);
})();

</script --->

I’m publishing this as part of 100 Days To Offload. You can join in yourself by
visiting <https://100daystooffload.com>
