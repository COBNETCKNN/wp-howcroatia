const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
   purge: [
    './css/main.css',
    './js/main.js',
  ],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {
      fontFamily: {
        montserrat: ['Montserrat'],
        sourceserif: ['Source Serif Pro'],
        poppins: ['Poppins'],
      }
    },
  },
  variants: {
    extend: {},
  },
  plugins: [],
}
