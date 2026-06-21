import Tilt from 'react-parallax-tilt'
import Reveal from './Reveal'
import useCountUp from '../hooks/useCountUp'
import { about, stats, profile, asset } from '../data'

function Stat({ value, suffix, label }) {
  const { ref, value: count } = useCountUp(value)
  return (
    <div className="stat-card" ref={ref}>
      <div className="stat-value gradient-text">
        {count}
        {suffix}
      </div>
      <div className="stat-label">{label}</div>
    </div>
  )
}

export default function About() {
  return (
    <section id="about" className="section">
      <div className="about-grid">
        <Reveal>
          <Tilt tiltMaxAngleX={8} tiltMaxAngleY={8} glareEnable glareMaxOpacity={0.15} glareColor="#ff2d2d" className="about-visual">
            <img src={asset('/assets/img/profile-2.png')} alt="Hirufanullah" />
          </Tilt>
        </Reveal>

        <div>
          <Reveal>
            <span className="eyebrow">About Me</span>
            <h2 className="section-title">
              Turning ideas into <span className="gradient-text">real products</span>
            </h2>
          </Reveal>
          <div className="about-text">
            {about.paragraphs.map((p, i) => (
              <Reveal as="p" key={i} delay={0.08 * i}>
                {p}
              </Reveal>
            ))}
          </div>
        </div>
      </div>

      <div className="stats">
        {stats.map((s, i) => (
          <Reveal key={s.label} delay={0.07 * i}>
            <Stat {...s} />
          </Reveal>
        ))}
      </div>
    </section>
  )
}
