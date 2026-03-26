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
          <Translate id="homepage.title" description="Der Haupttitel auf der Startseite">
            Linux Guide
          </Translate>
        </Heading>
        <p className="hero__subtitle" style={{ fontFamily: 'monospace', opacity: 0.9 }}>
          $ <Translate id="homepage.tagline" description="Die Tagline unter dem Titel">
            Die wichtigsten Befehle und Konzepte im Überblick
          </Translate>
        </p>
        <div className={styles.buttons}>
          <Link
            className="button button--secondary button--lg"
            to="/docs/intro">
            <Translate id="homepage.buttonText" description="Text des Call-to-Action Buttons">
              Dokumentation öffnen
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
        message: 'Startseite',
        id: 'homepage.layout.title',
        description: 'Der Titel im Browser-Tab für die Startseite',
      })}
      description={translate({
        message: 'Ein strukturierter Leitfaden für die effiziente Nutzung der Linux-Kommandozeile.',
        id: 'homepage.layout.description',
      })}>
      <HomepageHeader />
      <main>
        <section className={styles.mainContent}>
          <div className="container">
            <div className="row">
              <div className="col col--8 col--offset-2">
                <Heading as="h2">
                  <Translate id="homepage.about.title">Fokus auf das Wesentliche</Translate>
                </Heading>
                <p>
                  <Translate id="homepage.about.text">
                    Dieser Guide bietet eine präzise Übersicht der wichtigsten Befehle für die 
                    tägliche Arbeit mit Linux-Systemen. Ziel ist es, Wissen kompakt und 
                    verständlich zu vermitteln – von grundlegender Dateiverwaltung bis hin zu 
                    fortgeschrittenen Systemkonfigurationen.
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
