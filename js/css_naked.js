(() => {
	const t = new Date();
	if (t.getMonth() + 1 === 4 && t.getDate() === 9) {
		document.querySelectorAll('[style]').forEach(e => e.removeAttribute('style'));
		document.querySelectorAll('style, link[rel~="stylesheet"]').forEach(e => e.remove());
		const m = document.createElement("div");
		m.setAttribute("style", "margin: 1em auto; padding: 1em; max-width: 15em; border: 0.1em solid red; border-radius: 0.2em; text-align: center;");
		m.innerHTML = '<a href="https://css-naked-day.org/" style="display:block">April 9th is CSS Naked Day!</a><p>Please enjoy the following website in its raw HTML form!</p>';
		document.body.insertBefore(m, document.body.firstChild);
	}
})();
