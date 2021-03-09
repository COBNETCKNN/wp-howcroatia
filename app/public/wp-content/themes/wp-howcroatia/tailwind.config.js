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
      }
    },
  },
  variants: {
    extend: {},
  },
  plugins: [],
}
