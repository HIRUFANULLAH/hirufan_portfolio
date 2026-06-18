import Reveal from './Reveal'
import useCountUp from '../hooks/useCountUp'
import { about, stats } from '../data'

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
        <Reveal className="about-visual">
          <img src="/assets/Project_Image/home.png" alt="Hirufanullah at work" />
        </Reveal>

        <div>
          <Reveal>
            <span className="eyebrow">About Me</span>
            <h2 className="section-title">
              Building apps that <span className="gradient-text">feel right</span>
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
          <Reveal key={s.label} delay={0.08 * i}>
            <Stat {...s} />
          </Reveal>
        ))}
      </div>
    </section>
  )
}
