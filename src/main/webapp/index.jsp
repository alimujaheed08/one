<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>NexusShop · Amazon‑style</title>
  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">
  <style>
    /* ----- RESET & VARIABLES (amazon‑inspired) ----- */
    * { margin: 0; padding: 0; box-sizing: border-box; }
    :root {
      --bg: #eaeded;
      --bg-card: #ffffff;
      --primary: #131921;
      --primary-light: #232f3e;
      --accent: #febd69;
      --accent-dark: #f3a847;
      --accent-light: #fff2d6;
      --muted: #565959;
      --muted-light: #aab1b7;
      --surface: #f0f2f2;
      --success: #067d62;
      --shadow: 0 2px 8px rgba(0,0,0,0.08);
      --shadow-hover: 0 6px 18px rgba(0,0,0,0.12);
      --radius: 8px;
      --radius-sm: 6px;
      --transition: 0.2s ease;
      --container: 1500px;
    }
    body {
      font-family: 'Inter', system-ui, sans-serif;
      background: var(--bg);
      color: #111;
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

    /* ----- BUTTONS (amazon‑style) ----- */
    .btn {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 6px;
      padding: 8px 20px;
      border-radius: 20px;
      font-weight: 600;
      font-size: 14px;
      transition: var(--transition);
      border: 1px solid transparent;
    }
    .btn-primary {
      background: var(--accent);
      color: #111;
      border-color: var(--accent-dark);
    }
    .btn-primary:hover {
      background: var(--accent-dark);
      border-color: #c8943e;
      transform: scale(0.98);
    }
    .btn-secondary {
      background: var(--primary-light);
      color: #fff;
      border-color: var(--primary-light);
    }
    .btn-secondary:hover {
      background: #3a4a5a;
    }
    .btn-outline {
      background: transparent;
      border: 1px solid #d5d9dd;
      color: #111;
    }
    .btn-outline:hover {
      background: #f0f2f2;
    }
    .btn-sm { padding: 4px 14px; font-size: 12px; }

    /* ----- HEADER (amazon‑like) ----- */
    header {
      background: var(--primary);
      color: #fff;
      position: sticky;
      top: 0;
      z-index: 100;
    }
    .header-main {
      display: flex;
      align-items: center;
      gap: 12px;
      padding: 6px 0;
      flex-wrap: wrap;
    }
    .brand {
      display: flex;
      align-items: center;
      gap: 4px;
      font-weight: 800;
      font-size: 22px;
      letter-spacing: -0.5px;
      color: #fff;
      padding: 4px 8px;
      border: 1px solid transparent;
      border-radius: 4px;
      transition: var(--transition);
    }
    .brand:hover { border-color: rgba(255,255,255,0.2); }
    .brand .accent { color: var(--accent); }
    .brand i { font-size: 24px; color: var(--accent); }

    .header-nav {
      display: flex;
      align-items: center;
      gap: 4px;
      flex: 1;
    }
    .header-nav a {
      padding: 8px 12px;
      border-radius: 4px;
      font-size: 14px;
      font-weight: 500;
      color: #e6e6e6;
      transition: var(--transition);
      border: 1px solid transparent;
    }
    .header-nav a:hover,
    .header-nav a.active {
      border-color: rgba(255,255,255,0.2);
      color: #fff;
    }
    .header-search {
      display: flex;
      flex: 1;
      max-width: 600px;
      min-width: 160px;
      background: #fff;
      border-radius: 8px;
      overflow: hidden;
      border: 2px solid transparent;
      transition: var(--transition);
    }
    .header-search:focus-within {
      border-color: var(--accent);
      box-shadow: 0 0 0 3px rgba(254,189,105,0.3);
    }
    .header-search input {
      flex: 1;
      padding: 10px 14px;
      border: 0;
      outline: none;
      font-size: 14px;
      background: transparent;
      color: #111;
    }
    .header-search button {
      background: var(--accent);
      padding: 0 18px;
      color: #111;
      font-size: 18px;
      transition: var(--transition);
    }
    .header-search button:hover { background: var(--accent-dark); }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 8px;
    }
    .header-actions .icon-btn {
      padding: 6px 10px;
      border-radius: 4px;
      color: #e6e6e6;
      font-size: 14px;
      font-weight: 500;
      display: flex;
      align-items: center;
      gap: 4px;
      border: 1px solid transparent;
      transition: var(--transition);
    }
    .header-actions .icon-btn:hover {
      border-color: rgba(255,255,255,0.2);
      color: #fff;
    }
    .cart-wrap {
      display: flex;
      align-items: center;
      gap: 4px;
      position: relative;
    }
    .cart-count {
      background: var(--accent);
      color: #111;
      font-weight: 700;
      font-size: 13px;
      padding: 0 6px;
      border-radius: 20px;
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
      border: 1px solid transparent;
    }
    .mobile-toggle:hover { border-color: rgba(255,255,255,0.2); }

    #mobileMenu {
      display: none;
      background: var(--primary-light);
      padding: 12px 0;
      border-top: 1px solid #3a4a5a;
    }
    #mobileMenu ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 4px;
    }
    #mobileMenu ul li a {
      display: block;
      padding: 10px 16px;
      color: #e6e6e6;
      border-radius: 4px;
      transition: var(--transition);
    }
    #mobileMenu ul li a:hover { background: rgba(255,255,255,0.06); }

    /* ----- HERO (amazon‑style banner) ----- */
    .hero {
      position: relative;
      margin: 12px 20px 0;
      border-radius: var(--radius);
      overflow: hidden;
      min-height: 280px;
      background: linear-gradient(145deg, #232f3e, #131921);
      display: flex;
      align-items: center;
      padding: 32px 40px;
    }
    .hero::after {
      content: '';
      position: absolute;
      inset: 0;
      background: url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80') center/cover no-repeat;
      opacity: 0.25;
      z-index: 0;
    }
    .hero .container { position: relative; z-index: 1; width: 100%; }
    .hero h1 {
      font-size: 32px;
      font-weight: 700;
      color: #fff;
      max-width: 500px;
      margin-bottom: 8px;
    }
    .hero p {
      color: rgba(255,255,255,0.85);
      font-size: 16px;
      max-width: 420px;
      margin-bottom: 16px;
    }
    .hero .actions { display: flex; gap: 10px; flex-wrap: wrap; }

    /* ----- SECTION HEADERS (amazon clean) ----- */
    .section { padding: 28px 0; }
    .section-header {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 12px;
      margin-bottom: 16px;
      flex-wrap: wrap;
    }
    .section-header h2 {
      font-size: 24px;
      font-weight: 700;
      color: #111;
    }
    .section-header .view-all {
      color: #007185;
      font-size: 14px;
      font-weight: 500;
      transition: var(--transition);
    }
    .section-header .view-all:hover {
      color: #c7511f;
      text-decoration: underline;
    }

    /* ----- CATEGORIES (amazon department style) ----- */
    .categories-grid {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 12px;
    }
    .cat-card {
      background: var(--bg-card);
      border-radius: var(--radius);
      padding: 16px 12px;
      text-align: center;
      box-shadow: var(--shadow);
      transition: var(--transition);
      border: 1px solid transparent;
      cursor: default;
    }
    .cat-card:hover {
      box-shadow: var(--shadow-hover);
      border-color: #d5d9dd;
      transform: translateY(-2px);
    }
    .cat-card .icon-wrap {
      width: 48px;
      height: 48px;
      border-radius: 50%;
      background: var(--accent-light);
      display: grid;
      place-items: center;
      margin: 0 auto 8px;
      font-size: 22px;
      color: #c7511f;
    }
    .cat-card h4 { font-size: 14px; font-weight: 600; }
    .cat-card .count { font-size: 12px; color: var(--muted); }

    /* ----- PRODUCTS (amazon card) ----- */
    .products-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 16px;
    }
    .product-card {
      background: var(--bg-card);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
      transition: var(--transition);
      border: 1px solid #e7e9ec;
      display: flex;
      flex-direction: column;
    }
    .product-card:hover {
      box-shadow: var(--shadow-hover);
      transform: translateY(-3px);
    }
    .product-card .img-wrap {
      position: relative;
      background: #f7f8fa;
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
      top: 10px;
      left: 10px;
      background: #c7511f;
      color: #fff;
      padding: 2px 10px;
      border-radius: 20px;
      font-size: 11px;
      font-weight: 700;
    }
    .product-card .badge.sale { background: #b12704; }
    .product-card .wish-btn {
      position: absolute;
      top: 10px;
      right: 10px;
      width: 32px;
      height: 32px;
      border-radius: 50%;
      background: rgba(255,255,255,0.85);
      display: grid;
      place-items: center;
      font-size: 15px;
      color: #555;
      transition: var(--transition);
      backdrop-filter: blur(4px);
    }
    .product-card .wish-btn:hover { background: #fff; color: #c7511f; }
    .product-card .body {
      padding: 12px 14px 6px;
      flex: 1;
    }
    .product-card .body .category-tag {
      font-size: 11px;
      color: var(--muted-light);
      text-transform: uppercase;
      letter-spacing: 0.4px;
      font-weight: 600;
    }
    .product-card .body h5 {
      font-size: 14px;
      font-weight: 600;
      line-height: 1.3;
      margin: 2px 0 4px;
      display: -webkit-box;
      -webkit-line-clamp: 2;
      -webkit-box-orient: vertical;
      overflow: hidden;
      color: #111;
    }
    .product-card .body .price-row {
      display: flex;
      align-items: baseline;
      gap: 8px;
      margin: 4px 0 2px;
    }
    .product-card .body .price {
      font-weight: 700;
      font-size: 18px;
      color: #111;
    }
    .product-card .body .old-price {
      color: var(--muted-light);
      text-decoration: line-through;
      font-size: 13px;
    }
    .product-card .body .rating {
      display: flex;
      align-items: center;
      gap: 4px;
      font-size: 13px;
      color: #f5a623;
    }
    .product-card .body .rating span { color: var(--muted); font-size: 12px; }
    .product-card .footer {
      padding: 6px 14px 14px;
      display: flex;
      gap: 8px;
    }
    .product-card .footer .add-btn {
      flex: 1;
      padding: 8px 0;
      border-radius: 20px;
      background: var(--accent);
      font-weight: 600;
      font-size: 13px;
      transition: var(--transition);
      color: #111;
      border: 1px solid var(--accent-dark);
    }
    .product-card .footer .add-btn:hover {
      background: var(--accent-dark);
    }
    .product-card .footer .add-btn.added {
      background: var(--success);
      color: #fff;
      border-color: var(--success);
    }

    /* ----- DEAL (amazon deal card) ----- */
    .deal-wrap {
      display: flex;
      gap: 0;
      background: var(--bg-card);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
      border: 1px solid #e7e9ec;
    }
    .deal-wrap .deal-img {
      flex: 0 0 44%;
      background: #f7f8fa;
      min-height: 220px;
    }
    .deal-wrap .deal-img img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }
    .deal-wrap .deal-content {
      flex: 1;
      padding: 28px 32px;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }
    .deal-wrap .deal-content .tag {
      background: #b12704;
      color: #fff;
      padding: 2px 12px;
      border-radius: 20px;
      font-size: 12px;
      font-weight: 700;
      text-transform: uppercase;
      align-self: flex-start;
      margin-bottom: 8px;
    }
    .deal-wrap .deal-content h3 { font-size: 24px; font-weight: 700; }
    .deal-wrap .deal-content .desc { color: var(--muted); margin: 4px 0 8px; }
    .deal-wrap .deal-content .price-big {
      font-size: 28px;
      font-weight: 700;
      color: #111;
    }
    .deal-wrap .deal-content .price-big .old {
      font-size: 18px;
      font-weight: 400;
      color: var(--muted-light);
      text-decoration: line-through;
      margin-left: 8px;
    }
    .deal-wrap .deal-content .stock {
      font-size: 13px;
      color: var(--muted);
      margin: 4px 0 12px;
    }
    .deal-wrap .deal-content .stock strong { color: #b12704; }
    .timer-grid {
      display: flex;
      gap: 10px;
      margin: 8px 0 16px;
    }
    .timer-box {
      background: var(--primary);
      color: #fff;
      padding: 6px 14px;
      border-radius: var(--radius-sm);
      min-width: 56px;
      text-align: center;
    }
    .timer-box .num { font-size: 22px; font-weight: 700; line-height: 1.2; }
    .timer-box .label { font-size: 10px; opacity: 0.7; text-transform: uppercase; }

    /* ----- TESTIMONIALS (amazon review style) ----- */
    .testimonials-scroll {
      display: flex;
      gap: 16px;
      overflow-x: auto;
      padding: 4px 2px 12px;
      scroll-snap-type: x mandatory;
      -webkit-overflow-scrolling: touch;
    }
    .testimonials-scroll::-webkit-scrollbar { height: 4px; }
    .testimonials-scroll::-webkit-scrollbar-thumb { background: #bbb; border-radius: 20px; }
    .testimonial-card {
      flex: 0 0 280px;
      background: var(--bg-card);
      border-radius: var(--radius);
      padding: 20px 22px;
      box-shadow: var(--shadow);
      scroll-snap-align: start;
      border: 1px solid #e7e9ec;
    }
    .testimonial-card .stars { color: #f5a623; font-size: 15px; letter-spacing: 1px; margin-bottom: 6px; }
    .testimonial-card blockquote {
      font-size: 14px;
      line-height: 1.5;
      color: #111;
      margin-bottom: 10px;
    }
    .testimonial-card .author {
      display: flex;
      align-items: center;
      gap: 10px;
    }
    .testimonial-card .author .avatar {
      width: 36px;
      height: 36px;
      border-radius: 50%;
      object-fit: cover;
      background: #ddd;
    }
    .testimonial-card .author .name { font-weight: 600; font-size: 13px; }
    .testimonial-card .author .role { font-size: 12px; color: var(--muted); }

    /* ----- NEWSLETTER (amazon style) ----- */
    .newsletter-wrap {
      background: var(--primary-light);
      border-radius: var(--radius);
      padding: 32px 40px;
      color: #fff;
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 24px;
      flex-wrap: wrap;
    }
    .newsletter-wrap .text h3 { font-size: 22px; font-weight: 700; margin-bottom: 2px; }
    .newsletter-wrap .text p { opacity: 0.8; font-size: 14px; }
    .newsletter-wrap form {
      display: flex;
      gap: 8px;
      flex: 1;
      max-width: 460px;
    }
    .newsletter-wrap form input {
      flex: 1;
      padding: 12px 16px;
      border-radius: 8px;
      border: 0;
      font-size: 14px;
      background: rgba(255,255,255,0.12);
      color: #fff;
      outline: 2px solid transparent;
      transition: var(--transition);
    }
    .newsletter-wrap form input::placeholder { color: rgba(255,255,255,0.5); }
    .newsletter-wrap form input:focus {
      outline-color: var(--accent);
      background: rgba(255,255,255,0.2);
    }
    .newsletter-wrap form .btn {
      background: var(--accent);
      color: #111;
      border-color: var(--accent-dark);
      padding: 12px 24px;
    }
    .newsletter-wrap form .btn:hover { background: var(--accent-dark); }
    #newsletterMsg { margin-top: 8px; font-size: 13px; opacity: 0.9; width: 100%; }

    /* ----- FOOTER (amazon‑inspired) ----- */
    footer {
      background: var(--primary-light);
      color: #ddd;
      padding: 32px 0 20px;
      margin-top: 12px;
    }
    .footer-grid {
      display: grid;
      grid-template-columns: 2fr 1fr 1fr 1fr;
      gap: 32px;
      margin-bottom: 24px;
    }
    .footer-grid .brand-col .brand { color: #fff; font-size: 20px; margin-bottom: 6px; }
    .footer-grid .brand-col p { font-size: 13px; max-width: 280px; line-height: 1.5; opacity: 0.8; }
    .footer-grid .brand-col .socials {
      display: flex;
      gap: 8px;
      margin-top: 12px;
    }
    .footer-grid .brand-col .socials a {
      width: 36px;
      height: 36px;
      border-radius: 50%;
      background: rgba(255,255,255,0.06);
      display: grid;
      place-items: center;
      color: #ddd;
      transition: var(--transition);
    }
    .footer-grid .brand-col .socials a:hover { background: var(--accent); color: #111; }
    .footer-grid .col h5 { font-weight: 700; font-size: 14px; margin-bottom: 10px; color: #fff; }
    .footer-grid .col ul { list-style: none; display: flex; flex-direction: column; gap: 4px; }
    .footer-grid .col ul li a {
      color: #ccc;
      font-size: 13px;
      transition: var(--transition);
    }
    .footer-grid .col ul li a:hover { color: #fff; text-decoration: underline; }
    .footer-bottom {
      text-align: center;
      padding-top: 16px;
      border-top: 1px solid rgba(255,255,255,0.06);
      font-size: 13px;
      opacity: 0.7;
    }

    /* ----- RESPONSIVE (amazon breakpoints) ----- */
    @media (max-width: 1200px) {
      .products-grid { grid-template-columns: repeat(3, 1fr); }
      .categories-grid { grid-template-columns: repeat(3, 1fr); }
      .footer-grid { grid-template-columns: 1fr 1fr; }
    }
    @media (max-width: 992px) {
      .hero { margin: 10px 12px 0; padding: 24px 24px; min-height: 200px; }
      .hero h1 { font-size: 26px; }
      .header-nav { display: none; }
      .mobile-toggle { display: flex; align-items: center; justify-content: center; }
      .deal-wrap { flex-direction: column; }
      .deal-wrap .deal-img { flex: 0 0 180px; }
      .deal-wrap .deal-content { padding: 20px 24px; }
      .newsletter-wrap { flex-direction: column; text-align: center; }
      .newsletter-wrap form { max-width: 100%; }
      .header-search { max-width: 300px; }
    }
    @media (max-width: 768px) {
      .products-grid { grid-template-columns: repeat(2, 1fr); gap: 12px; }
      .categories-grid { grid-template-columns: repeat(2, 1fr); gap: 10px; }
      .footer-grid { grid-template-columns: 1fr; gap: 20px; }
      .header-search { min-width: 120px; }
      .header-actions .icon-btn span { display: none; }
      .brand { font-size: 18px; }
      .hero h1 { font-size: 22px; }
      .deal-wrap .deal-content .price-big { font-size: 22px; }
      .timer-box { min-width: 44px; padding: 4px 10px; }
      .timer-box .num { font-size: 18px; }
    }
    @media (max-width: 480px) {
      .products-grid { grid-template-columns: 1fr 1fr; gap: 8px; }
      .hero { margin: 6px 6px 0; padding: 16px; min-height: 160px; }
      .hero h1 { font-size: 18px; }
      .hero p { font-size: 13px; }
      .container { padding: 0 10px; }
      .product-card .body h5 { font-size: 13px; }
      .product-card .body .price { font-size: 15px; }
      .product-card .footer .add-btn { font-size: 12px; padding: 6px 0; }
      .cat-card { padding: 12px 8px; }
      .cat-card .icon-wrap { width: 40px; height: 40px; font-size: 18px; }
    }
  </style>
</head>
<body>

<!-- HEADER (amazon‑style) -->
<header>
  <div class="container header-main">
    <button class="mobile-toggle" id="mobileToggle" aria-label="Menu">
      <i class="fas fa-bars"></i>
    </button>
    <a class="brand" href="#">
      <i class="fas fa-store-alt"></i>
      <span>Nexus<span class="accent">Shop</span></span>
    </a>

    <div class="header-nav" id="mainNav">
      <a href="#" class="active"><i class="fas fa-home"></i> Home</a>
      <a href="#categories">Categories</a>
      <a href="#products">Trending</a>
      <a href="#deals">Deals</a>
      <a href="#testimonials">Reviews</a>
    </div>

    <div class="header-search" role="search">
      <input type="search" id="searchInput" placeholder="Search NexusShop" aria-label="Search" />
      <button id="searchBtn" aria-label="Search"><i class="fas fa-search"></i></button>
    </div>

    <div class="header-actions">
      <button class="icon-btn"><i class="far fa-user"></i> <span>Account</span></button>
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
        <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
        <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
        <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
        <li><a href="#"><i class="far fa-user"></i> Account</a></li>
        <li><a href="#"><i class="far fa-heart"></i> Wishlist</a></li>
      </ul>
    </div>
  </div>
</header>

<main>
  <!-- HERO (amazon banner) -->
  <section class="hero" aria-label="Hero">
    <div class="container">
      <h1>Discover premium essentials</h1>
      <p>Fashion, tech & accessories — curated for you. Free shipping on first order.</p>
      <div class="actions">
        <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop now</button>
        <button class="btn btn-outline" style="background:rgba(255,255,255,0.08);color:#fff;border-color:rgba(255,255,255,0.2);" id="exploreDeals">Explore deals</button>
      </div>
    </div>
  </section>

  <!-- CATEGORIES -->
  <section class="section" id="categories">
    <div class="container">
      <div class="section-header">
        <h2>Shop by Category</h2>
        <a href="#" class="view-all">See all <i class="fas fa-arrow-right"></i></a>
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
        <h2>🔥 Trending now</h2>
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
            <h5>Urban Backpack Pro</h5>
            <div class="price-row"><span class="price">$68</span></div>
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
            <h5>Wireless Headphones</h5>
            <div class="price-row"><span class="price">$84</span><span class="old-price">$99</span></div>
            <div class="rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i> <span>(210)</span></div>
          </div>
          <div class="footer"><button class="add-btn" data-id="3"><i class="fas fa-plus"></i> Add</button></div>
        </div>
        <!-- product 4 -->
        <div class="product-card" data-id="4">
          <div class="img-wrap">
            <img src="https://images.unsplash.com/photo-1596755094514-f87e34085b2c?auto=format&fit=crop&w=400&q=80" alt="product" loading="lazy">
            <button class="wish-btn"><i class="far fa-heart"></i></button>
          </div>
          <div class="body">
            <div class="category-tag">Books</div>
            <h5>Design Stories</h5>
            <div class="price-row"><span class="price">$24</span></div>
            <div class="rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i> <span>(56)</span></div>
          </div>
          <div class="footer"><button class="add-btn" data-id="4"><i class="fas fa-plus"></i> Add</button></div>
        </div>
      </div>
    </div>
  </section>

  <!-- DEAL (amazon style) -->
  <section class="section" id="deals">
    <div class="container">
      <div class="deal-wrap">
        <div class="deal-img">
          <img src="https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=800&q=80" alt="deal" loading="lazy">
        </div>
        <div class="deal-content">
          <span class="tag"><i class="fas fa-bolt"></i> Flash sale</span>
          <h3>Smart Watch Series 8</h3>
          <p class="desc">Track fitness, style and stay connected — now at a special price.</p>
          <div class="price-big">$149 <span class="old">$249</span></div>
          <div class="stock"><strong>🔥 8 left</strong> — hurry up!</div>
          <div class="timer-grid">
            <div class="timer-box"><span class="num" id="hours">12</span><span class="label">h</span></div>
            <div class="timer-box"><span class="num" id="minutes">45</span><span class="label">m</span></div>
            <div class="timer-box"><span class="num" id="seconds">30</span><span class="label">s</span></div>
          </div>
          <button class="btn btn-primary" style="align-self:flex-start;"><i class="fas fa-bolt"></i> Grab this deal</button>
        </div>
      </div>
    </div>
  </section>

  <!-- TESTIMONIALS -->
  <section class="section" id="testimonials">
    <div class="container">
      <div class="section-header">
        <h2>⭐ What our customers say</h2>
      </div>
      <div class="testimonials-scroll">
        <div class="testimonial-card">
          <div class="stars"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
          <blockquote>“Absolutely love my new sneakers! Super comfy and shipping was fast.”</blockquote>
          <div class="author"><img class="avatar" src="https://i.pravatar.cc/100?img=1" alt="avatar"><div><div class="name">Emma W.</div><div class="role">Verified buyer</div></div></div>
        </div>
        <div class="testimonial-card">
          <div class="stars"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
          <blockquote>“NexusShop has the best customer service. Helped me with my return in minutes.”</blockquote>
          <div class="author"><img class="avatar" src="https://i.pravatar.cc/100?img=2" alt="avatar"><div><div class="name">Michael R.</div><div class="role">Loyal customer</div></div></div>
        </div>
        <div class="testimonial-card">
          <div class="stars"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
          <blockquote>“The quality is outstanding. I’ve recommended this store to all my friends.”</blockquote>
          <div class="author"><img class="avatar" src="https://i.pravatar.cc/100?img=3" alt="avatar"><div><div class="name">Sophia L.</div><div class="role">Fashion enthusiast</div></div></div>
        </div>
        <div class="testimonial-card">
          <div class="stars"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
          <blockquote>“Great experience from start to finish. Packaging was beautiful and eco‑friendly.”</blockquote>
          <div class="author"><img class="avatar" src="https://i.pravatar.cc/100?img=4" alt="avatar"><div><div class="name">James K.</div><div class="role">Eco‑conscious buyer</div></div></div>
        </div>
      </div>
    </div>
  </section>

  <!-- NEWSLETTER -->
  <section class="section">
    <div class="container">
      <div class="newsletter-wrap">
        <div class="text">
          <h3>📬 Get the inside scoop</h3>
          <p>Subscribe for exclusive deals, updates and 10% off your next order.</p>
        </div>
        <form id="newsletterForm">
          <input type="email" placeholder="Enter your email" required aria-label="Email">
          <button class="btn" type="submit"><i class="fas fa-paper-plane"></i> Subscribe</button>
          <div id="newsletterMsg"></div>
        </form>
      </div>
    </div>
  </section>
</main>

<!-- FOOTER (amazon‑style) -->
<footer>
  <div class="container">
    <div class="footer-grid">
      <div class="brand-col">
        <a class="brand" href="#"><i class="fas fa-store-alt"></i><span>Nexus<span class="accent">Shop</span></span></a>
        <p>Friendly, fast and curated for you. Shopping should be a joy.</p>
        <div class="socials">
          <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
          <a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
          <a href="#" aria-label="YouTube"><i class="fab fa-youtube"></i></a>
          <a href="#" aria-label="Pinterest"><i class="fab fa-pinterest"></i></a>
        </div>
      </div>
      <div class="col"><h5>Shop</h5><ul><li><a href="#">New arrivals</a></li><li><a href="#">Best sellers</a></li><li><a href="#">Sale</a></li><li><a href="#">Gift cards</a></li></ul></div>
      <div class="col"><h5>Support</h5><ul><li><a href="#">Help center</a></li><li><a href="#">Returns</a></li><li><a href="#">Shipping</a></li><li><a href="#">Contact</a></li></ul></div>
      <div class="col"><h5>Company</h5><ul><li><a href="#">About</a></li><li><a href="#">Careers</a></li><li><a href="#">Sustainability</a></li><li><a href="#">Press</a></li></ul></div>
    </div>
    <div class="footer-bottom">© 2026 NexusShop — crafted with <i class="fas fa-heart" style="color:var(--accent);"></i> for everyone.</div>
  </div>
</footer>

<script>
  (function(){
    // Mobile menu toggle
    const toggle = document.getElementById('mobileToggle');
    const menu = document.getElementById('mobileMenu');
    toggle.addEventListener('click', ()=>{
      const expanded = menu.style.display === 'block';
      menu.style.display = expanded ? 'none' : 'block';
      toggle.innerHTML = expanded ? '<i class="fas fa-bars"></i>' : '<i class="fas fa-times"></i>';
    });

    // Cart state
    let cartCount = 0;
    const cartCountEl = document.getElementById('cartCount');
    const addBtns = document.querySelectorAll('.add-btn');

    function updateCart() {
      cartCountEl.textContent = cartCount;
      if (cartCount > 0) {
        cartCountEl.style.transform = 'scale(1.15)';
        setTimeout(() => cartCountEl.style.transform = 'scale(1)', 150);
      }
    }

    addBtns.forEach(btn => {
      btn.addEventListener('click', function(e) {
        e.stopPropagation();
        cartCount++;
        updateCart();
        this.classList.add('added');
        this.innerHTML = '<i class="fas fa-check"></i> Added';
        setTimeout(() => {
          this.classList.remove('added');
          this.innerHTML = '<i class="fas fa-plus"></i> Add';
        }, 1200);
      });
    });

    // Shop now
    document.getElementById('shopNow').addEventListener('click', ()=>{
      alert('🛍️ Welcome! Explore our collection.');
    });
    document.getElementById('exploreDeals').addEventListener('click', ()=>{
      document.getElementById('deals').scrollIntoView({ behavior: 'smooth' });
    });

    // Newsletter
    const form = document.getElementById('newsletterForm');
    const msg = document.getElementById('newsletterMsg');
    form.addEventListener('submit', function(e){
      e.preventDefault();
      const email = this.querySelector('input[type="email"]').value.trim();
      if (email) {
        msg.textContent = '🎉 Thank you! Check your inbox for a surprise.';
        msg.style.color = '#a8d5ba';
        this.querySelector('input[type="email"]').value = '';
        setTimeout(() => { msg.textContent = ''; }, 3000);
      }
    });

    // Search
    document.getElementById('searchBtn').addEventListener('click', function(){
      const val = document.getElementById('searchInput').value.trim();
      if (val) alert(`🔍 Searching for "${val}" ...`);
    });
    document.getElementById('searchInput').addEventListener('keydown', function(e){
      if (e.key === 'Enter') {
        const val = this.value.trim();
        if (val) alert(`🔍 Searching for "${val}" ...`);
      }
    });

    // Cart button
    document.getElementById('cartBtn').addEventListener('click', function(){
      alert(`🛒 Your cart has ${cartCount} item${cartCount !== 1 ? 's' : ''}.`);
    });

    // Timer
    let hours = 12, minutes = 45, seconds = 30;
    const hEl = document.getElementById('hours');
    const mEl = document.getElementById('minutes');
    const sEl = document.getElementById('seconds');
    setInterval(() => {
      seconds--;
      if (seconds < 0) { seconds = 59; minutes--; }
      if (minutes < 0) { minutes = 59; hours--; }
      if (hours < 0) { hours = 0; minutes = 0; seconds = 0; }
      hEl.textContent = String(hours).padStart(2, '0');
      mEl.textContent = String(minutes).padStart(2, '0');
      sEl.textContent = String(seconds).padStart(2, '0');
    }, 1000);

    // Wishlist toggle
    document.querySelectorAll('.wish-btn').forEach(btn => {
      btn.addEventListener('click', function(e){
        e.stopPropagation();
        const icon = this.querySelector('i');
        icon.classList.toggle('far');
        icon.classList.toggle('fas');
        this.style.color = icon.classList.contains('fas') ? '#c7511f' : '#555';
      });
    });

    console.log('✨ NexusShop · Amazon-inspired UI');
  })();
</script>
</body>
</html>
