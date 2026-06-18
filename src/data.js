// Portfolio content — refreshed copy, kept factual (name, role, real projects, contact)

// Prefix asset URLs with the Vite base path so they work both at the dev root
// ('/') and when deployed to a GitHub Pages subpath ('/hirufan_portfolio/').
export const asset = (p) => import.meta.env.BASE_URL + p.replace(/^\//, '')

export const profile = {
  name: 'Hirufanullah',
  roles: [
    'Flutter Developer',
    'Mobile App Developer',
    'Web Designer',
    'UI / UX Designer',
  ],
  tagline:
    'I craft high-performance, beautiful cross-platform apps for mobile, web & desktop — powered by Flutter, Dart, Firebase & GetX.',
  image: asset('/assets/Project_Image/homeScreen.png'),
}

export const stats = [
  { value: 6, suffix: '+', label: 'Projects Shipped' },
  { value: 4, suffix: '', label: 'Platforms' },
  { value: 6, suffix: '+', label: 'Technologies' },
  { value: 100, suffix: '%', label: 'Dedication' },
]

export const about = {
  paragraphs: [
    'I’m a passionate, detail-oriented Flutter Developer dedicated to crafting seamless, user-friendly applications. With a strong grasp of UI/UX principles, I build products that are visually polished, highly functional and accessible.',
    'My expertise spans Dart, state management, REST API integration and performance optimization — the building blocks of smooth, engaging experiences. Great development, to me, goes beyond code: it solves real problems and creates meaningful interactions.',
    'Across diverse projects I’ve shipped intuitive apps aligned with both business goals and user needs, grounded in clean architecture and best practices so every product stays scalable, efficient and user-centric.',
  ],
}

export const skills = [
  {
    heading: 'Flutter',
    image: asset('/assets/img/flutter.png'),
    level: 95,
    blurb:
      'Google’s open-source UI toolkit for natively compiled apps across mobile, web and desktop from a single codebase.',
  },
  {
    heading: 'Dart',
    image: asset('/assets/img/dart.png'),
    level: 92,
    blurb:
      'The modern, strongly-typed language behind Flutter — fast, null-safe and built for scalable applications.',
  },
  {
    heading: 'GetX',
    image: asset('/assets/img/getx.png'),
    level: 90,
    blurb:
      'Lightweight reactive state management, routing and dependency injection with minimal boilerplate.',
  },
  {
    heading: 'REST API',
    image: asset('/assets/img/rest_api.png'),
    level: 90,
    blurb:
      'Designing and integrating scalable, secure HTTP services with clean JSON data flow.',
  },
  {
    heading: 'Firebase',
    image: asset('/assets/img/firebase.png'),
    level: 88,
    blurb:
      'Auth, Firestore, cloud storage, push notifications and hosting for real-time, serverless backends.',
  },
  {
    heading: 'Figma',
    image: asset('/assets/img/figma.png'),
    level: 82,
    blurb:
      'Turning UI/UX designs and prototypes into pixel-perfect, production-ready interfaces.',
  },
]

export const projects = [
  {
    heading: 'Restaurant POS App',
    subtitle: 'Point of Sale & Management',
    image: asset('/assets/projects/pos-app.jpg'),
    tags: ['Flutter', 'POS', 'REST API'],
    blurb:
      'A multi-platform POS and restaurant manager handling orders, billing, inventory and rich sales reporting across Android, Windows, tablet and web.',
  },
  {
    heading: 'Restaurant Website',
    subtitle: 'Product & Onboarding Site',
    image: asset('/assets/projects/website.jpg'),
    tags: ['Flutter Web', 'Responsive', 'CRM'],
    blurb:
      'A marketing and onboarding website showcasing POS, inventory, scheduling and CRM features with demo requests and flexible plans.',
  },
  {
    heading: 'Admin Dashboard',
    subtitle: 'Organization Management',
    image: asset('/assets/projects/dashboard.jpg'),
    tags: ['Flutter', 'Firebase', 'Dashboards'],
    blurb:
      'Organization management for a training institute — courses, trainers, memberships, online payments and automated analytics with role-based access.',
  },
  {
    heading: 'Community Portal',
    subtitle: 'Public Society Website',
    image: asset('/assets/projects/portal.jpg'),
    tags: ['Flutter Web', 'REST API'],
    blurb:
      'A public society portal — training registration, news, events, membership details and special event listings for the community.',
  },
  {
    heading: 'Smart Parking App',
    subtitle: 'Parking Management System',
    image: asset('/assets/projects/parking.jpg'),
    tags: ['Flutter', 'REST API', 'Windows'],
    blurb:
      'A parking-operations app with real-time slot updates and role-based access control, with a responsive UI deployed across mobile and Windows.',
  },
  {
    heading: 'Employee Management',
    subtitle: 'Workforce Platform',
    image: asset('/assets/projects/employee.jpg'),
    tags: ['Flutter', 'Firebase', 'GetX'],
    blurb:
      'An all-in-one workforce platform — instant messaging, group meetings, document verification and employee attendance reporting, with role-based access.',
  },
  {
    heading: 'Procurement Platform',
    subtitle: 'Vendor & Purchase Management',
    image: asset('/assets/projects/procurement.jpg'),
    tags: ['Flutter', 'REST API', 'Workflows'],
    blurb:
      'Vendor and purchase-management modules with multi-stage approval workflows and integrated document management for purchase orders and vendor records.',
  },
]

export const navItems = ['Home', 'About', 'Skills', 'Projects', 'Contact']

export const sectionId = {
  Home: 'home',
  About: 'about',
  Skills: 'skills',
  Projects: 'projects',
  Contact: 'contact',
}

export const contact = {
  email: 'hirfan0307@gmail.com',
  whatsapp: { number: '9360673455', display: '+971 54 564 5325' },
  socials: {
    linkedin: 'https://linkedin.com/in/hirufanullah',
    github: 'https://github.com/HIRUFANULLAH',
  },
}

export const cvPath = asset('/assets/pdf/Hirufanullah-CV.pdf')
