// Debouncing is essential to ensuring a given task doesn't fire so often
// -- 
export default (func, wait, immediate) => {
    var timeout;
    if(wait == undefined && wait == ""){
        wait = 250;
    };
    return () => {
        var context = this, args = arguments;
        var later = function() {
            timeout = null;
            if (!immediate) func.apply(context, args);
        };
        var callNow = immediate && !timeout;
        clearTimeout(timeout);
        timeout = setTimeout(later, wait);
        if (callNow) func.apply(context, args);
    };
};