import { MdMailOutline } from 'react-icons/md'
import Reveal from './Reveal'
import { contact, asset } from '../data'

export default function Contact() {
  const mailto = `mailto:${contact.email}?subject=Hello&body=Hi Hirufanullah, I would like to connect with you.`
  const wa = `https://wa.me/${contact.whatsapp.number}`

  return (
    <section id="contact" className="section">
      <Reveal className="contact-card">
        <span className="eyebrow">Get In Touch</span>
        <h2 className="contact-headline">
          Let’s <span className="gradient-text">work together</span>
        </h2>
        <p className="contact-text">
          Have a project in mind or just want to say hi? My inbox is always open —
          I’ll get back to you as soon as I can.
        </p>
        <div className="contact-actions">
          <a className="contact-chip" href={mailto}>
            <MdMailOutline size={22} />
            {contact.email}
          </a>
          <a className="contact-chip" href={wa} target="_blank" rel="noreferrer">
            <img src={asset('/assets/img/whatsapp.png')} alt="WhatsApp" />
            {contact.whatsapp.display}
          </a>
        </div>
      </Reveal>
    </section>
  )
}
