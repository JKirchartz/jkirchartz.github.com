---
layout: post
title: Bootstrap, Semantic and Tricks
published: false
tags: article
---


One of the complaints most often lobbed at Bootstrap is that the way [Bootstrap uses classes is not semantic.][1]
I agree, but what if I told you there was a better way, that already works with Bootstrap?


[Bootstrap Live Customizer][1] is a tool that makes it easy to generate a custom theme, with a live preview of all variables (currently in v3.3.7) it will output a LESS file for you.
You can convert this less file to sass with `sed` on the commandline.

        sed -i'' -e 's/@/$/g' variables.less


Make your own button styles

        .btn-cta {
                @include button-variant($gray-base, $gray-lighter, $gray-base);
                font-weight: bold;
        }


By applying `.container-fluid` to the relevant areas of the site you can use the following snippet to make them behave like `.container` above a certain breakpoint (in this case `md`).


        @include media-breakpoint-up(md) {
                .container-fluid {
                        @include make-container-max-widths();
                }
        }







[1]: http://www.zingdesign.com/5-reasons-not-to-use-twitter-bootstrap/


