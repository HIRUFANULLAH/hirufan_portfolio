import { useEffect, useState } from 'react'
import { navItems, sectionId } from '../data'

// Tracks the active section, navbar-scrolled state, and scroll-to-top visibility.
export default function useScrollSpy() {
  const [active, setActive] = useState('Home')
  const [scrolled, setScrolled] = useState(false)
  const [showTop, setShowTop] = useState(false)

  useEffect(() => {
    const onScroll = () => {
      const y = window.scrollY
      setScrolled(y > 20)
      setShowTop(y > 400)

      let current = 'Home'
      for (const item of navItems) {
        const el = document.getElementById(sectionId[item])
        if (el && el.getBoundingClientRect().top <= 220) current = item
      }
      setActive(current)
    }

    window.addEventListener('scroll', onScroll, { passive: true })
    onScroll()
    return () => window.removeEventListener('scroll', onScroll)
  }, [])

  const scrollTo = (item) => {
    document
      .getElementById(sectionId[item])
      ?.scrollIntoView({ behavior: 'smooth' })
  }

  const scrollToTop = () => window.scrollTo({ top: 0, behavior: 'smooth' })

  return { active, scrolled, showTop, scrollTo, scrollToTop }
}
