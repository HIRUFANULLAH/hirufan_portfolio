import Tilt from 'react-parallax-tilt'
import { FaMobileScreenButton, FaWindows } from 'react-icons/fa6'
import { TbWorldWww } from 'react-icons/tb'
import Reveal from './Reveal'
import { services } from '../data'

const icons = {
  mobile: <FaMobileScreenButton />,
  windows: <FaWindows />,
  web: <TbWorldWww />,
}

export default function Services() {
  return (
    <section id="services" className="section">
      <Reveal className="section-head">
        <span className="eyebrow">What I Offer</span>
        <h2 className="section-title">
          My <span className="gradient-text">Services</span>
        </h2>
        <p className="section-sub">
          End-to-end development across every platform — from a single, scalable
          codebase.
        </p>
      </Reveal>

      <div className="services-grid">
        {services.map((s, i) => (
          <Reveal key={s.title} delay={0.08 * i}>
            <Tilt
              tiltMaxAngleX={8}
              tiltMaxAngleY={8}
              glareEnable
              glareMaxOpacity={0.16}
              glareColor="#ff2d2d"
              className="service-card"
            >
              <span className="service-icon">{icons[s.icon]}</span>
              <h3 className="service-title">{s.title}</h3>
              <p className="service-desc">{s.desc}</p>
              <span className="service-no">0{i + 1}</span>
            </Tilt>
          </Reveal>
        ))}
      </div>
    </section>
  )
}
