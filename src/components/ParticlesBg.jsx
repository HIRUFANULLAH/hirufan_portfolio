import { useEffect, useState, useMemo } from 'react'
import Particles, { initParticlesEngine } from '@tsparticles/react'
import { loadSlim } from '@tsparticles/slim'

// Animated red particle network over the dark background.
export default function ParticlesBg() {
  const [ready, setReady] = useState(false)

  useEffect(() => {
    initParticlesEngine(async (engine) => {
      await loadSlim(engine)
    }).then(() => setReady(true))
  }, [])

  const options = useMemo(
    () => ({
      fullScreen: { enable: true, zIndex: -1 },
      fpsLimit: 60,
      detectRetina: true,
      background: { color: 'transparent' },
      particles: {
        number: { value: 60, density: { enable: true, area: 900 } },
        color: { value: ['#ff2d2d', '#ff6b6b'] },
        links: {
          enable: true,
          color: '#ff2d2d',
          distance: 150,
          opacity: 0.22,
          width: 1,
        },
        move: { enable: true, speed: 1, outModes: { default: 'bounce' } },
        opacity: { value: { min: 0.2, max: 0.6 } },
        size: { value: { min: 1, max: 3 } },
      },
      // Decorative only — never intercept scroll/clicks (see #tsparticles in CSS).
      interactivity: { events: { onHover: { enable: false }, onClick: { enable: false } } },
    }),
    []
  )

  if (!ready) return null
  return <Particles id="tsparticles" options={options} />
}
