import { motion } from 'framer-motion'
import Reveal from './Reveal'
import { skills } from '../data'

export default function Skills() {
  return (
    <section id="skills" className="section">
      <Reveal className="section-head">
        <span className="eyebrow">What I Work With</span>
        <h2 className="section-title">
          My <span className="gradient-text">Skills</span>
        </h2>
        <p className="section-sub">
          The tools and technologies I use to design, build and ship polished
          cross-platform products.
        </p>
      </Reveal>

      <div className="skills-grid">
        {skills.map((skill, i) => (
          <Reveal key={skill.heading} delay={0.06 * i}>
            <article className="skill-card">
              <div className="skill-top">
                <div className="skill-icon">
                  <img src={skill.image} alt={skill.heading} />
                </div>
                <div>
                  <div className="skill-name">{skill.heading}</div>
                  <div className="skill-pct">{skill.level}% proficiency</div>
                </div>
              </div>
              <p className="skill-blurb">{skill.blurb}</p>
              <div className="skill-bar">
                <motion.div
                  className="skill-bar-fill"
                  initial={{ width: 0 }}
                  whileInView={{ width: `${skill.level}%` }}
                  viewport={{ once: true }}
                  transition={{ duration: 1, delay: 0.2, ease: 'easeOut' }}
                />
              </div>
            </article>
          </Reveal>
        ))}
      </div>
    </section>
  )
}
