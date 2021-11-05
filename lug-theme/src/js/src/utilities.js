import debounce from './utilities/debounce'
import goToPage from './utilities/goToPage'
import getElementOffsetTop from './utilities/getElementOffsetTop'
import parseHTML from './utilities/parseHTML'

// Make utilities available into the global scope
var setGlobalUtilities = function() {
    
    window.debounce = debounce;
    window.goToPage = goToPage;
    window.getElementOffsetTop = getElementOffsetTop;
    window.parseHTML = parseHTML;

}

export default setGlobalUtilities
