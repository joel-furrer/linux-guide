import {themes as prismThemes} from 'prism-react-renderer';
import type {Config} from '@docusaurus/types';
import type * as Preset from '@docusaurus/preset-classic';

const config: Config = {
  title: 'Linux Guide',
  tagline: 'Die wichtigsten Befehle & Tipps im Überblick',
  favicon: 'img/favicon.ico',

  url: 'https://joel-furrer.github.io', 
  baseUrl: '/', 

  organizationName: 'joel-furrer', 
  projectName: 'linux-guide', 

  onBrokenLinks: 'throw',
  onBrokenMarkdownLinks: 'warn',

  i18n: {
    defaultLocale: 'de',
    locales: ['de'],
  },

  presets: [
    [
      'classic',
      {
        docs: {
          sidebarPath: './sidebars.ts',
          editUrl:
            'https://github.com/joel-furrer/linux-guide/tree/main/',
        },
        blog: false,
        theme: {
          customCss: './src/css/custom.css',
        },
      } satisfies Preset.Options,
    ],
  ],

  themeConfig: {
    image: 'img/linux-social-card.jpg',
    colorMode: {
      defaultMode: 'dark',
      respectPrefersColorScheme: true,
    },
    navbar: {
      title: 'Linux Guide',
      logo: {
        alt: 'Linux Guide Logo',
        src: 'img/logo.svg',
      },
      items: [
        {
          type: 'docSidebar',
          sidebarId: 'tutorialSidebar',
          position: 'left',
          label: 'Befehle',
        },
        {
          href: 'https://github.com/joel-furrer/linux-guide',
          label: 'GitHub',
          position: 'right',
        },
      ],
    },
    footer: {
      style: 'dark',
      links: [
        {
          title: 'Guide',
          items: [
            {
              label: 'Befehle Übersicht',
              to: '/docs/intro',
            },
          ],
        },
        {
          title: 'Links',
          items: [
            {
              label: 'GitHub Repository',
              href: 'https://github.com/joel-furrer/linux-guide',
            },
          ],
        },
      ],
      copyright: `Copyright © ${new Date().getFullYear()} Linux Guide. Erstellt von Joel Furrer.`,
    },
    prism: {
      theme: prismThemes.github,
      darkTheme: prismThemes.dracula,
      additionalLanguages: ['bash', 'shell-session'],
    },
  } satisfies Preset.ThemeConfig,
};

export default config;
