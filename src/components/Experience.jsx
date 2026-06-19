import { motion } from 'framer-motion'
import { FiBriefcase } from 'react-icons/fi'
import { HiAcademicCap } from 'react-icons/hi'
import Reveal from './Reveal'
import { experience, education } from '../data'

export default function Experience() {
  return (
    <section id="experience" className="section">
      <Reveal className="section-head">
        <span className="eyebrow">My Journey</span>
        <h2 className="section-title">
          Experience &amp; <span className="gradient-text">Education</span>
        </h2>
        <p className="section-sub">
          Where I’ve worked, what I’ve built, and how I got here.
        </p>
      </Reveal>

      <div className="timeline">
        {experience.map((job, i) => (
          <motion.div
            className="tl-item"
            key={job.role + i}
            initial={{ opacity: 0, x: -30 }}
            whileInView={{ opacity: 1, x: 0 }}
            viewport={{ once: true, margin: '-60px' }}
            transition={{ duration: 0.55, delay: 0.05 * i, ease: [0.22, 1, 0.36, 1] }}
          >
            <span className="tl-dot">
              <FiBriefcase />
            </span>
            <div className="tl-card">
              <span className="tl-period">{job.period}</span>
              <h3 className="tl-role">{job.role}</h3>
              <p className="tl-company">
                {job.company} · <span>{job.place}</span>
              </p>
              <ul className="tl-points">
                {job.points.map((p, j) => (
                  <li key={j}>{p}</li>
                ))}
              </ul>
            </div>
          </motion.div>
        ))}
      </div>

      <div className="edu-grid">
        {education.map((e, i) => (
          <Reveal key={e.title} delay={0.06 * i}>
            <div className="edu-card">
              <span className="edu-icon">
                <HiAcademicCap />
              </span>
              <div>
                <div className="edu-year">{e.year}</div>
                <h4 className="edu-title">{e.title}</h4>
                <p className="edu-org">{e.org}</p>
              </div>
            </div>
          </Reveal>
        ))}
      </div>
    </section>
  )
}
