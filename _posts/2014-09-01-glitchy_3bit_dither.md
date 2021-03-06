---
layout: post
title: Glitchy 3bit dither
tags: project article art javascript portfolio
projectImg: //i.imgur.com/UFYhyOV.png
projectUrl: http://jkirchartz.com/Glitchy3bitdither
---

I'd like to officially introduce my new pet project, [Glitchy 3bit Dither][1], it's an in-browser emulation of [glitch art][2] techniques.<!--more-->
In the past I've tried my hand at circuit bending, creatively short-circuiting and modifying physical devices.
I've even played with [more][3] [traditional][4] [glitches][5], but was inspired to create my own software to do so after seeing [rumblesan][6].
His [cuttr][7] project glitches images from on tumblr and posts them to another [tumblog][8], .
I quickly created a [python script][9] using PIL to start glitching images from instagram.
I started writing the tumblr code, but I didn't like the lack of control, and I didn't really want to make a rumblesan clone.
Besides, how can you create art without the artist's input? After seeing [caman.js][10]\*, I knew I could do it in javascript, thanks to [canvas][11].
During my research I discovered [3bitdither][12], forked it, and [bent it to my will][13].

# Glitches

Here's a short list of some of the functions I've implemented.

1. [Random dithering][14] rates each pixel against a random value, if it's higher than that value it's a white pixel, if it's lower it's black.
I've also [colorized][15] it by rating each channel value of the pixel.
2. [Color shifting][16] will play with the values by boosting or re-arranging the red, green, or blue channels.
3. [Slices][17] move chunks of pixel and channel values in interesting ways, sometimes shifting colors as well.
4. [Sorts][18] Sort chunks of pixels in place, producing gradient-like stripes of colors within the image.
5. [Fractals][27] Create fractal-like ghosts and shadows by repeating an image on itself

This is a work in progress, so all of the code is subject to change; also I'm working on updating this to work with [node.js on a separate branch][22]\*, so all the code will have to be adjusted for that anyhow.

# Example

The following gif was made by compositing several glitches over the original image.

 <div class="tumblr-post" data-href="https://embed.tumblr.com/embed/post/jOZbvQ_9njeKZIGbXljJzg/133069110694" data-did="a96321f716d4bbc5657189d828f60630e133edaa"><a href="http://glitches.jkirchartz.com/post/133069110694">http://glitches.jkirchartz.com/post/133069110694</a></div>  <script async src="https://assets.tumblr.com/post.js"></script>


# Interface

There are 4 different interfaces here, each offering their own unique take on the task,

1. [Demo][23] will run each function against the original image once
2. [Glitch Only][24] will apply a random set of glitches to the original image several times
3. [Glitch Cruiser][25] When you upload an image it appears in the center surrounded by 8 glitchy alternatives. If one of these images suits your fancy, click on it and it will become the new source for the next round of glitches. If you do not like any of the suggested glitches, click on the center image, and you'll get the next 8 glitch options, but your source will not be changed. ![Lena, and 8 possibilities](//i.imgur.com/UFYhyOV.png)
4. [Glitch Chooser][26] this allows you to select functions from a drop-down list to apply to an image, you can either apply a tranformation, or reset it to the way it was before, you can even reset it to the original image. Unliked Glitch Cruiser, you won't be able to see the results of a function before selecting it, but you can replace the latest image transformation again and again until you can see your desired results.

# Technical Notes

`imageData.data` is a [`Uint8ClampedArray`][19], one of the new [Typed Arrays][20] in javascript. They're part of the WebGL spec and should be available in all _modern_ browsers.
This array holds all the data for every pixel in the image, however it's stores 8-bit values, channel-by-channel instead of pixel-by-pixel, that is to say `Uint8ClampedArray` stores the image data like `[R,G,B,A,R,G,B,A,R,G...]`.
This means that to deal with this array, you're going to have to increment the loop by 4, and handle the channel-values each time like this function that inverts a pixel's color:

