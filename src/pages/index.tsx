import React from 'react';
import clsx from 'clsx';
import Link from '@docusaurus/Link';
import useDocusaurusContext from '@docusaurus/useDocusaurusContext';
import Layout from '@theme/Layout';
import Heading from '@theme/Heading';
import Translate, {translate} from '@docusaurus/Translate';

import styles from './index.module.css';

function HomepageHeader() {
  const {siteConfig} = useDocusaurusContext();
  return (
    <header className={clsx('hero hero--primary', styles.heroBanner)}>
      <div className="container">
        <Heading as="h1" className="hero__title">
          <Translate id="homepage.title" description="The main title on the homepage">
            Linux Guide
          </Translate>
        </Heading>
        <p className="hero__subtitle" style={{ fontFamily: 'monospace', opacity: 0.9 }}>
          $ <Translate id="homepage.tagline" description="The tagline below the title">
            An overview of the most important commands and concepts
          </Translate>
        </p>
        <div className={styles.buttons}>
          <Link
            className="button button--secondary button--lg"
            to="/docs/intro">
            <Translate id="homepage.buttonText" description="Text of the call-to-action button">
              Open Documentation
            </Translate>
          </Link>
        </div>
      </div>
    </header>
  );
}

export default function Home(): JSX.Element {
  const {siteConfig} = useDocusaurusContext();
  return (
    <Layout
      title={translate({
        message: 'Home',
        id: 'homepage.layout.title',
        description: 'The title in the browser tab for the homepage',
      })}
      description={translate({
        message: 'A structured guide for the efficient use of the Linux command line.',
        id: 'homepage.layout.description',
      })}>
      <HomepageHeader />
      <main>
        <section className={styles.mainContent}>
          <div className="container">
            <div className="row">
              <div className="col col--8 col--offset-2">
                <Heading as="h2">
                  <Translate id="homepage.about.title">Focus on the Essentials</Translate>
                </Heading>
                <p>
                  <Translate id="homepage.about.text">
                    This guide provides a precise overview of the most important commands for
                    daily work with Linux systems. The goal is to convey knowledge compactly and
                    understandably – from basic file management to advanced system configurations.
                  </Translate>
                </p>
              </div>
            </div>
          </div>
        </section>
      </main>
    </Layout>
  );
}
