import { motion, useScroll, useSpring, AnimatePresence } from 'framer-motion'
import { FiChevronUp } from 'react-icons/fi'
import Background from './components/Background'
import Navbar from './components/Navbar'
import Hero from './components/Hero'
import About from './components/About'
import Skills from './components/Skills'
import Projects from './components/Projects'
import Contact from './components/Contact'
import Footer from './components/Footer'
import useScrollSpy from './hooks/useScrollSpy'

export default function App() {
  const { active, scrolled, showTop, scrollTo, scrollToTop } = useScrollSpy()
  const { scrollYProgress } = useScroll()
  const progress = useSpring(scrollYProgress, {
    stiffness: 120,
    damping: 28,
    restDelta: 0.001,
  })

  return (
    <>
      <Background />
      <motion.div className="scroll-progress" style={{ scaleX: progress, width: '100%' }} />

      <Navbar active={active} scrolled={scrolled} scrollTo={scrollTo} />

      <main>
        <Hero scrollTo={scrollTo} />
        <About />
        <Skills />
        <Projects />
        <Contact />
      </main>

      <Footer active={active} scrollTo={scrollTo} />

      <AnimatePresence>
        {showTop && (
          <motion.button
            className="scroll-top"
            onClick={scrollToTop}
            aria-label="Scroll to top"
            initial={{ opacity: 0, scale: 0.6 }}
            animate={{ opacity: 1, scale: 1 }}
            exit={{ opacity: 0, scale: 0.6 }}
            whileHover={{ scale: 1.1 }}
            whileTap={{ scale: 0.92 }}
          >
            <FiChevronUp />
          </motion.button>
        )}
      </AnimatePresence>
    </>
  )
}
