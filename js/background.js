var d = document, e = d.documentElement,
    body = d.getElementsByTagName('body')[0],
    head = d.getElementsByTagName('head')[0],
    colors = ['#b0e0e0', '#309090', '#130f30', '#309090'],
    style = d.createElement('style'),
    maxwidth = window.innerWidth || e.clientWidth || body.clientWidth();
    maxheight = window.innerHeight || e.clientHeight || body.clientHeight();
    bgImg = '', bgSize = '', bgPos = '';
for (var i = 10, l = 10 + (Math.random() * 10); i < l; i++) {
  var col = colors[i % (colors.length)],
    width = Math.floor(Math.random() * maxwidth),
    height = Math.floor(Math.random() * maxheight),
    r = Math.floor(Math.random() * 40) + 10;
  if (Math.round(Math.random()) + 0.2) {
    width = height = Math.floor(width + height / 2);
  }
  if (Math.round(Math.random() + 0.2)) {
    maxwidth = maxheight = Math.floor(maxwidth + maxheight / 2);
  }
  bgImg += ['radial-gradient(',
            col,
            ' 0, transparent ',
            r,
            '%, transparent 0),'].join('');
  bgSize += maxwidth + 'px ' + maxheight + 'px,';
  bgPos += width + 'px ' + height + 'px,';
}
style.innerHTML = 'html { background-image:' + bgImg.slice(0, -1) +
  ';\nbackground-size:' + bgSize.slice(0, -1) +
  ';\nbackground-position:' + bgPos.slice(0, -1) + ';}';
head.appendChild(style);
