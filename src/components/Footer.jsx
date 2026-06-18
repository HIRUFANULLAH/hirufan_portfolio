import { FaLinkedin, FaGithub } from 'react-icons/fa'
import { MdMailOutline } from 'react-icons/md'
import { navItems, contact } from '../data'

export default function Footer({ active, scrollTo }) {
  return (
    <footer className="footer">
      <div className="footer-inner">
        <div className="logo">
          Hiru<span style={{ color: 'var(--accent)' }}>.</span>
        </div>

        <nav className="footer-nav">
          {navItems.map((item) => (
            <button
              key={item}
              className={active === item ? 'active' : ''}
              onClick={() => scrollTo(item)}
            >
              {item}
            </button>
          ))}
        </nav>

        <div className="footer-social">
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

        <p className="footer-copy">
          © 2025 <span>Hirufanullah</span>. Designed & built with React.
        </p>
      </div>
    </footer>
  )
}
