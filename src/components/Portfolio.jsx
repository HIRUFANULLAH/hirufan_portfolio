import { projects } from '../data'
import FlipCard from './FlipCard'

export default function Portfolio() {
  return (
    <section id="portfolio" className="section">
      <h2 className="section-title">Portfolio</h2>
      <div className="card-grid portfolio-grid">
        {projects.map((project) => (
          <FlipCard
            key={project.heading}
            className="portfolio-card"
            front={
              <>
                <h3 className="card-heading">{project.heading}</h3>
                <div
                  className="portfolio-thumb"
                  style={{ backgroundImage: `url(${project.image})` }}
                  role="img"
                  aria-label={project.heading}
                />
              </>
            }
            back={
              <>
                <h3 className="card-heading">{project.heading}</h3>
                <p className="card-para">{project.paragraph}</p>
              </>
            }
          />
        ))}
      </div>
    </section>
  )
}
