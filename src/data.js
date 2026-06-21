// Portfolio content — sourced from Hirufanullah's CV (resume).

// Base-aware asset URL so paths work at the dev root and the GH-Pages subpath.
export const asset = (p) => import.meta.env.BASE_URL + p.replace(/^\//, '')

export const profile = {
  name: 'Hirufanullah',
  title: 'Software Developer',
  roles: [
    'Software Developer',
    'Flutter Developer',
    'Mobile App Developer',
    'UI / UX Designer',
  ],
  location: 'Dubai, UAE',
  summary:
    'Flutter & software developer with 2+ years of experience building scalable, cross-platform applications for Android, iOS, Windows and web. Skilled in Dart, Flutter, React.js, REST & GraphQL APIs and Clean Architecture — with a sharp eye for responsive UI/UX and performance.',
  image: asset('/assets/img/profile.png'),
}

export const stats = [
  { value: 2, suffix: '+', label: 'Years Experience' },
  { value: 9, suffix: '+', label: 'Apps Shipped' },
  { value: 4, suffix: '', label: 'Platforms' },
  { value: 15, suffix: '+', label: 'Technologies' },
]

export const about = {
  paragraphs: [
    'I’m a passionate, detail-oriented developer who turns ideas into seamless, production-ready apps. From single-codebase Flutter products to responsive web, I care about clean architecture, smooth motion and experiences that simply feel right.',
    'I’ve delivered 9+ production applications across two companies — parking systems, accounting & procurement platforms, POS and more — integrating REST/GraphQL APIs, AI-powered features and automation workflows while collaborating closely with design and backend teams.',
  ],
  facts: [
    { label: 'Location', value: 'Dubai, UAE' },
    { label: 'Experience', value: '2+ Years' },
    { label: 'Languages', value: 'Tamil · English' },
    { label: 'Availability', value: 'Open to work' },
  ],
}

export const skills = [
  { heading: 'Flutter', image: asset('/assets/img/flutter.png'), level: 95, blurb: 'Natively compiled apps for mobile, web & desktop from one codebase.' },
  { heading: 'Dart', image: asset('/assets/img/dart.png'), level: 92, blurb: 'The fast, strongly-typed language powering every Flutter product.' },
  { heading: 'React.js', image: asset('/assets/img/react.svg'), level: 85, blurb: 'Building fast, responsive web interfaces with React and modern tooling.' },
  { heading: 'REST & GraphQL', image: asset('/assets/img/rest_api.png'), level: 90, blurb: 'Designing & integrating scalable, secure APIs with clean data flow.' },
  { heading: 'Firebase', image: asset('/assets/img/firebase.png'), level: 88, blurb: 'Auth, Firestore, storage, FCM & hosting for real-time backends.' },
  { heading: 'Figma', image: asset('/assets/img/figma.png'), level: 82, blurb: 'Turning UI/UX designs into pixel-perfect, production interfaces.' },
]

export const services = [
  {
    icon: 'mobile',
    title: 'Mobile Application',
    desc: 'High-performance native Android & iOS apps built with Flutter from a single, scalable codebase.',
  },
  {
    icon: 'windows',
    title: 'Windows Application',
    desc: 'Powerful cross-platform desktop apps for Windows with a native look, feel and performance.',
  },
  {
    icon: 'web',
    title: 'Website',
    desc: 'Responsive, modern websites and web apps crafted with Flutter Web and React.js.',
  },
]

// Full tech list for the scrolling marquee.
export const techStack = [
  'Dart', 'Flutter', 'JavaScript', 'React.js', 'Python', 'HTML5', 'CSS3',
  'Firebase', 'REST API', 'GraphQL', 'GetX', 'BLoC', 'Provider', 'Clean Architecture',
  'MVVM', 'Tailwind CSS', 'Bootstrap', 'Node.js', 'Figma', 'Git', 'GitHub', 'GitLab',
]

export const experience = [
  {
    role: 'Software Developer',
    company: 'Cave Technologies',
    place: 'Dubai, UAE',
    period: '09/2025 — Present',
    points: [
      'Designed scalable Flutter apps with GetX, BLoC & Clean Architecture.',
      'Built & deployed 4+ production apps — parking, accounting & procurement platforms.',
      'Integrated AI-powered features and automation workflows that boosted productivity.',
      'Built responsive UI/UX components across multiple business departments.',
    ],
  },
  {
    role: 'Flutter Developer',
    company: 'SAFATECH Integrated Solution',
    place: 'Puducherry, India',
    period: '03/2024 — 05/2025',
    points: [
      'Developed & maintained 5+ cross-platform apps for Android, iOS & Windows.',
      'Integrated 15+ libraries, REST & GraphQL services — +20% feature delivery.',
      'Improved load speed by 30% and UI responsiveness by 25%.',
      'Implemented 100+ test cases, achieving 99% crash-free performance.',
    ],
  },
  {
    role: 'Intern — UI/UX & Flutter',
    company: 'SAFATECH Integrated Solution',
    place: 'Puducherry, India',
    period: '03/2024 — 06/2024',
    points: [
      'Designed 20+ responsive UI screens in Figma and built them in Flutter.',
      'Contributed to live projects from concept through deployment.',
    ],
  },
]

export const education = [
  {
    title: 'B.Sc — Computer Science',
    org: 'Tagore Govt. Arts & Science College, Pondicherry University',
    year: '2023',
  },
  {
    title: 'Higher Secondary School',
    org: 'Jeevanandam Govt. Boys Higher Secondary School',
    year: '2019',
  },
]

export const projects = [
  {
    heading: 'Parking Management',
    subtitle: 'Real-time Parking System',
    image: asset('/assets/projects/parking.jpg'),
    tags: ['Mobile App'],
    blurb:
      'A parking-operations app with real-time slot updates and role-based access control, with a responsive UI deployed across mobile and Windows.',
  },
  {
    heading: 'Accounting System',
    subtitle: 'Finance & Reporting',
    image: asset('/assets/projects/dashboard.jpg'),
    tags: ['Mobile App', 'Windows App'],
    blurb:
      'A cross-platform accounting app with transaction management, structured data flows, financial reporting and exportable reports for finance teams.',
  },
  {
    heading: 'Procurement Platform',
    subtitle: 'Vendor & Purchase Management',
    image: asset('/assets/projects/procurement.jpg'),
    tags: ['Mobile App'],
    blurb:
      'Vendor and purchase-management modules with multi-stage approval workflows and integrated document management for purchase orders and vendor records.',
  },
  {
    heading: 'Employee Management',
    subtitle: 'Workforce Platform',
    image: asset('/assets/projects/employee.jpg'),
    tags: ['Mobile App', 'Windows App'],
    blurb:
      'An all-in-one workforce platform — instant messaging, group meetings, document verification and employee attendance reporting, with role-based access.',
  },
  {
    heading: 'Restaurant POS',
    subtitle: 'Point of Sale & Management',
    image: asset('/assets/projects/pos-app.jpg'),
    tags: ['Windows App', 'Mobile App'],
    blurb:
      'A multi-platform POS and restaurant manager handling orders, billing, inventory and rich sales reporting across Android, Windows, tablet and web.',
  },
  {
    heading: 'Restaurant Website',
    subtitle: 'Product & Onboarding Site',
    image: asset('/assets/projects/website.jpg'),
    tags: ['Website'],
    blurb:
      'A marketing and onboarding website showcasing POS, inventory, scheduling and CRM features with demo requests and flexible plans.',
  },
  {
    heading: 'Community Portal',
    subtitle: 'Public Society Website',
    image: asset('/assets/projects/portal.jpg'),
    tags: ['Windows App'],
    blurb:
      'A public society portal — training registration, news, events, membership details and special event listings for the community.',
  },
]

export const navItems = ['Home', 'About', 'Skills', 'Services', 'Projects', 'Contact']

export const sectionId = {
  Home: 'home',
  About: 'about',
  Skills: 'skills',
  Services: 'services',
  Projects: 'projects',
  Contact: 'contact',
}

export const contact = {
  email: 'hirfan0307@gmail.com',
  phone: '+971 54 564 5325',
  location: 'Dubai, UAE',
  whatsapp: { number: '971545645325', display: '+971 54 564 5325' },
  socials: {
    linkedin: 'https://linkedin.com/in/hirufanullah',
    github: 'https://github.com/HIRUFANULLAH',
  },
}

export const cvPath = asset('/assets/pdf/Hirufanullah-CV.pdf')
