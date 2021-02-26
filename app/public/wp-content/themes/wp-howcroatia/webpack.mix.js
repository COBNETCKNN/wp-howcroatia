let mix = require('laravel-mix');

mix
    .js("src/app.js", "js/main.js")
    .babel("src/app.js", "js/main.js")
    .sass('src/app.scss', 'css/main.css');

mix
    .browserSync({
        proxy: "http://howcroatia.local/",
        files: ["./**/*"],
});


mix.options({
    processCssUrls: false,
    });