import Tilt from 'react-parallax-tilt'
import Reveal from './Reveal'
import { projects } from '../data'

export default function Projects() {
  return (
    <section id="projects" className="section">
      <Reveal className="section-head">
        <span className="eyebrow">Recent Work</span>
        <h2 className="section-title">
          Featured <span className="gradient-text">Projects</span>
        </h2>
        <p className="section-sub">
          A selection of cross-platform apps and web products I’ve built. Hover a
          card to read more.
        </p>
      </Reveal>

      <div className="projects-grid">
        {projects.map((project, i) => (
          <Reveal key={project.heading} delay={0.05 * (i % 3)}>
            <Tilt
              tiltMaxAngleX={7}
              tiltMaxAngleY={7}
              glareEnable
              glareMaxOpacity={0.14}
              glareColor="#ff2d2d"
              className="project-card"
            >
              <div className="project-media">
                <img src={project.image} alt={project.heading} />
                <div className="project-overlay">
                  <p>{project.blurb}</p>
                </div>
              </div>
              <div className="project-body">
                <span className="project-sub">{project.subtitle}</span>
                <h3 className="project-title">{project.heading}</h3>
                <div className="project-tags">
                  {project.tags.map((t) => (
                    <span className="tag" key={t}>
                      {t}
                    </span>
                  ))}
                </div>
              </div>
            </Tilt>
          </Reveal>
        ))}
      </div>
    </section>
  )
}
