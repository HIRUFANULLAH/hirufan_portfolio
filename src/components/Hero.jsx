import { motion } from 'framer-motion'
import Typewriter from 'typewriter-effect'
import Tilt from 'react-parallax-tilt'
import { FaLinkedin, FaGithub } from 'react-icons/fa'
import { MdMailOutline } from 'react-icons/md'
import { FiArrowRight, FiDownload, FiChevronDown } from 'react-icons/fi'
import { profile, contact, cvPath } from '../data'

export default function Hero({ scrollTo }) {
  return (
    <section id="home" className="section hero">
      <motion.div
        className="hero-text"
        initial={{ opacity: 0, x: -40 }}
        animate={{ opacity: 1, x: 0 }}
        transition={{ duration: 0.7, ease: [0.22, 1, 0.36, 1] }}
      >
        <p className="hero-greet">Hi, I’m</p>
        <h1 className="hero-name">
          {profile.name.slice(0, -4)}
          <span className="gradient-text">{profile.name.slice(-4)}</span>
        </h1>
        <div className="hero-role">
          <span className="prefix">A</span>
          <span className="gradient-text typer">
            <Typewriter
              options={{
                strings: profile.roles,
                autoStart: true,
                loop: true,
                delay: 55,
                deleteSpeed: 30,
              }}
            />
          </span>
        </div>
        <p className="hero-desc">{profile.summary}</p>

        <div className="hero-actions">
          <button className="btn btn-primary" onClick={() => scrollTo('Contact')}>
            Let’s Connect <FiArrowRight />
          </button>
          <a className="btn btn-ghost" href={cvPath} download="Hirufanullah_CV.pdf">
            Download CV <FiDownload />
          </a>
        </div>

        <div className="hero-socials">
          <a href={contact.socials.linkedin} target="_blank" rel="noreferrer" aria-label="LinkedIn"><FaLinkedin /></a>
          <a href={contact.socials.github} target="_blank" rel="noreferrer" aria-label="GitHub"><FaGithub /></a>
          <a href={`mailto:${contact.email}`} aria-label="Email"><MdMailOutline /></a>
        </div>
      </motion.div>

      <motion.div
        className="hero-visual"
        initial={{ opacity: 0, scale: 0.85 }}
        animate={{ opacity: 1, scale: 1 }}
        transition={{ duration: 0.8, delay: 0.15, ease: [0.22, 1, 0.36, 1] }}
      >
        <Tilt
          glareEnable
          glareMaxOpacity={0.18}
          glareColor="#ff2d2d"
          glarePosition="all"
          tiltMaxAngleX={10}
          tiltMaxAngleY={10}
          className="hero-tilt"
        >
          <motion.div
            className="hero-ring"
            animate={{ y: [0, -14, 0] }}
            transition={{ duration: 5, repeat: Infinity, ease: 'easeInOut' }}
          >
            <div className="hero-photo">
              <img src={profile.image} alt={profile.name} />
            </div>
          </motion.div>
        </Tilt>
      </motion.div>

      <button
        className="scroll-cue"
        onClick={() => scrollTo('About')}
        aria-label="Scroll to About"
      >
        <span>Scroll</span>
        <FiChevronDown />
      </button>
    </section>
  )
}
