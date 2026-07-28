---
title: ORAC in 2026
type: article
tags: Linux Audio, Music, Noise, node.js, python, puredata
---

I've been experimenting with the [PiSound][1] and [Patchbox OS][2], and
[getting back into][3] [PureData][4], so naturally [ORAC][5] is the next step
to experiment with after playing through the [MODEP virtual pedalboards][6].
I've been keeping some [unstructured music tech ideas on my tilde site][7] but
have now found myself with a [fork][8] of a project that's combining my rusty
Python skills with my rusty Node.js skills.[^1]

The project hasn't been touched in 7 years so my first thought was to
virtualize the environment of that 2019; likely inspired by [Docker][docker],
[Ruby Version Manager][rvm], &amp; [Node Version Manger][nvm] [Venv][venv]
became a bigger thing since the last time I used Python regularly, and after a
brief perusal of [uv][uv][^uv], Python's [2to3][2to3] Conversion ultimately
became a more viable choice. Don't over-complicate things.

Fixing the backend was so easy, I figured I'd try something similar on the
front-end and ran `npx npm-check-updates -u && npm install` and jumped ahead to
the future, which was as bad as idea as all the rest.  Should I let an LLM run
roughshod over this tiny codebase? No, I'm sure Grit and Determination is still
worth something; at least to me, and I'm the only judge here on my personal
projects. Apparently there's a conflict between eslint@latest eslint-config-standard@latest


[1]: https://blokas.io/pisound
[2]: https://blokas.io/patchbox-os
[3]: https://github.com/JKirchartz/PureData
[4]: https://github.com/pure-data/pure-data
[5]: https://github.com/TheTechnobear/Orac
[6]: https://blokas.io/modep/
[7]: https://tilde.town/~kirch/music_tech/
[8]: https://github.com/JKirchartz/orac-control-web
[rvm]: https://rvm.io/
[nvm]: https://github.com/nvm-sh/nvm
[venv]: https://docs.python.org/3/library/venv.html
[uv]: https://docs.astral.sh/uv/

[^1]: If only the backends were held to the same standards as front-ends.
[^uv]: I've had great success using uv with other projects, but I didn't want to flood my Music Computer with too much Development stuff.
