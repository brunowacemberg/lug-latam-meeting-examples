var getElementOffsetTop = ($el) => {
    var offsetTop = 0;
    do {
        offsetTop += $el.offsetTop;
        $el = $el.offsetParent;
    } while ($el);

    offsetTop = offsetTop < 0 ? 0 : offsetTop;            
    return offsetTop
}

export default getElementOffsetTop