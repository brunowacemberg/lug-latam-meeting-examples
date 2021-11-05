const parseHTML = (htmlString) => {
    const parser = new DOMParser();
    return parser.parseFromString(htmlString.trim(), 'text/html').body.firstChild;

} 

export default parseHTML;