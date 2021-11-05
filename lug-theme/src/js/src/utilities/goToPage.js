const goToPage = (url) => {
if(Liferay && Liferay.SPA.app) {
        Liferay.SPA.app.navigate(url)
    } else {
        document.location.href = url;
    }
}

export default goToPage;