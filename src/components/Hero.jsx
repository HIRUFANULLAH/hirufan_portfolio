import { useEffect, useState } from 'react'
import { motion, AnimatePresence } from 'framer-motion'
import { FaLinkedin, FaGithub } from 'react-icons/fa'
import { MdMailOutline } from 'react-icons/md'
import { FiArrowRight, FiDownload } from 'react-icons/fi'
import { profile, contact, cvPath } from '../data'

function RotatingRole() {
  const [i, setI] = useState(0)
  useEffect(() => {
    const id = setInterval(
      () => setI((p) => (p + 1) % profile.roles.length),
      2400
    )
    return () => clearInterval(id)
  }, [])

  return (
    <div className="hero-role">
      <span className="prefix">I’m a</span>
      <AnimatePresence mode="wait">
        <motion.span
          key={i}
          className="gradient-text"
          initial={{ opacity: 0, y: 18 }}
          animate={{ opacity: 1, y: 0 }}
          exit={{ opacity: 0, y: -18 }}
          transition={{ duration: 0.4 }}
        >
          {profile.roles[i]}
        </motion.span>
      </AnimatePresence>
    </div>
  )
}

export default function Hero({ scrollTo }) {
  return (
    <section id="home" className="section hero">
      <motion.div
        className="hero-text"
        initial={{ opacity: 0, x: -40 }}
        animate={{ opacity: 1, x: 0 }}
        transition={{ duration: 0.7, ease: [0.22, 1, 0.36, 1] }}
      >
        <p className="hero-greet">Hi there, welcome 👋</p>
        <h1 className="hero-name">
          {profile.name.slice(0, -4)}
          <span className="gradient-text">{profile.name.slice(-4)}</span>
        </h1>
        <RotatingRole />
        <p className="hero-desc">{profile.tagline}</p>

        <div className="hero-actions">
          <button className="btn btn-primary" onClick={() => scrollTo('Contact')}>
            Let’s Connect <FiArrowRight />
          </button>
          <a className="btn btn-ghost" href={cvPath} download="Hirufanullah_CV.pdf">
            Download CV <FiDownload />
          </a>
        </div>

        <div className="hero-socials">
          <a href={contact.socials.linkedin} target="_blank" rel="noreferrer" aria-label="LinkedIn">
            <FaLinkedin />
          </a>
          <a href={contact.socials.github} target="_blank" rel="noreferrer" aria-label="GitHub">
            <FaGithub />
          </a>
          <a href={`mailto:${contact.email}`} aria-label="Email">
            <MdMailOutline />
          </a>
        </div>
      </motion.div>

      <motion.div
        className="hero-visual"
        initial={{ opacity: 0, scale: 0.85 }}
        animate={{ opacity: 1, scale: 1 }}
        transition={{ duration: 0.8, delay: 0.15, ease: [0.22, 1, 0.36, 1] }}
      >
        <motion.div
          className="hero-ring"
          animate={{ y: [0, -16, 0] }}
          transition={{ duration: 5, repeat: Infinity, ease: 'easeInOut' }}
        >
          <div className="hero-photo">
            <img src={profile.image} alt={profile.name} />
          </div>
        </motion.div>
      </motion.div>
    </section>
  )
}
