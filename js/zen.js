/* some pseudocode basic BS idea to get a CSS Zen Garden style restyling
 * function, but also loop in JS scripts, etc for the looks
 */

const themes = {
	retro: {
		stylesheet: "css/retro.css",
		js : ["js/css_naked_day.js"],
	},
	2019: {
		stylesheet: "css/2019.css",
		js : ["js/css_naked_day.js","js/stripe_animate.js"],
	},
};


const theme_keys = themes.keys();
var random_theme = themes[theme_keys[Math.floor(Math.random()*items.length)]];

const head = document.getElementsByTagName('head')[0];

const css = document.createElement('link', { type: 'text/css', rel: 'stylesheet', href: random_theme, media: 'screen' });
head.appendChild(css);

for (var i in random_theme.js) {
	let script = document.createElement('script', { src: random_theme.js[i] });
	head.appendChild(script);
	script.onLoad();
}

