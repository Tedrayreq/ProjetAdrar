function toggleTheme(value) {
    var sheets = document.getElementsByTagName('link');
    sheets[0].href = value;
}