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
          Simple React Interview Questions
        </h1>

        <div className={styles.grid}>
          <Link href="/interview">
            <a className={styles.card}>Interview</a>
          </Link>

          <Link href="/about">
            <a className={styles.card}>About us</a>
          </Link>
        </div>

      </main>

      <footer className={styles.footer}>
        <a
          href="https://www.google.com"
          target="_blank"
          rel="noopener noreferrer"
        >
          Powered by{' '}
          <span className={styles.logo}>
            <Image src="/vercel.svg" alt="" width={72} height={16} />
          </span>
        </a>
      </footer>
    </div>
  )
}