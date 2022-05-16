import Head from 'next/head'
import Image from 'next/image'
import Link from 'next/link'
import styles from '../styles/Home.module.css'

export default function Home() {
  return (
    <div className={styles.container}>
      <Head>
        <title>React Interview Application</title>
        <meta name="description" content="" />
        <link rel="icon" href="/favicon.ico" />
      </Head>

      <main className={styles.main}>
        <h1 className={styles.title}>
        </h1>

        <div className={styles.grid}>

        </div>
      </main>

      <footer className={styles.footer}>
        <a
          href="https://www.google.com"
          target="_blank"
          rel="noopener noreferrer"
        >
          Powered by{''}
          <span className={styles.logo}>
            <Image src="/bear-part1.svg" alt="" width={100} height={35} />
          </span>
        </a>
      </footer>
    </div>
  )
}