{% highlight javascript %}
    var Uint8Arr = imageData.data;
    for(var i = 0; i < Uint8Arr.length; i += 4){
        /* simple invert */
        Uint8Arr[i] -= 255;
        Uint8Arr[i+1] -= 255;
        Uint8Arr[i+2] -= 255;
    }
{% endhighlight %}

This is a slow &amp; tedious task, but there are other typed arrays, like `Uint32Array` which stores 32-bit values, converting an 8-bit array to a 32-bit array would cut the size of the array by a quarter.
So as a Uint32Array color data is stored like `[ARGB, ARGB, ARGB, ARGB...`, inverting is now just one operation.

{% highlight javascript %}
    var Uint32Arr = new Uint32Array(imageData.data.buffer);
    for(var i = 0; i < Uint32Arr.length; i++){
        /* bitwise invert */
        Uint32Arr[i] = ~Uint32Arr[i] | 0xFF000000;
    }
{% endhighlight %}

Here, a bitwise NOT (`~`) inverts the bits, and OR `|` applies a mask to keep the alpha channel at 100%.
You may also notice that I'm using the `imageData.data.buffer` to make a 32-bit view of the 8-bit data, this means that you don't have to set the data back into the array, because it passes through to the original variable naturally.

While all the above is true for most personal computers which store data in Little [Endian][21], some other machines may use Big Endian notations, which would reverse the order of the data from RGBA to ABGR.
If you were making imaging software you'd probably want to account for that, but since the point of this project is to maim images it's only mildly important to ensure the alpha channel is applied correctly (or just set to 100%.)
\* now that I'm planning to make this into a node-based tool, and eventually distribute it on NPM, I'm thinking I'd be better off making this an extension of [camanjs][10] because they've already got so much figured out. Also I think by that point a name change might be in order.

[1]: http://jkirchartz.com/Glitchy3bitdither/
[2]: https://en.wikipedia.org/wiki/Glitch_art
[3]: http://scadglitchart.blogspot.com/2012/10/stallio-and-wordpad-effect-nancy-olivo.html
[4]: http://www.fizzpop.org.uk/blog/an-introduction-to-databending/
[5]: http://www.hellocatfood.com/databending-using-audacity/
[6]: http://rumblesan.com/
[7]: https://github.com/rumblesan/cuttr
[8]: http://errrord.tumblr.com/
[9]: https://gist.github.com/JKirchartz/467ec9458d975659e33e
[10]: http://camanjs.com/
[11]: http://diveintohtml5.info/canvas.html
[12]: https://github.com/mncaudill/3bitdither
[13]: https://github.com/jkirchartz/Glitchy3bitdither
[14]: https://github.com/JKirchartz/Glitchy3bitdither/blob/gh-pages/GlitchyDither.js#L448-L458
[15]: https://github.com/JKirchartz/Glitchy3bitdither/blob/gh-pages/GlitchyDither.js#L460-L470
[16]: https://github.com/JKirchartz/Glitchy3bitdither/blob/gh-pages/GlitchyDither.js#L495-L575
[17]:  https://github.com/JKirchartz/Glitchy3bitdither/blob/gh-pages/GlitchyDither.js#L659-L717
[18]:  https://github.com/JKirchartz/Glitchy3bitdither/blob/gh-pages/GlitchyDither.js#L795-L906
[19]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Uint8ClampedArray
[20]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/TypedArray
[21]: https://en.wikipedia.org/wiki/Endianness
[22]: https://github.com/JKirchartz/Glitchy3bitdither/tree/jimp
[23]: http://jkirchartz.com/Glitchy3bitdither/index.html
[24]: http://jkirchartz.com/Glitchy3bitdither/glitch.html
[25]: http://jkirchartz.com/Glitchy3bitdither/GlitchCruiser.html
[26]: http://jkirchartz.com/Glitchy3bitdither/GlitchChooser.html
[27]:  https://github.com/JKirchartz/Glitchy3bitdither/blob/gh-pages/GlitchyDither.js#L697-L848
