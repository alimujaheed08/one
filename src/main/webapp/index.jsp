<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>NexusCart · Flipkart style</title>
  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" crossorigin="anonymous">
  <style>
    /* ----- RESET & VARIABLES (Flipkart inspired: blue+orange, bold, clean) ----- */
    * { margin: 0; padding: 0; box-sizing: border-box; }
    :root {
      --bg: #f1f3f6;
      --bg-card: #ffffff;
      --primary: #0a0a0a;
      --primary-light: #2c2c2c;
      --blue: #2874f0;          /* Flipkart blue */
      --blue-dark: #1a5fc7;
      --orange: #fb641b;        /* Flipkart orange */
      --orange-light: #ffe6d5;
      --gold: #b8860b;
      --muted: #565656;
      --muted-light: #878787;
      --surface: #f0f0f0;
      --success: #388e3c;
      --shadow: 0 2px 8px rgba(0,0,0,0.08);
      --shadow-hover: 0 8px 24px rgba(0,0,0,0.12);
      --radius: 8px;
      --radius-sm: 4px;
      --transition: 0.2s ease;
      --container: 1400px;
    }
    body {
      font-family: 'Inter', system-ui, -apple-system, sans-serif;
      background: var(--bg);
      color: #1a1a1a;
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }
    a { color: inherit; text-decoration: none; }
    img { display: block; max-width: 100%; }
    button { cursor: pointer; font-family: inherit; border: none; background: none; color: inherit; }
    input { font-family: inherit; }
    .container {
      width: 100%;
      max-width: var(--container);
      margin: 0 auto;
      padding: 0 20px;
    }
    .muted { color: var(--muted); }
    .text-center { text-align: center; }
    .sr-only { position: absolute; width: 1px; height: 1px; padding: 0; margin: -1px; overflow: hidden; }

    /* ----- BUTTONS (Flipkart: blue primary, orange accent) ----- */
    .btn {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
      padding: 10px 24px;
      border-radius: 4px;
      font-weight: 600;
      font-size: 14px;
      transition: var(--transition);
      border: 1px solid transparent;
      letter-spacing: 0.2px;
      text-transform: uppercase;
    }
    .btn-primary {
      background: var(--blue);
      color: #fff;
      border-color: var(--blue);
    }
    .btn-primary:hover {
      background: var(--blue-dark);
      border-color: var(--blue-dark);
      box-shadow: 0 4px 12px rgba(40,116,240,0.3);
    }
    .btn-secondary {
      background: var(--orange);
      color: #fff;
      border-color: var(--orange);
    }
    .btn-secondary:hover {
      background: #e65a0f;
      border-color: #e65a0f;
    }
    .btn-outline {
      background: transparent;
      border: 1px solid #d0d0d0;
      color: #1a1a1a;
    }
    .btn-outline:hover {
      background: #f0f0f0;
      border-color: #b0b0b0;
    }
    .btn-sm { padding: 6px 16px; font-size: 12px; border-radius: 4px; }

    /* ----- HEADER (Flipkart: blue bar, white search) ----- */
    header {
      background: var(--blue);
      box-shadow: 0 2px 6px rgba(0,0,0,0.12);
      position: sticky;
      top: 0;
      z-index: 100;
    }
    .header-main {
      display: flex;
      align-items: center;
      gap: 16px;
      padding: 10px 0;
      flex-wrap: wrap;
    }
    .brand {
      display: flex;
      align-items: center;
      gap: 4px;
      font-weight: 700;
      font-size: 26px;
      letter-spacing: -0.5px;
      color: #fff;
      padding: 4px 8px 4px 0;
    }
    .brand .accent { color: #ffe500; font-weight: 800; }
    .brand i { font-size: 24px; color: #ffe500; }

    .header-nav {
      display: flex;
      align-items: center;
      gap: 4px;
    }
    .header-nav a {
      padding: 8px 14px;
      border-radius: 4px;
      font-size: 14px;
      font-weight: 500;
      color: #fff;
      transition: var(--transition);
      background: transparent;
      opacity: 0.9;
    }
    .header-nav a:hover,
    .header-nav a.active {
      background: rgba(255,255,255,0.15);
      opacity: 1;
    }

    .header-search {
      display: flex;
      align-items: center;
      background: #fff;
      border-radius: 4px;
      padding: 0 4px 0 16px;
      flex: 1;
      max-width: 560px;
      min-width: 180px;
      border: 1px solid transparent;
      transition: var(--transition);
      box-shadow: 0 2px 4px rgba(0,0,0,0.06);
    }
    .header-search:focus-within {
      border-color: var(--orange);
      box-shadow: 0 0 0 3px rgba(251,100,27,0.15);
    }
    .header-search input {
      flex: 1;
      padding: 10px 0;
      border: 0;
      outline: none;
      font-size: 14px;
      background: transparent;
      color: #1a1a1a;
    }
    .header-search button {
      background: var(--blue);
      color: #fff;
      border-radius: 4px;
      padding: 8px 20px;
      font-size: 15px;
      transition: var(--transition);
    }
    .header-search button:hover { background: var(--blue-dark); }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .header-actions .icon-btn {
      padding: 8px 14px;
      border-radius: 4px;
      color: #fff;
      font-size: 14px;
      font-weight: 500;
      display: flex;
      align-items: center;
      gap: 6px;
      transition: var(--transition);
      background: transparent;
      opacity: 0.9;
    }
    .header-actions .icon-btn:hover {
      background: rgba(255,255,255,0.15);
      opacity: 1;
    }
    .cart-wrap {
      display: flex;
      align-items: center;
      gap: 6px;
      position: relative;
    }
    .cart-count {
      background: var(--orange);
      color: #fff;
      font-weight: 700;
      font-size: 12px;
      padding: 0 7px;
      border-radius: 30px;
      min-width: 22px;
      text-align: center;
      line-height: 22px;
    }

    .mobile-toggle {
      display: none;
      background: transparent;
      color: #fff;
      font-size: 22px;
      padding: 6px 10px;
      border-radius: 4px;
    }
    .mobile-toggle:hover { background: rgba(255,255,255,0.15); }

    #mobileMenu {
      display: none;
      background: #fff;
      padding: 12px 0;
      border-top: 1px solid #e0e0e0;
    }
    #mobileMenu ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 4px;
    }
    #mobileMenu ul li a {
      display: block;
      padding: 12px 16px;
      color: var(--primary);
      border-radius: 4px;
      transition: var(--transition);
      font-weight: 500;
    }
    #mobileMenu ul li a:hover { background: var(--surface); }

    /* ----- HERO (Flipkart: bold banner with gradient) ----- */
    .hero {
      position: relative;
      margin: 16px 16px 0;
      border-radius: var(--radius);
      overflow: hidden;
      min-height: 260px;
      background: linear-gradient(145deg, #1a5fc7, #2874f0);
      display: flex;
      align-items: center;
      padding: 32px 44px;
    }
    .hero::after {
      content: '';
      position: absolute;
      inset: 0;
      background: url('https://images.unsplash.com/photo-1607082348824-0a96f2a4b9da?auto=format&fit=crop&w=1400&q=80') center/cover no-repeat;
      opacity: 0.15;
      z-index: 0;
    }
    .hero .container { position: relative; z-index: 1; width: 100%; }
    .hero h1 {
      font-size: 36px;
      font-weight: 700;
      color: #fff;
      max-width: 500px;
      margin-bottom: 8px;
      letter-spacing: -0.3px;
    }
    .hero p {
      color: rgba(255,255,255,0.85);
      font-size: 16px;
      max-width: 400px;
      margin-bottom: 18px;
    }
    .hero .actions { display: flex; gap: 12px; flex-wrap: wrap; }
    .hero .btn-secondary { background: var(--orange); border-color: var(--orange); }
    .hero .btn-secondary:hover { background: #e65a0f; }
    .hero .btn-outline { background: rgba(255,255,255,0.15); border-color: rgba(255,255,255,0.3); color: #fff; }
    .hero .btn-outline:hover { background: rgba(255,255,255,0.25); }

    /* ----- SECTION HEADERS (Flipkart: bold) ----- */
    .section { padding: 28px 0; }
    .section-header {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 12px;
      margin-bottom: 18px;
      flex-wrap: wrap;
    }
    .section-header h2 {
      font-size: 24px;
      font-weight: 700;
      color: var(--primary);
      letter-spacing: -0.2px;
    }
    .section-header .view-all {
      color: var(--blue);
      font-size: 14px;
      font-weight: 600;
      transition: var(--transition);
    }
    .section-header .view-all:hover {
      color: var(--blue-dark);
      text-decoration: underline;
    }

    /* ----- CATEGORIES (Flipkart: white cards, clean) ----- */
    .categories-grid {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 16px;
    }
    .cat-card {
      background: var(--bg-card);
      border-radius: var(--radius);
      padding: 20px 12px;
      text-align: center;
      box-shadow: var(--shadow);
      transition: var(--transition);
      border: 1px solid #eaeaea;
    }
    .cat-card:hover {
      box-shadow: var(--shadow-hover);
      transform: translateY(-3px);
      border-color: var(--blue);
    }
    .cat-card .icon-wrap {
      width: 56px;
      height: 56px;
      border-radius: 50%;
      background: #e8f0fe;
      display: grid;
      place-items: center;
      margin: 0 auto 10px;
      font-size: 24px;
      color: var(--blue);
    }
    .cat-card h4 { font-size: 15px; font-weight: 600; color: var(--primary); }
    .cat-card .count { font-size: 12px; color: var(--muted-light); }

    /* ----- PRODUCTS (Flipkart: shadow cards, bold prices) ----- */
    .products-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 20px;
    }
    .product-card {
      background: var(--bg-card);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
      transition: var(--transition);
      border: 1px solid #eaeaea;
      display: flex;
      flex-direction: column;
    }
    .product-card:hover {
      box-shadow: var(--shadow-hover);
      transform: translateY(-4px);
      border-color: #d0d0d0;
    }
    .product-card .img-wrap {
      position: relative;
      background: #fafafa;
      aspect-ratio: 1 / 1;
      overflow: hidden;
    }
    .product-card .img-wrap img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: var(--transition);
    }
    .product-card:hover .img-wrap img { transform: scale(1.02); }
    .product-card .badge {
      position: absolute;
      top: 12px;
      left: 12px;
      background: var(--orange);
      color: #fff;
      padding: 2px 14px;
      border-radius: 4px;
      font-size: 11px;
      font-weight: 700;
      letter-spacing: 0.3px;
    }
    .product-card .badge.sale { background: var(--blue); }
    .product-card .wish-btn {
      position: absolute;
      top: 12px;
      right: 12px;
      width: 36px;
      height: 36px;
      border-radius: 50%;
      background: rgba(255,255,255,0.85);
      backdrop-filter: blur(4px);
      display: grid;
      place-items: center;
      font-size: 16px;
      color: var(--muted);
      transition: var(--transition);
      border: 1px solid #eee;
    }
    .product-card .wish-btn:hover { background: #fff; color: var(--blue); border-color: var(--blue); }
    .product-card .body {
      padding: 14px 16px 4px;
      flex: 1;
    }
    .product-card .body .category-tag {
      font-size: 11px;
      color: var(--muted-light);
      text-transform: uppercase;
      letter-spacing: 0.6px;
      font-weight: 600;
    }
    .product-card .body h5 {
      font-size: 15px;
      font-weight: 600;
      line-height: 1.3;
      margin: 4px 0 6px;
      display: -webkit-box;
      -webkit-line-clamp: 2;
      -webkit-box-orient: vertical;
      overflow: hidden;
      color: var(--primary);
    }
    .product-card .body .price-row {
      display: flex;
      align-items: baseline;
      gap: 10px;
      margin: 4px 0 2px;
    }
    .product-card .body .price {
      font-weight: 700;
      font-size: 20px;
      color: var(--primary);
    }
    .product-card .body .old-price {
      color: var(--muted-light);
      text-decoration: line-through;
      font-size: 14px;
    }
    .product-card .body .rating {
      display: flex;
      align-items: center;
      gap: 4px;
      font-size: 13px;
      color: #388e3c;
    }
    .product-card .body .rating i { color: #388e3c; }
    .product-card .body .rating span { color: var(--muted-light); font-size: 12px; }
    .product-card .footer {
      padding: 8px 16px 16px;
      display: flex;
      gap: 10px;
    }
    .product-card .footer .add-btn {
      flex: 1;
      padding: 10px 0;
      border-radius: 4px;
      background: var(--blue);
      color: #fff;
      font-weight: 600;
      font-size: 13px;
      transition: var(--transition);
      border: 1px solid var(--blue);
    }
    .product-card .footer .add-btn:hover {
      background: var(--blue-dark);
      border-color: var(--blue-dark);
    }
    .product-card .footer .add-btn.added {
      background: var(--success);
      border-color: var(--success);
    }

    /* ----- DEAL (Flipkart: bold orange accent) ----- */
    .deal-wrap {
      display: flex;
      gap: 0;
      background: var(--bg-card);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
      border: 1px solid #eaeaea;
    }
    .deal-wrap .deal-img {
      flex: 0 0 44%;
      background: #f7f4f0;
      min-height: 220px;
    }
    .deal-wrap .deal-img img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }
    .deal-wrap .deal-content {
      flex: 1;
      padding: 32px 36px;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }
    .deal-wrap .deal-content .tag {
      background: var(--orange);
      color: #fff;
      padding: 4px 16px;
      border-radius: 4px;
      font-size: 12px;
      font-weight: 700;
      text-transform: uppercase;
      align-self: flex-start;
      margin-bottom: 10px;
      letter-spacing: 0.5px;
    }
    .deal-wrap .deal-content h3 { font-size: 26px; font-weight: 700; color: var(--primary); }
    .deal-wrap .deal-content .desc { color: var(--muted); margin: 6px 0 10px; }
    .deal-wrap .deal-content .price-big {
      font-size: 30px;
      font-weight: 700;
      color: var(--blue);
    }
    .deal-wrap .deal-content .price-big .old {
      font-size: 18px;
      font-weight: 400;
      color: var(--muted-light);
      text-decoration: line-through;
      margin-left: 10px;
    }
    .deal-wrap .deal-content .stock {
      font-size: 13px;
      color: var(--muted);
      margin: 4px 0 14px;
    }
    .deal-wrap .deal-content .stock strong { color: var(--orange); }
    .timer-grid {
      display: flex;
      gap: 12px;
      margin: 8px 0 18px;
    }
    .timer-box {
      background: var(--primary);
      color: #fff;
      padding: 8px 16px;
      border-radius: var(--radius-sm);
      min-width: 60px;
      text-align: center;
    }
    .timer-box .num { font-size: 24px; font-weight: 700; line-height: 1.2; }
    .timer-box .label { font-size: 10px; opacity: 0.7; text-transform: uppercase; letter-spacing: 0.5px; }

    /* ----- TESTIMONIALS (Flipkart: clean cards) ----- */
    .testimonials-scroll {
      display: flex;
      gap: 20px;
      overflow-x: auto;
      padding: 4px 2px 12px;
      scroll-snap-type: x mandatory;
      -webkit-overflow-scrolling: touch;
    }
    .testimonials-scroll::-webkit-scrollbar { height: 4px; }
    .testimonials-scroll::-webkit-scrollbar-thumb { background: #ccc; border-radius: 20px; }
    .testimonial-card {
      flex: 0 0 280px;
      background: var(--bg-card);
      border-radius: var(--radius);
      padding: 24px 24px;
      box-shadow: var(--shadow);
      scroll-snap-align: start;
      border: 1px solid #eaeaea;
    }
    .testimonial-card .stars { color: #388e3c; font-size: 15px; letter-spacing: 2px; margin-bottom: 8px; }
    .testimonial-card blockquote {
      font-size: 14px;
      line-height: 1.6;
      color: var(--primary);
      margin-bottom: 12px;
    }
    .testimonial-card .author {
      display: flex;
      align-items: center;
      gap: 12px;
    }
    .testimonial-card .author .avatar {
      width: 40px;
      height: 40px;
      border-radius: 50%;
      object-fit: cover;
      background: #ddd;
    }
    .testimonial-card .author .name { font-weight: 600; font-size: 14px; }
    .testimonial-card .author .role { font-size: 12px; color: var(--muted-light); }

    /* ----- NEWSLETTER (Flipkart: blue strip) ----- */
    .newsletter-wrap {
      background: var(--blue);
      border-radius: var(--radius);
      padding: 36px 44px;
      box-shadow: var(--shadow);
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 28px;
      flex-wrap: wrap;
      color: #fff;
    }
    .newsletter-wrap .text h3 { font-size: 24px; font-weight: 700; margin-bottom: 2px; }
    .newsletter-wrap .text p { color: rgba(255,255,255,0.8); font-size: 14px; }
    .newsletter-wrap form {
      display: flex;
      gap: 10px;
      flex: 1;
      max-width: 460px;
    }
    .newsletter-wrap form input {
      flex: 1;
      padding: 12px 18px;
      border-radius: 4px;
      border: 1px solid rgba(255,255,255,0.3);
      font-size: 14px;
      background: rgba(255,255,255,0.15);
      transition: var(--transition);
      outline: none;
      color: #fff;
    }
    .newsletter-wrap form input::placeholder { color: rgba(255,255,255,0.6); }
    .newsletter-wrap form input:focus {
      border-color: #fff;
      background: rgba(255,255,255,0.25);
    }
    .newsletter-wrap form .btn {
      background: var(--orange);
      color: #fff;
      padding: 12px 28px;
      border-radius: 4px;
    }
    .newsletter-wrap form .btn:hover { background: #e65a0f; }
    #newsletterMsg { margin-top: 8px; font-size: 13px; width: 100%; color: #ffe500; }

    /* ----- FOOTER (Flipkart: dark, minimal) ----- */
    footer {
      background: #172337;
      color: #fff;
      padding: 36px 0 24px;
      margin-top: 16px;
    }
    .footer-grid {
      display: grid;
      grid-template-columns: 2fr 1fr 1fr 1fr;
      gap: 40px;
      margin-bottom: 28px;
    }
    .footer-grid .brand-col .brand { color: #fff; font-size: 22px; margin-bottom: 8px; }
    .footer-grid .brand-col .brand .accent { color: #ffe500; }
    .footer-grid .brand-col p { font-size: 13px; max-width: 280px; line-height: 1.6; opacity: 0.7; }
    .footer-grid .brand-col .socials {
      display: flex;
      gap: 10px;
      margin-top: 14px;
    }
    .footer-grid .brand-col .socials a {
      width: 38px;
      height: 38px;
      border-radius: 50%;
      background: rgba(255,255,255,0.08);
      display: grid;
      place-items: center;
      color: #fff;
      transition: var(--transition);
    }
    .footer-grid .brand-col .socials a:hover { background: var(--blue); }
    .footer-grid .col h5 { font-weight: 700; font-size: 14px; margin-bottom: 12px; color: #fff; }
    .footer-grid .col ul { list-style: none; display: flex; flex-direction: column; gap: 6px; }
    .footer-grid .col ul li a {
      color: rgba(255,255,255,0.6);
      font-size: 13px;
      transition: var(--transition);
    }
    .footer-grid .col ul li a:hover { color: #fff; }
    .footer-bottom {
      text-align: center;
      padding-top: 18px;
      border-top: 1px solid rgba(255,255,255,0.08);
      font-size: 13px;
      opacity: 0.6;
      color: #fff;
    }

    /* ----- RESPONSIVE (Flipkart breakpoints) ----- */
    @media (max-width: 1200px) {
      .products-grid { grid-template-columns: repeat(3, 1fr); }
      .categories-grid { grid-template-columns: repeat(3, 1fr); }
      .footer-grid { grid-template-columns: 1fr 1fr; }
    }
    @media (max-width: 992px) {
      .hero { margin: 12px 12px 0; padding: 28px 28px; min-height: 200px; }
      .hero h1 { font-size: 28px; }
      .header-nav { display: none; }
      .mobile-toggle { display: flex; align-items: center; justify-content: center; }
      .deal-wrap { flex-direction: column; }
      .deal-wrap .deal-img { flex: 0 0 180px; }
      .deal-wrap .deal-content { padding: 24px 28px; }
      .newsletter-wrap { flex-direction: column; text-align: center; }
      .newsletter-wrap form { max-width: 100%; }
      .header-search { max-width: 240px; }
    }
    @media (max-width: 768px) {
      .products-grid { grid-template-columns: repeat(2, 1fr); gap: 14px; }
      .categories-grid { grid-template-columns: repeat(2, 1fr); gap: 12px; }
      .footer-grid { grid-template-columns: 1fr; gap: 24px; }
      .header-search { min-width: 100px; }
      .header-actions .icon-btn span { display: none; }
      .brand { font-size: 22px; }
      .hero h1 { font-size: 22px; }
      .deal-wrap .deal-content .price-big { font-size: 24px; }
      .timer-box { min-width: 48px; padding: 4px 10px; }
      .timer-box .num { font-size: 18px; }
    }
    @media (max-width: 480px) {
      .products-grid { grid-template-columns: 1fr 1fr; gap: 10px; }
      .hero { margin: 8px 6px 0; padding: 18px; min-height: 150px; }
      .hero h1 { font-size: 18px; }
      .hero p { font-size: 13px; }
      .container { padding: 0 12px; }
      .product-card .body h5 { font-size: 13px; }
      .product-card .body .price { font-size: 17px; }
      .product-card .footer .add-btn { font-size: 12px; padding: 8px 0; }
      .cat-card { padding: 14px 8px; }
      .cat-card .icon-wrap { width: 44px; height: 44px; font-size: 20px; }
    }
  </style>
</head>
<body>

<!-- HEADER (Flipkart‑inspired) -->
<header>
  <div class="container header-main">
    <button class="mobile-toggle" id="mobileToggle" aria-label="Menu">
      <em class="fas fa-bars"></i>
    </button>
    <a class="brand" href="#">
      <em class="fas fa-store"></i>
      <span>Nexus<span class="accent">Cart</span></span>
    </a>

    <div class="header-nav" id="mainNav">
      <a href="#" class="active"><em class="fas fa-home"></i> Home</a>
      <a href="#categories">Categories</a>
      <a href="#products">New Arrivals</a>
      <a href="#deals">Deals</a>
      <a href="#testimonials">Reviews</a>
    </div>

    <div class="header-search" role="search">
      <input type="search" id="searchInput" placeholder="Search for products, brands and more..." aria-label="Search" />
      <button id="searchBtn" aria-label="Search"><i class="fas fa-search"></i></button>
    </div>

    <div class="header-actions">
      <button class="icon-btn"><i class="far fa-user"></i> <span>Sign in</span></button>
      <button class="icon-btn"><i class="far fa-heart"></i> <span>Wishlist</span></button>
      <div class="cart-wrap">
        <button class="icon-btn" id="cartBtn"><i class="fas fa-shopping-cart"></i> <span>Cart</span></button>
        <span class="cart-count" id="cartCount">0</span>
      </div>
    </div>
  </div>

  <!-- Mobile menu -->
  <div id="mobileMenu">
    <div class="container">
      <ul>
        <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
        <li><a href="#products"><i class="fas fa-fire"></i> New Arrivals</a></li>
        <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
        <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
        <li><a href="#"><i class="far fa-user"></i> Sign in</a></li>
        <li><a href="#"><i class="far fa-heart"></i> Wishlist</a></li>
      </ul>
    </div>
  </div>
</header>

<main>
  <!-- HERO (Flipkart style) -->
  <section class="hero" aria-label="Hero">
    <div class="container">
      <h1>Grab the best deals</h1>
      <p>Electronics, fashion, home & more — all at unbeatable prices.</p>
      <div class="actions">
        <button class="btn btn-secondary" id="shopNow"><i class="fas fa-shopping-bag"></i> Shop now</button>
        <button class="btn btn-outline" id="exploreDeals">Explore deals</button>
      </div>
    </div>
  </section>

  <!-- CATEGORIES -->
  <section class="section" id="categories">
    <div class="container">
      <div class="section-header">
        <h2>Shop by Category</h2>
        <a href="#" class="view-all">View all <i class="fas fa-arrow-right"></i></a>
      </div>
      <div class="categories-grid">
        <div class="cat-card"><div class="icon-wrap"><i class="fas fa-tshirt"></i></div><h4>Fashion</h4><div class="count">42 items</div></div>
        <div class="cat-card"><div class="icon-wrap"><i class="fas fa-laptop"></i></div><h4>Electronics</h4><div class="count">28 items</div></div>
        <div class="cat-card"><div class="icon-wrap"><i class="fas fa-home"></i></div><h4>Home</h4><div class="count">35 items</div></div>
        <div class="cat-card"><div class="icon-wrap"><i class="fas fa-book"></i></div><h4>Books</h4><div class="count">18 items</div></div>
        <div class="cat-card"><div class="icon-wrap"><i class="fas fa-dumbbell"></i></div><h4>Fitness</h4><div class="count">22 items</div></div>
        <div class="cat-card"><div class="icon-wrap"><i class="fas fa-gem"></i></div><h4>Accessories</h4><div class="count">30 items</div></div>
      </div>
    </div>
  </section>

  <!-- PRODUCTS -->
  <section class="section" id="products">
    <div class="container">
      <div class="section-header">
        <h2>✨ New Arrivals</h2>
        <a href="#" class="view-all">View all <i class="fas fa-arrow-right"></i></a>
      </div>
      <div class="products-grid" id="productsGrid">
        <!-- product 1 -->
        <div class="product-card" data-id="1">
          <div class="img-wrap">
            <img src="https://images.unsplash.com/photo-1523381210434-271e8be1f52b?auto=format&fit=crop&w=400&q=80" alt="product" loading="lazy">
            <span class="badge sale">-20%</span>
            <button class="wish-btn"><i class="far fa-heart"></i></button>
          </div>
          <div class="body">
            <div class="category-tag">Fashion</div>
            <h5>Classic Organic Tee</h5>
            <div class="price-row"><span class="price">$32</span><span class="old-price">$40</span></div>
            <div class="rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i> <span>(142)</span></div>
          </div>
          <div class="footer"><button class="add-btn" data-id="1"><i class="fas fa-plus"></i> Add</button></div>
        </div>
        <!-- product 2 -->
        <div class="product-card" data-id="2">
          <div class="img-wrap">
            <img src="https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=400&q=80" alt="product" loading="lazy">
            <span class="badge">New</span>
            <button class="wish-btn"><i class="far fa-heart"></i></button>
          </div>
          <div class="body">
            <div class="category-tag">Accessories</div>
            <h5>Sleek Sport Sneakers</h5>
            <div class="price-row"><span class="price">$68</span><span class="old-price">$85</span></div>
            <div class="rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i> <span>(89)</span></div>
          </div>
          <div class="footer"><button class="add-btn" data-id="2"><i class="fas fa-plus"></i> Add</button></div>
        </div>
        <!-- product 3 -->
        <div class="product-card" data-id="3">
          <div class="img-wrap">
            <img src="https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=400&q=80" alt="product" loading="lazy">
            <span class="badge sale">-15%</span>
            <button class="wish-btn"><i class="far fa-heart"></i></button>
          </div>
          <div class="body">
            <div class="category-tag">Electronics</div>
            <h5>Wireless Noise-Cancelling Headphones</h5>
            <div class="price-row"><span class="price">$149</span><span class="old-price">$175</span></div>
            <div class="rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i> <span>(210)</span></div>
          </div>
          <div class="footer"><button class="add-btn" data-id="3"><i class="fas fa-plus"></i> Add</button></div>
        </div>
        <!-- product 4 -->
        <div class="product-card" data-id="4">
          <div class="img-wrap">
            <img src="https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=400&q=80" alt="product" loading="lazy">
            <span class="badge">Bestseller</span>
            <button class="wish-btn"><i class="far fa-heart"></i></button>
          </div>
          <div class="body">
            <div class="category-tag">Accessories</div>
            <h5>Minimalist Leather Watch</h5>
            <div class="price-row"><span class="price">$95</span><span class="old-price">$120</span></div>
            <div class="rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i> <span>(67)</span></div>
          </div>
          <div class="footer"><button class="add-btn" data-id="4"><i class="fas fa-plus"></i> Add</button></div>
        </div>
      </div>
    </div>
  </section>

  <!-- DEAL SPOTLIGHT -->
  <section class="section" id="deals">
    <div class="container">
      <div class="section-header">
        <h2>🔥 Deal of the day</h2>
        <a href="#" class="view-all">More deals <i class="fas fa-arrow-right"></i></a>
      </div>
      <div class="deal-wrap">
        <div class="deal-img">
          <img src="https://images.unsplash.com/photo-1498049794561-7780e7231661?auto=format&fit=crop&w=600&q=80" alt="deal" loading="lazy">
        </div>
        <div class="deal-content">
          <span class="tag">Limited time</span>
          <h3>Smartphone Pro Max</h3>
          <p class="desc">Next‑gen camera, all‑day battery, and a stunning display.</p>
          <div class="price-big">$799 <span class="old">$999</span></div>
          <p class="stock"><strong>Only 12 left</strong> — hurry!</p>
          <div class="timer-grid">
            <div class="timer-box"><div class="num" id="hours">12</div><div class="label">Hours</div></div>
            <div class="timer-box"><div class="num" id="minutes">45</div><div class="label">Minutes</div></div>
            <div class="timer-box"><div class="num" id="seconds">30</div><div class="label">Seconds</div></div>
          </div>
          <button class="btn btn-primary" style="align-self:flex-start;"><i class="fas fa-bolt"></i> Grab now</button>
        </div>
      </div>
    </div>
  </section>

  <!-- TESTIMONIALS -->
  <section class="section" id="testimonials">
    <div class="container">
      <div class="section-header">
        <h2>⭐ What our customers say</h2>
        <a href="#" class="view-all">All reviews <i class="fas fa-arrow-right"></i></a>
      </div>
      <div class="testimonials-scroll">
        <div class="testimonial-card">
          <div class="stars"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
          <blockquote>“Amazing quality and fast delivery. My new favorite store!”</blockquote>
          <div class="author"><div class="avatar" style="background:#ddd;"></div><div><div class="name">Ananya S.</div><div class="role">Verified buyer</div></div></div>
        </div>
        <div class="testimonial-card">
          <div class="stars"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i></div>
          <blockquote>“Great selection of electronics at competitive prices. Highly recommend.”</blockquote>
          <div class="author"><div class="avatar" style="background:#ccc;"></div><div><div class="name">Rahul K.</div><div class="role">Tech enthusiast</div></div></div>
        </div>
        <div class="testimonial-card">
          <div class="stars"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
          <blockquote>“The deals are unbeatable! Scored a huge discount on my sneakers.”</blockquote>
          <div class="author"><div class="avatar" style="background:#ddd;"></div><div><div class="name">Priya M.</div><div class="role">Fashion lover</div></div></div>
        </div>
        <div class="testimonial-card">
          <div class="stars"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
          <blockquote>“Super easy checkout and the product arrived earlier than expected.”</blockquote>
          <div class="author"><div class="avatar" style="background:#ccc;"></div><div><div class="name">Vikram J.</div><div class="role">Repeat customer</div></div></div>
        </div>
      </div>
    </div>
  </section>

  <!-- NEWSLETTER -->
  <section class="section">
    <div class="container">
      <div class="newsletter-wrap">
        <div class="text">
          <h3>Stay in the loop</h3>
          <p>Get the latest deals and exclusive offers straight to your inbox.</p>
        </div>
        <form id="newsletterForm">
          <input type="email" placeholder="Enter your email" required>
          <button class="btn btn-secondary" type="submit">Subscribe</button>
        </form>
        <div id="newsletterMsg"></div>
      </div>
    </div>
  </section>
</main>

<!-- FOOTER (Flipkart dark) -->
<footer>
  <div class="container">
    <div class="footer-grid">
      <div class="brand-col">
        <a class="brand" href="#"><i class="fas fa-store"></i> Nexus<span class="accent">Cart</span></a>
        <p>Your one‑stop shop for fashion, electronics, home & more.</p>
        <div class="socials">
          <a href="#"><i class="fab fa-facebook-f"></i></a>
          <a href="#"><i class="fab fa-instagram"></i></a>
          <a href="#"><i class="fab fa-youtube"></i></a>
          <a href="#"><i class="fab fa-twitter"></i></a>
        </div>
      </div>
      <div class="col"><h5>About</h5><ul><li><a href="#">Contact us</a></li><li><a href="#">About us</a></li><li><a href="#">Careers</a></li><li><a href="#">Press</a></li></ul></div>
      <div class="col"><h5>Help</h5><ul><li><a href="#">Payments</a></li><li><a href="#">Shipping</a></li><li><a href="#">Returns</a></li><li><a href="#">FAQ</a></li></ul></div>
      <div class="col"><h5>Policy</h5><ul><li><a href="#">Privacy</a></li><li><a href="#">Terms</a></li><li><a href="#">Security</a></li><li><a href="#">Sitemap</a></li></ul></div>
    </div>
    <div class="footer-bottom">© 2025 NexusCart — All rights reserved.</div>
  </div>
</footer>

<script>
  (function(){
    // ----- Mobile toggle -----
    const toggle = document.getElementById('mobileToggle');
    const menu = document.getElementById('mobileMenu');
    if(toggle && menu) {
      toggle.addEventListener('click', function(e) {
        e.stopPropagation();
        menu.style.display = menu.style.display === 'block' ? 'none' : 'block';
      });
      document.addEventListener('click', function(e) {
        if(!menu.contains(e.target) && e.target !== toggle) {
          menu.style.display = 'none';
        }
      });
    }

    // ----- Cart counter (simple) -----
    let cartCount = 0;
    const cartCountEl = document.getElementById('cartCount');
    const addBtns = document.querySelectorAll('.add-btn');
    addBtns.forEach(btn => {
      btn.addEventListener('click', function(e) {
        e.stopPropagation();
        cartCount++;
        if(cartCountEl) cartCountEl.textContent = cartCount;
        this.classList.add('added');
        this.innerHTML = '<i class="fas fa-check"></i> Added';
        setTimeout(() => {
          this.classList.remove('added');
          this.innerHTML = '<i class="fas fa-plus"></i> Add';
        }, 1200);
      });
    });

    // ----- Wishlist toggle -----
    document.querySelectorAll('.wish-btn').forEach(btn => {
      btn.addEventListener('click', function(e) {
        e.stopPropagation();
        const icon = this.querySelector('i');
        icon.classList.toggle('far');
        icon.classList.toggle('fas');
        if(icon.classList.contains('fas')) {
          this.style.color = '#2874f0';
        } else {
          this.style.color = '';
        }
      });
    });

    // ----- Timer (deal) -----
    let totalSeconds = 12 * 3600 + 45 * 60 + 30;
    const hoursEl = document.getElementById('hours');
    const minutesEl = document.getElementById('minutes');
    const secondsEl = document.getElementById('seconds');
    function updateTimer() {
      if(totalSeconds <= 0) return;
      totalSeconds--;
      const h = Math.floor(totalSeconds / 3600);
      const m = Math.floor((totalSeconds % 3600) / 60);
      const s = totalSeconds % 60;
      if(hoursEl) hoursEl.textContent = String(h).padStart(2,'0');
      if(minutesEl) minutesEl.textContent = String(m).padStart(2,'0');
      if(secondsEl) secondsEl.textContent = String(s).padStart(2,'0');
    }
    setInterval(updateTimer, 1000);

    // ----- Newsletter -----
    const nlForm = document.getElementById('newsletterForm');
    const nlMsg = document.getElementById('newsletterMsg');
    if(nlForm) {
      nlForm.addEventListener('submit', function(e) {
        e.preventDefault();
        const input = this.querySelector('input[type="email"]');
        if(input && input.value.trim()) {
          nlMsg.textContent = '✅ Thank you for subscribing!';
          input.value = '';
          setTimeout(() => { nlMsg.textContent = ''; }, 3000);
        } else {
          nlMsg.textContent = '⚠️ Please enter a valid email.';
          setTimeout(() => { nlMsg.textContent = ''; }, 3000);
        }
      });
    }

    // ----- Search button (basic) -----
    const searchBtn = document.getElementById('searchBtn');
    const searchInput = document.getElementById('searchInput');
    if(searchBtn && searchInput) {
      searchBtn.addEventListener('click', function() {
        const query = searchInput.value.trim();
        if(query) alert('🔍 Searching for: "' + query + '" (demo)');
        else alert('Please enter a search term.');
      });
      searchInput.addEventListener('keypress', function(e) {
        if(e.key === 'Enter') {
          e.preventDefault();
          searchBtn.click();
        }
      });
    }

    // ----- Hero buttons (demo) -----
    document.getElementById('shopNow')?.addEventListener('click', function() {
      document.getElementById('products')?.scrollIntoView({ behavior: 'smooth' });
    });
    document.getElementById('exploreDeals')?.addEventListener('click', function() {
      document.getElementById('deals')?.scrollIntoView({ behavior: 'smooth' });
    });
    document.getElementById('cartBtn')?.addEventListener('click', function() {
      alert('🛒 Cart has ' + cartCount + ' item(s).');
    });
  })();
</script>
</body>
</html>
