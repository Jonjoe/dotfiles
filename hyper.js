module.exports = {
  config: {
    fontSize: 14,
    fontFamily: '"Hasklig", "Lucida Console", monospace',
    cursorColor: 'white',
    cursorShape: 'BLOCK',
    foregroundColor: '#fff',
    backgroundColor: '#000',
    borderColor: '#333',
    padding: '12px 14px',

    css: `
      .active_1gcgehd:before {
        border: 1px solid #002b36 !important;
      }
    `,

    termCSS: `
      * {
        -webkit-font-feature-settings: "liga" on, "calt" on, "dlig" on !important;
        text-rendering: optimizeLegibility !important;
        font-weight: 300;
      }
      .cursor-node {
        width: .125rem !important;
      }
    `,

    colors: {
      black: '#000000',
      red: '#ff0000',
      green: '#33ff00',
      yellow: '#ffff00',
      blue: '#0066ff',
      magenta: '#cc00ff',
      cyan: '#00ffff',
      white: '#d0d0d0',
      lightBlack: '#808080',
      lightRed: '#ff0000',
      lightGreen: '#33ff00',
      lightYellow: '#ffff00',
      lightBlue: '#0066ff',
      lightMagenta: '#cc00ff',
      lightCyan: '#00ffff',
      lightWhite: '#ffffff'
    },

    shell: '',
    shellArgs: ['--login'],
    env: {},
    bell: 'SOUND',
    copyOnSelect: false
  },

  plugins: [
    "hyperterm-title",
    "hyper-font-smoothing",
    "hyperterm-1password",
    "hyper-blink",
    "hyperchart",
    "hyper-tab-icons"
  ],

  localPlugins: []
};
