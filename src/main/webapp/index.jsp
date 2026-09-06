<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>NexusStyle · TJMaxx‑inspired</title>
  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" crossorigin="anonymous">
  <style>
    /* ----- RESET & VARIABLES (TJMaxx‑inspired: warm, clean, boutique) ----- */
    * { margin: 0; padding: 0; box-sizing: border-box; }
    :root {
      --bg: #f7f4f0;
      --bg-card: #ffffff;
      --primary: #1a1a1a;
      --primary-light: #2c2c2c;
      --accent: #c8102e;        /* TJMaxx red */
      --accent-dark: #a00c24;
      --accent-light: #ffe6e9;
      --gold: #b8860b;
      --muted: #5a5a5a;
      --muted-light: #8c8c8c;
      --surface: #f0ebe6;
      --success: #2e7d5e;
      --shadow: 0 4px 12px rgba(0,0,0,0.04);
      --shadow-hover: 0 12px 28px rgba(0,0,0,0.08);
      --radius: 12px;
      --radius-sm: 8px;
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
      padding: 0 24px;
    }
    .muted { color: var(--muted); }
    .text-center { text-align: center; }
    .sr-only { position: absolute; width: 1px; height: 1px; padding: 0; margin: -1px; overflow: hidden; }

    /* ----- BUTTONS (TJMaxx: clean, red accents) ----- */
    .btn {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
      padding: 10px 24px;
      border-radius: 40px;
      font-weight: 600;
      font-size: 14px;
      transition: var(--transition);
      border: 1px solid transparent;
      letter-spacing: 0.3px;
    }
    .btn-primary {
      background: var(--accent);
      color: #fff;
      border-color: var(--accent);
    }
    .btn-primary:hover {
      background: var(--accent-dark);
      border-color: var(--accent-dark);
      transform: translateY(-1px);
      box-shadow: 0 6px 14px rgba(200,16,46,0.25);
    }
    .btn-secondary {
      background: var(--primary);
      color: #fff;
      border-color: var(--primary);
    }
    .btn-secondary:hover {
      background: #2c2c2c;
    }
    .btn-outline {
      background: transparent;
      border: 1px solid #d0cbc6;
      color: #1a1a1a;
    }
    .btn-outline:hover {
      background: #f0ebe6;
      border-color: #b0a8a0;
    }
    .btn-sm { padding: 6px 18px; font-size: 12px; border-radius: 30px; }

    /* ----- HEADER (TJMaxx: minimal, elegant) ----- */
    header {
      background: #ffffff;
      box-shadow: 0 1px 3px rgba(0,0,0,0.02);
      position: sticky;
      top: 0;
      z-index: 100;
      border-bottom: 1px solid rgba(0,0,0,0.04);
    }
    .header-main {
      display: flex;
      align-items: center;
      gap: 16px;
      padding: 12px 0;
      flex-wrap: wrap;
    }
    .brand {
      display: flex;
      align-items: center;
      gap: 6px;
      font-weight: 700;
      font-size: 24px;
      letter-spacing: -0.5px;
      color: var(--primary);
      padding: 4px 8px 4px 0;
    }
    .brand .accent { color: var(--accent); font-weight: 800; }
    .brand i { font-size: 22px; color: var(--accent); }

    .header-nav {
      display: flex;
      align-items: center;
      gap: 4px;
      flex: 1;
    }
    .header-nav a {
      padding: 8px 16px;
      border-radius: 40px;
      font-size: 14px;
      font-weight: 500;
      color: var(--muted);
      transition: var(--transition);
      background: transparent;
    }
    .header-nav a:hover,
    .header-nav a.active {
      background: var(--accent-light);
      color: var(--accent);
    }

    .header-search {
      display: flex;
      align-items: center;
      background: var(--surface);
      border-radius: 40px;
      padding: 0 4px 0 16px;
      flex: 1;
      max-width: 480px;
      min-width: 160px;
      border: 1px solid transparent;
      transition: var(--transition);
    }
    .header-search:focus-within {
      border-color: var(--accent);
      background: #fff;
      box-shadow: 0 0 0 3px rgba(200,16,46,0.08);
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
      background: var(--accent);
      color: #fff;
      border-radius: 40px;
      padding: 8px 18px;
      font-size: 15px;
      transition: var(--transition);
    }
    .header-search button:hover { background: var(--accent-dark); }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .header-actions .icon-btn {
      padding: 8px 12px;
      border-radius: 40px;
      color: var(--muted);
      font-size: 14px;
      font-weight: 500;
      display: flex;
      align-items: center;
      gap: 6px;
      transition: var(--transition);
      background: transparent;
    }
    .header-actions .icon-btn:hover {
      background: var(--surface);
      color: var(--primary);
    }
    .cart-wrap {
      display: flex;
      align-items: center;
      gap: 6px;
      position: relative;
    }
    .cart-count {
      background: var(--accent);
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
      color: var(--primary);
      font-size: 22px;
      padding: 6px 10px;
      border-radius: 40px;
    }
    .mobile-toggle:hover { background: var(--surface); }

    #mobileMenu {
      display: none;
      background: #fff;
      padding: 12px 0;
      border-top: 1px solid #eee;
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
      border-radius: 8px;
      transition: var(--transition);
      font-weight: 500;
    }
    #mobileMenu ul li a:hover { background: var(--surface); }

    /* ----- HERO (TJMaxx: lifestyle banner, soft) ----- */
    .hero {
      position: relative;
      margin: 16px 20px 0;
      border-radius: var(--radius);
      overflow: hidden;
      min-height: 280px;
      background: #e8e0d8;
      display: flex;
      align-items: center;
      padding: 36px 44px;
    }
    .hero::after {
      content: '';
      position: absolute;
      inset: 0;
      background: url('https://images.unsplash.com/photo-1534452203293-494d7ddbf7e0?auto=format&fit=crop&w=1400&q=80') center/cover no-repeat;
      opacity: 0.3;
      z-index: 0;
    }
    .hero .container { position: relative; z-index: 1; width: 100%; }
    .hero h1 {
      font-size: 34px;
      font-weight: 700;
      color: var(--primary);
      max-width: 480px;
      margin-bottom: 8px;
      letter-spacing: -0.3px;
    }
    .hero p {
      color: var(--muted);
      font-size: 16px;
      max-width: 400px;
      margin-bottom: 18px;
    }
    .hero .actions { display: flex; gap: 12px; flex-wrap: wrap; }

    /* ----- SECTION HEADERS (TJMaxx: refined) ----- */
    .section { padding: 32px 0; }
    .section-header {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 12px;
      margin-bottom: 20px;
      flex-wrap: wrap;
    }
    .section-header h2 {
      font-size: 26px;
      font-weight: 700;
      color: var(--primary);
      letter-spacing: -0.3px;
    }
    .section-header .view-all {
      color: var(--accent);
      font-size: 14px;
      font-weight: 600;
      transition: var(--transition);
      border-bottom: 2px solid transparent;
    }
    .section-header .view-all:hover {
      border-bottom-color: var(--accent);
    }

    /* ----- CATEGORIES (TJMaxx: rounded, airy) ----- */
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
      border: 1px solid #f0ebe6;
    }
    .cat-card:hover {
      box-shadow: var(--shadow-hover);
      transform: translateY(-4px);
      border-color: var(--accent-light);
    }
    .cat-card .icon-wrap {
      width: 56px;
      height: 56px;
      border-radius: 50%;
      background: var(--accent-light);
      display: grid;
      place-items: center;
      margin: 0 auto 10px;
      font-size: 24px;
      color: var(--accent);
    }
    .cat-card h4 { font-size: 15px; font-weight: 600; color: var(--primary); }
    .cat-card .count { font-size: 12px; color: var(--muted-light); }

    /* ----- PRODUCTS (TJMaxx: clean cards) ----- */
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
      border: 1px solid #f0ebe6;
      display: flex;
      flex-direction: column;
    }
    .product-card:hover {
      box-shadow: var(--shadow-hover);
      transform: translateY(-4px);
      border-color: #ddd6ce;
    }
    .product-card .img-wrap {
      position: relative;
      background: #faf8f6;
      aspect-ratio: 1 / 1;
      overflow: hidden;
    }
    .product-card .img-wrap img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: var(--transition);
    }
    .product-card:hover .img-wrap img { transform: scale(1.03); }
    .product-card .badge {
      position: absolute;
      top: 12px;
      left: 12px;
      background: var(--accent);
      color: #fff;
      padding: 2px 14px;
      border-radius: 30px;
      font-size: 11px;
      font-weight: 700;
      letter-spacing: 0.3px;
    }
    .product-card .badge.sale { background: var(--gold); }
    .product-card .wish-btn {
      position: absolute;
      top: 12px;
      right: 12px;
      width: 36px;
      height: 36px;
      border-radius: 50%;
      background: rgba(255,255,255,0.8);
      backdrop-filter: blur(4px);
      display: grid;
      place-items: center;
      font-size: 16px;
      color: var(--muted);
      transition: var(--transition);
      border: 1px solid #eee;
    }
    .product-card .wish-btn:hover { background: #fff; color: var(--accent); border-color: var(--accent-light); }
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
      color: var(--gold);
    }
    .product-card .body .rating span { color: var(--muted-light); font-size: 12px; }
    .product-card .footer {
      padding: 8px 16px 16px;
      display: flex;
      gap: 10px;
    }
    .product-card .footer .add-btn {
      flex: 1;
      padding: 10px 0;
      border-radius: 40px;
      background: var(--accent);
      color: #fff;
      font-weight: 600;
      font-size: 13px;
      transition: var(--transition);
      border: 1px solid var(--accent);
    }
    .product-card .footer .add-btn:hover {
      background: var(--accent-dark);
      border-color: var(--accent-dark);
    }
    .product-card .footer .add-btn.added {
      background: var(--success);
      border-color: var(--success);
    }

    /* ----- DEAL (TJMaxx: boutique spotlight) ----- */
    .deal-wrap {
      display: flex;
      gap: 0;
      background: var(--bg-card);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
      border: 1px solid #f0ebe6;
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
      background: var(--gold);
      color: #fff;
      padding: 4px 16px;
      border-radius: 30px;
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
      color: var(--accent);
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
    .deal-wrap .deal-content .stock strong { color: var(--accent); }
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

    /* ----- TESTIMONIALS (TJMaxx: social proof) ----- */
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
      border: 1px solid #f0ebe6;
    }
    .testimonial-card .stars { color: var(--gold); font-size: 15px; letter-spacing: 2px; margin-bottom: 8px; }
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

    /* ----- NEWSLETTER (TJMaxx: soft, inviting) ----- */
    .newsletter-wrap {
      background: #fff;
      border-radius: var(--radius);
      padding: 36px 44px;
      box-shadow: var(--shadow);
      border: 1px solid #f0ebe6;
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 28px;
      flex-wrap: wrap;
    }
    .newsletter-wrap .text h3 { font-size: 24px; font-weight: 700; color: var(--primary); margin-bottom: 2px; }
    .newsletter-wrap .text p { color: var(--muted); font-size: 14px; }
    .newsletter-wrap form {
      display: flex;
      gap: 10px;
      flex: 1;
      max-width: 460px;
    }
    .newsletter-wrap form input {
      flex: 1;
      padding: 12px 18px;
      border-radius: 40px;
      border: 1px solid #ddd6ce;
      font-size: 14px;
      background: var(--surface);
      transition: var(--transition);
      outline: none;
    }
    .newsletter-wrap form input:focus {
      border-color: var(--accent);
      background: #fff;
      box-shadow: 0 0 0 3px rgba(200,16,46,0.05);
    }
    .newsletter-wrap form .btn {
      background: var(--accent);
      color: #fff;
      padding: 12px 28px;
      border-radius: 40px;
    }
    .newsletter-wrap form .btn:hover { background: var(--accent-dark); }
    #newsletterMsg { margin-top: 8px; font-size: 13px; width: 100%; }

    /* ----- FOOTER (TJMaxx: clean, minimal) ----- */
    footer {
      background: #fff;
      color: var(--muted);
      padding: 36px 0 24px;
      margin-top: 16px;
      border-top: 1px solid #f0ebe6;
    }
    .footer-grid {
      display: grid;
      grid-template-columns: 2fr 1fr 1fr 1fr;
      gap: 40px;
      margin-bottom: 28px;
    }
    .footer-grid .brand-col .brand { color: var(--primary); font-size: 22px; margin-bottom: 8px; }
    .footer-grid .brand-col p { font-size: 13px; max-width: 280px; line-height: 1.6; opacity: 0.8; }
    .footer-grid .brand-col .socials {
      display: flex;
      gap: 10px;
      margin-top: 14px;
    }
    .footer-grid .brand-col .socials a {
      width: 38px;
      height: 38px;
      border-radius: 50%;
      background: var(--surface);
      display: grid;
      place-items: center;
      color: var(--muted);
      transition: var(--transition);
    }
    .footer-grid .brand-col .socials a:hover { background: var(--accent); color: #fff; }
    .footer-grid .col h5 { font-weight: 700; font-size: 14px; margin-bottom: 12px; color: var(--primary); }
    .footer-grid .col ul { list-style: none; display: flex; flex-direction: column; gap: 6px; }
    .footer-grid .col ul li a {
      color: var(--muted);
      font-size: 13px;
      transition: var(--transition);
    }
    .footer-grid .col ul li a:hover { color: var(--accent); }
    .footer-bottom {
      text-align: center;
      padding-top: 18px;
      border-top: 1px solid #f0ebe6;
      font-size: 13px;
      opacity: 0.7;
    }

    /* ----- RESPONSIVE (TJMaxx breakpoints) ----- */
    @media (max-width: 1200px) {
      .products-grid { grid-template-columns: repeat(3, 1fr); }
      .categories-grid { grid-template-columns: repeat(3, 1fr); }
      .footer-grid { grid-template-columns: 1fr 1fr; }
    }
    @media (max-width: 992px) {
      .hero { margin: 12px 12px 0; padding: 28px 28px; min-height: 200px; }
      .hero h1 { font-size: 26px; }
      .header-nav { display: none; }
      .mobile-toggle { display: flex; align-items: center; justify-content: center; }
      .deal-wrap { flex-direction: column; }
      .deal-wrap .deal-img { flex: 0 0 180px; }
      .deal-wrap .deal-content { padding: 24px 28px; }
      .newsletter-wrap { flex-direction: column; text-align: center; }
      .newsletter-wrap form { max-width: 100%; }
      .header-search { max-width: 260px; }
    }
    @media (max-width: 768px) {
      .products-grid { grid-template-columns: repeat(2, 1fr); gap: 14px; }
      .categories-grid { grid-template-columns: repeat(2, 1fr); gap: 12px; }
      .footer-grid { grid-template-columns: 1fr; gap: 24px; }
      .header-search { min-width: 100px; }
      .header-actions .icon-btn span { display: none; }
      .brand { font-size: 20px; }
      .hero h1 { font-size: 22px; }
      .deal-wrap .deal-content .price-big { font-size: 24px; }
      .timer-box { min-width: 48px; padding: 4px 10px; }
      .timer-box .num { font-size: 18px; }
    }
    @media (max-width: 480px) {
      .products-grid { grid-template-columns: 1fr 1fr; gap: 10px; }
      .hero { margin: 8px 6px 0; padding: 18px; min-height: 160px; }
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

<!-- HEADER (TJMaxx‑inspired) -->
<header>
  <div class="container header-main">
    <button class="mobile-toggle" id="mobileToggle" aria-label="Menu">
      <i class="fas fa-bars"></i>
    </button>
    <a class="brand" href="#">
      <i class="fas fa-store-alt"></i>
      <span>Nexus<span class="accent">Style</span></span>
    </a>

    <div class="header-nav" id="mainNav">
      <a href="#" class="active"><i class="fas fa-home"></i> Home</a>
      <a href="#categories">Categories</a>
      <a href="#products">New Arrivals</a>
      <a href="#deals">Deals</a>
      <a href="#testimonials">Reviews</a>
    </div>

    <div class="header-search" role="search">
      <input type="search" id="searchInput" placeholder="Search for style..." aria-label="Search" />
      <button id="searchBtn" aria-label="Search"><i class="fas fa-arrow-right"></i></button>
    </div>

    <div class="header-actions">
      <button class="icon-btn"><i class="far fa-user"></i> <span>Sign in</span></button>
      <button class="icon-btn"><i class="far fa-heart"></i> <span>Favorites</span></button>
      <div class="cart-wrap">
        <button class="icon-btn" id="cartBtn"><i class="fas fa-shopping-bag"></i> <span>Bag</span></button>
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
        <li><a href="#"><i class="far fa-heart"></i> Favorites</a></li>
      </ul>
    </div>
  </div>
</header>

<main>
  <!-- HERO (TJMaxx lifestyle) -->
  <section class="hero" aria-label="Hero">
    <div class="container">
      <h1>Find your signature style</h1>
      <p>Designer pieces, curated edits — discover looks that feel like you.</p>
      <div class="actions">
        <button class="btn btn-primary" id="shopNow"><i class="fas fa-shopping-bag"></i> Shop now</button>
        <button class="btn btn-outline" id="exploreDeals">Explore deals</button>
      </div>
    </div>
  </section>

  <!-- CATEGORIES -->
  <section class="section" id="categories">
    <div class="container">
      <div class="section-header">
        <h2>Shop by Category</h2>
        <a href="#" class="view-all">All categories <i class="fas fa-arrow-right"></i></a>
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
            <h5
