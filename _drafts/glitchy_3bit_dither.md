---
layout: post
title: Glitchy 3bit dither
published: false
tags: article, art, javascript, open source
---

I'd like to officially introduce my latest pet project, [Glitchy 3bit Dither][1], A project I started to help me emulate [glitch art][2].
In the past I've tried my hand at circuit bending, creatively short-circuiting and modifying physical devices.
I've even played with [more][3] [traditional][4] [glitches][5], but was inspired to create my own software to do so after seeing [rumblesan][6].
His [cuttr][7] project randomly glitches images found on tumblr and posts them to another [tumblog][8], .
I quickly set out and created a [python script][9] using PIL to start glitching images from instagram. 
I started writing the tumblr code, but I didn't like the lack of control, and I didn't really want to make a rumblesan clone.
Besides, how can you create art without the artist's input? After seeing [caman.js][10], I knew I could do it in javascript, thanks to [canvas][11].
During my research I found [3bitdither][12], forked it, and set out to [bend it to my will][13].

I studied the code, then formulating my own data manipulations, and implementing new algorithms; here's a short list.

1. [Random dithering][14] rates each pixel against a random value, if it's higher than that value it's a white pixel, if it's lower it's black.
I've also [colorized][15] it by rating each channel value of the pixel.
2. [Color shifting][16] will play with the values by boosting or re-arranging the red, green, or blue channels.
3. [Slices][17] move chunks of pixel and channel values in interesting ways, sometimes shifting colors as well.
4. [Sorts][18] Sort chunks of pixels in place, producing gradient-like stripes of colors within the image.

#Things I've learned

Since `imageData.data` is a [`Uint8ClampedArray`][19], one of the new [Typed Arrays][20] in javascript. They're part of the WebGL spec and should be available in most _modern_ browsers. 
This array holds all the data for every pixel in the image, however it's stores 8-bit values, channel-by-channel instead of pixel-by-pixel, that is to say `Uint8ClampedArray` stores the image data like `[R,G,B,A,R,G,B,A,R,G...]`.
This means that to deal with this array, you're going to have to increment the loop by 4, and handle the channel-values each time like this

    var Uint8Arr = imageData.data;
    for(var i = 0; i < Uint8Arr.length; i += 4){
        /* simple invert */
        Uint8Arr[i] -= 255;
        Uint8Arr[i+1] -= 255;
        Uint8Arr[i+2] -= 255;
    }

This is a slow &amp; tedious task, but there are other typed arrays, like `Uint32Array` which stores 32-bit values, converting an 8-bit array to a 32-bit array would cut the size of the array by a quarter.
So Uint32Arrays store their data like `[RGBA, RGBA, RGBA, RGBA...`.

    var Uint32Arr = new Uint32Array(imageData.data.buffer);
    for(var i = 0; i < Uint32Arr.length; i++){
        /* bitwise invert */
        Uint32Arr[i] = ~Uint32Arr[i] | 0xFF000000;
    }

Here, a bitwise NOT (`~`) inverts the bits, and OR `|` applies a mask to keep the alpha channel at 100%.
You may also notice that I'm using the `imageData.data.buffer` to make a 32-bit view of the 8-bit data, this means that you don't have to set the data back into the array, because it passes through to the original variable naturally.

While all the above is true for most PC's and Macs which store data in Little [Endian][19], some other machines may use Big Endian notations, which would reverse the order of the data from RGBA to ABGR.



[1] http://jkirchartz.com/Glitchy3bitDither/
[2] https://en.wikipedia.org/wiki/Glitch_art
[3] http://scadglitchart.blogspot.com/2012/10/stallio-and-wordpad-effect-nancy-olivo.html
[4] http://www.fizzpop.org.uk/blog/an-introduction-to-databending/
[5] http://www.hellocatfood.com/databending-using-audacity/
[6] http://rumblesan.com/
[7] https://github.com/rumblesan/cuttr
[8] http://errrord.tumblr.com/
[9] https://gist.github.com/JKirchartz/467ec9458d975659e33e
[10] http://camanjs.com/
[11] http://diveintohtml5.info/canvas.html
[12] https://github.com/mncaudill/3bitdither
[13] https://github.com/jkirchartz/Glitchy3bitdither
[14] https://github.com/JKirchartz/Glitchy3bitdither/blob/gh-pages/GlitchyDither.js#L385-L396
[15] https://github.com/JKirchartz/Glitchy3bitdither/blob/gh-pages/GlitchyDither.js#L398-L408
[16] https://github.com/JKirchartz/Glitchy3bitdither/blob/gh-pages/GlitchyDither.js#L410-L462
[17]  https://github.com/JKirchartz/Glitchy3bitdither/blob/gh-pages/GlitchyDither.js#L464-L543
[18]
[19] https://en.wikipedia.org/wiki/Endianness
[20]
