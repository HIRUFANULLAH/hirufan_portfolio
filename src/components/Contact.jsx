import { MdMailOutline } from 'react-icons/md'
import { FaLinkedin, FaGithub, FaWhatsapp, FaPhone } from 'react-icons/fa'
import { FiArrowUpRight } from 'react-icons/fi'
import Reveal from './Reveal'
import { contact } from '../data'

export default function Contact() {
  const mailto = `mailto:${contact.email}?subject=Hello%20Hirufanullah&body=Hi, I would like to connect with you.`
  const wa = `https://wa.me/${contact.whatsapp.number}`

  const info = [
    { icon: <MdMailOutline />, label: 'Email', value: contact.email, href: mailto },
    {
      icon: (
        <>
          <FaPhone size={14} />
          <FaWhatsapp size={17} />
        </>
      ),
      label: 'Call / WhatsApp',
      value: contact.phone,
      href: wa,
    },
  ]

  return (
    <section id="contact" className="section">
      <Reveal className="contact-card">
        <span className="eyebrow">Get In Touch</span>
        <h2 className="contact-headline">
          Let’s <span className="gradient-text">work together</span>
        </h2>
        <p className="contact-text">
          Have a project in mind or a role to fill? My inbox is always open — I’ll
          get back to you as soon as I can.
        </p>

        <div className="contact-grid">
          {info.map((c) =>
            c.href ? (
              <a className="info-chip" key={c.label} href={c.href} target="_blank" rel="noreferrer">
                <span className="info-icon">{c.icon}</span>
                <span className="info-meta">
                  <small>{c.label}</small>
                  <strong>{c.value}</strong>
                </span>
                <FiArrowUpRight className="info-go" />
              </a>
            ) : (
              <div className="info-chip" key={c.label}>
                <span className="info-icon">{c.icon}</span>
                <span className="info-meta">
                  <small>{c.label}</small>
                  <strong>{c.value}</strong>
                </span>
              </div>
            )
          )}
        </div>

        <div className="contact-socials">
          <a href={contact.socials.linkedin} target="_blank" rel="noreferrer" aria-label="LinkedIn"><FaLinkedin /></a>
          <a href={contact.socials.github} target="_blank" rel="noreferrer" aria-label="GitHub"><FaGithub /></a>
          <a href={mailto} aria-label="Email"><MdMailOutline /></a>
        </div>
      </Reveal>
    </section>
  )
}
