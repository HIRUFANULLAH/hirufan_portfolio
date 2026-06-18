import { useState } from 'react'
import { motion, AnimatePresence } from 'framer-motion'
import { FiMenu, FiX } from 'react-icons/fi'
import { navItems } from '../data'

export default function Navbar({ active, scrolled, scrollTo }) {
  const [open, setOpen] = useState(false)

  const go = (item) => {
    setOpen(false)
    scrollTo(item)
  }

  return (
    <>
      <header className={`navbar ${scrolled ? 'scrolled' : ''}`}>
        <div className="logo">
          Hiru<span>.</span>
        </div>

        <nav>
          <ul className="nav-links">
            {navItems.map((item) => (
              <li key={item}>
                <button
                  className={active === item ? 'active' : ''}
                  onClick={() => go(item)}
                >
                  {active === item && (
                    <motion.span
                      layoutId="nav-pill"
                      className="nav-pill"
                      transition={{ type: 'spring', stiffness: 400, damping: 32 }}
                    />
                  )}
                  {item}
                </button>
              </li>
            ))}
          </ul>
        </nav>

        <button
          className="nav-hamburger"
          aria-label="Open menu"
          onClick={() => setOpen(true)}
        >
          <FiMenu />
        </button>
      </header>

      <AnimatePresence>
        {open && (
          <>
            <motion.div
              className="drawer-backdrop"
              onClick={() => setOpen(false)}
              initial={{ opacity: 0 }}
              animate={{ opacity: 1 }}
              exit={{ opacity: 0 }}
            />
            <motion.aside
              className="drawer"
              initial={{ x: '100%' }}
              animate={{ x: 0 }}
              exit={{ x: '100%' }}
              transition={{ type: 'tween', duration: 0.3, ease: 'easeOut' }}
            >
              <div
                className="logo"
                style={{ display: 'flex', justifyContent: 'space-between' }}
              >
                <span>
                  Hiru<span style={{ color: 'var(--accent)' }}>.</span>
                </span>
                <button
                  className="nav-hamburger"
                  style={{ display: 'block' }}
                  aria-label="Close menu"
                  onClick={() => setOpen(false)}
                >
                  <FiX />
                </button>
              </div>
              {navItems.map((item) => (
                <button
                  key={item}
                  className={active === item ? 'active' : ''}
                  onClick={() => go(item)}
                >
                  {item}
                </button>
              ))}
            </motion.aside>
          </>
        )}
      </AnimatePresence>
    </>
  )
}
