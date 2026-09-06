<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>NexusShop · friendly e‑commerce</title>
  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">
  <style>
    /* ----- ROOT (softer, friendlier) ----- */
    :root {
      --bg: #f9f7f5;
      --bg-card: #ffffff;
      --primary: #1e1e2c;
      --primary-light: #2e2e44;
      --accent: #e06b5a;
      --accent-light: #f7dbd4;
      --accent-dark: #c24e3c;
      --muted: #6b6b7a;
      --muted-light: #a8a8b8;
      --surface: #f0eeeb;
      --success: #2a9d8f;
      --warning: #eac76a;
      --radius: 18px;
      --radius-sm: 12px;
      --shadow: 0 6px 28px rgba(30, 30, 44, 0.05);
      --shadow-hover: 0 14px 48px rgba(30, 30, 44, 0.12);
      --transition: 0.25s cubic-bezier(0.2, 0, 0, 1);
      --container: 1240px;
    }
    * { box-sizing: border-box; margin: 0; padding: 0; }
    html { scroll-behavior: smooth; }
    body {
      font-family: 'Inter', system-ui, sans-serif;
      background: var(--bg);
      color: var(--primary);
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

    /* ----- Buttons (round & soft) ----- */
    .btn {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
      padding: 12px 28px;
      border-radius: 100px;
      font-weight: 600;
      font-size: 15px;
      transition: var(--transition);
      border: 2px solid transparent;
    }
    .btn-primary {
      background: var(--accent);
      color: #fff;
      border-color: var(--accent);
    }
    .btn-primary:hover {
      background: var(--accent-dark);
      border-color: var(--accent-dark);
      transform: translateY(-2px);
      box-shadow: 0 8px 20px rgba(224, 107, 90, 0.3);
    }
    .btn-secondary {
      background: var(--primary);
      color: #fff;
      border-color: var(--primary);
    }
    .btn-secondary:hover {
      background: var(--primary-light);
      border-color: var(--primary-light);
      transform: translateY(-2px);
    }
    .btn-ghost {
      background: rgba(255,255,255,0.15);
      color: #fff;
      border-color: rgba(255,255,255,0.25);
    }
    .btn-ghost:hover {
      background: rgba(255,255,255,0.25);
      transform: translateY(-2px);
    }
    .btn-outline {
      background: transparent;
      color: var(--primary);
      border-color: rgba(30,30,44,0.12);
    }
    .btn-outline:hover {
      background: var(--primary);
      color: #fff;
      border-color: var(--primary);
      transform: translateY(-2px);
    }
    .btn-sm { padding: 8px 18px; font-size: 13px; }

    /* ----- Header (friendly & clean) ----- */
    header {
      position: sticky;
      top: 0;
      z-index: 100;
      background: rgba(255,255,255,0.92);
      backdrop-filter: blur(14px);
      -webkit-backdrop-filter: blur(14px);
      border-bottom: 1px solid rgba(30,30,44,0.04);
    }
    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 16px;
      padding: 12px 0;
      min-height: 68px;
    }
    .brand {
      display: flex;
      align-items: center;
      gap: 10px;
      font-weight: 800;
      font-size: 22px;
      letter-spacing: -0.3px;
      color: var(--primary);
      flex-shrink: 0;
    }
    .brand .accent { color: var(--accent); }
    .brand i { font-size: 26px; color: var(--accent); }
    nav.main-nav ul {
      display: flex;
      gap: 4px;
      list-style: none;
      align-items: center;
    }
    nav.main-nav li a {
      display: flex;
      align-items: center;
      gap: 6px;
      padding: 8px 16px;
      border-radius: 60px;
      font-weight: 500;
      font-size: 14px;
      color: var(--muted);
      transition: var(--transition);
    }
    nav.main-nav li a:hover,
    nav.main-nav li a.active {
      background: var(--surface);
      color: var(--primary);
    }
    .header-actions {
      display: flex;
      align-items: center;
      gap: 6px;
      flex-shrink: 0;
    }
    .header-actions .icon-btn {
      width: 42px;
      height: 42px;
      display: grid;
      place-items: center;
      border-radius: 50%;
      font-size: 18px;
      color: var(--muted);
      transition: var(--transition);
      position: relative;
    }
    .header-actions .icon-btn:hover {
      background: var(--surface);
      color: var(--primary);
    }
    .cart-wrap { position: relative; }
    .cart-count {
      position: absolute;
      top: -2px;
      right: -2px;
      background: var(--accent);
      color: #fff;
      font-size: 11px;
      font-weight: 700;
      width: 20px;
      height: 20px;
      border-radius: 50%;
      display: grid;
      place-items: center;
      border: 2px solid #fff;
      transition: 0.15s ease;
    }
    .search-wrap {
      display: flex;
      align-items: center;
      background: var(--surface);
      border-radius: 60px;
      padding: 0 16px 0 18px;
      transition: var(--transition);
      border: 2px solid transparent;
      min-width: 200px;
    }
    .search-wrap:focus-within {
      border-color: var(--accent);
      background: #fff;
      box-shadow: 0 0 0 4px rgba(224,107,90,0.08);
    }
    .search-wrap input {
      border: 0;
      background: transparent;
      outline: none;
      width: 100%;
      padding: 10px 0;
      font-size: 14px;
      color: var(--primary);
    }
    .search-wrap input::placeholder { color: var(--muted-light); }
    .search-wrap button {
      padding: 8px 0 8px 10px;
      color: var(--muted);
      font-size: 15px;
      transition: var(--transition);
    }
    .search-wrap button:hover { color: var(--accent); }
    .mobile-toggle {
      display: none;
      width: 42px;
      height: 42px;
      border-radius: 50%;
      font-size: 20px;
      background: var(--surface);
      color: var(--primary);
      transition: var(--transition);
    }
    .mobile-toggle:hover { background: var(--accent-light); }
    #mobileMenu {
      display: none;
      background: #fff;
      border-top: 1px solid rgba(30,30,44,0.04);
      padding: 12px 0 20px;
    }
    #mobileMenu ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 4px;
    }
    #mobileMenu ul li a {
      display: flex;
      align-items: center;
      gap: 12px;
      padding: 12px 16px;
      border-radius: var(--radius-sm);
      font-weight: 500;
      color: var(--primary);
      transition: var(--transition);
    }
    #mobileMenu ul li a:hover { background: var(--surface); }
    #mobileMenu ul li a i { width: 22px; color: var(--muted); }

    /* ----- Hero (warmer) ----- */
    .hero {
      position: relative;
      display: flex;
      align-items: center;
      min-height: 460px;
      padding: 56px 0;
      border-radius: var(--radius);
      overflow: hidden;
      margin: 20px 24px 0;
      background: linear-gradient(145deg, #1e1e2c 0%, #2e2e44 100%);
    }
    .hero::before {
      content: '';
      position: absolute;
      inset: 0;
      background: url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80') center/cover no-repeat;
      opacity: 0.30;
      z-index: 0;
    }
    .hero .container { position: relative; z-index: 1; }
    .hero .badge {
      display: inline-block;
      background: rgba(224,107,90,0.18);
      color: var(--accent);
      padding: 4px 16px;
      border-radius: 60px;
      font-weight: 600;
      font-size: 13px;
      letter-spacing: 0.3px;
      margin-bottom: 16px;
    }
    .hero h1 {
      font-family: 'Playfair Display', serif;
      font-size: 46px;
      font-weight: 700;
      color: #fff;
      line-height: 1.15;
      max-width: 600px;
      margin-bottom: 16px;
    }
    .hero p {
      color: rgba(255,255,255,0.8);
      font-size: 17px;
      max-width: 500px;
      margin-bottom: 28px;
      line-height: 1.6;
    }
    .hero .actions { display: flex; gap: 12px; flex-wrap: wrap; }

    /* ----- Sections ----- */
    .section { padding: 56px 0; }
    .section-header {
      display: flex;
      align-items: flex-end;
      justify-content: space-between;
      gap: 16px;
      margin-bottom: 32px;
      flex-wrap: wrap;
    }
    .section-header .title-group h2 {
      font-size: 28px;
      font-weight: 700;
      letter-spacing: -0.2px;
    }
    .section-header .title-group p {
      color: var(--muted);
      margin-top: 4px;
      font-size: 15px;
    }
    .section-header .view-all {
      font-weight: 600;
      color: var(--accent);
      display: flex;
      align-items: center;
      gap: 6px;
      font-size: 14px;
      transition: var(--transition);
      white-space: nowrap;
    }
    .section-header .view-all:hover { gap: 12px; color: var(--accent-dark); }

    /* ----- Categories (friendly cards) ----- */
    .categories-grid {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 16px;
    }
    .cat-card {
      background: var(--bg-card);
      border-radius: var(--radius);
      padding: 24px 16px;
      text-align: center;
      box-shadow: var(--shadow);
      transition: var(--transition);
      cursor: pointer;
      border: 2px solid transparent;
    }
    .cat-card:hover {
      transform: translateY(-6px);
      box-shadow: var(--shadow-hover);
      border-color: var(--accent-light);
    }
    .cat-card .icon-wrap {
      width: 56px;
      height: 56px;
      border-radius: 50%;
      background: var(--accent-light);
      display: grid;
      place-items: center;
      margin: 0 auto 12px;
      font-size: 24px;
      color: var(--accent);
      transition: var(--transition);
    }
    .cat-card:hover .icon-wrap {
      background: var(--accent);
      color: #fff;
    }
    .cat-card h4 { font-size: 15px; font-weight: 600; }
    .cat-card .count { font-size: 13px; color: var(--muted); margin-top: 4px; }

    /* ----- Products (clean & airy) ----- */
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
      display: flex;
      flex-direction: column;
      border: 2px solid transparent;
    }
    .product-card:hover {
      transform: translateY(-6px);
      box-shadow: var(--shadow-hover);
      border-color: var(--accent-light);
    }
    .product-card .img-wrap {
      position: relative;
      overflow: hidden;
      background: var(--surface);
      aspect-ratio: 1 / 1;
    }
    .product-card .img-wrap img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: var(--transition);
    }
    .product-card:hover .img-wrap img { transform: scale(1.04); }
    .product-card .badge {
      position: absolute;
      top: 12px;
      left: 12px;
      background: var(--accent);
      color: #fff;
      padding: 4px 12px;
      border-radius: 60px;
      font-size: 11px;
      font-weight: 700;
    }
    .product-card .badge.sale { background: var(--warning); color: var(--primary); }
    .product-card .wish-btn {
      position: absolute;
      top: 12px;
      right: 12px;
      width: 36px;
      height: 36px;
      border-radius: 50%;
      background: rgba(255,255,255,0.9);
      display: grid;
      place-items: center;
      font-size: 16px;
      color: var(--muted);
      transition: var(--transition);
      backdrop-filter: blur(4px);
    }
    .product-card .wish-btn:hover { background: #fff; color: var(--accent); transform: scale(1.08); }
    .product-card .body {
      padding: 16px 18px 10px;
      flex: 1;
      display: flex;
      flex-direction: column;
      gap: 4px;
    }
    .product-card .body .category-tag {
      font-size: 12px;
      color: var(--muted-light);
      text-transform: uppercase;
      letter-spacing: 0.4px;
      font-weight: 600;
    }
    .product-card .body h5 {
      font-size: 15px;
      font-weight: 600;
      line-height: 1.3;
      display: -webkit-box;
      -webkit-line-clamp: 2;
      -webkit-box-orient: vertical;
      overflow: hidden;
    }
    .product-card .body .price-row {
      display: flex;
      align-items: center;
      gap: 10px;
      margin-top: 4px;
    }
    .product-card .body .price {
      font-weight: 700;
      font-size: 18px;
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
      color: #f5a623;
    }
    .product-card .body .rating span { color: var(--muted); font-weight: 400; }
    .product-card .footer {
      padding: 0 18px 18px;
      display: flex;
      gap: 10px;
    }
    .product-card .footer .add-btn {
      flex: 1;
      padding: 10px;
      border-radius: 60px;
      background: var(--primary);
      color: #fff;
      font-weight: 600;
      font-size: 14px;
      transition: var(--transition);
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
    }
    .product-card .footer .add-btn:hover {
      background: var(--accent);
      transform: scale(1.02);
    }
    .product-card .footer .add-btn.added { background: var(--success); }

    /* ----- Deal (friendly highlight) ----- */
    .deal-wrap {
      display: flex;
      gap: 0;
      background: var(--bg-card);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
    }
    .deal-wrap .deal-img {
      flex: 0 0 48%;
      background: var(--surface);
      min-height: 280px;
    }
    .deal-wrap .deal-img img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }
    .deal-wrap .deal-content {
      flex: 1;
      padding: 40px 44px;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }
    .deal-wrap .deal-content .tag {
      display: inline-block;
      background: var(--warning);
      color: var(--primary);
      padding: 4px 14px;
      border-radius: 60px;
      font-size: 12px;
      font-weight: 700;
      text-transform: uppercase;
      letter-spacing: 0.4px;
      align-self: flex-start;
      margin-bottom: 12px;
    }
    .deal-wrap .deal-content h3 { font-size: 28px; font-weight: 700; margin-bottom: 6px; }
    .deal-wrap .deal-content .desc { color: var(--muted); margin-bottom: 18px; }
    .deal-wrap .deal-content .price-big {
      font-size: 32px;
      font-weight: 800;
      color: var(--primary);
    }
    .deal-wrap .deal-content .price-big .old {
      font-size: 20px;
      font-weight: 400;
      color: var(--muted-light);
      text-decoration: line-through;
      margin-left: 10px;
    }
    .deal-wrap .deal-content .stock {
      font-size: 14px;
      color: var(--muted);
      margin: 4px 0 16px;
    }
    .deal-wrap .deal-content .stock strong { color: var(--accent); }
    .timer-grid {
      display: flex;
      gap: 12px;
      margin: 16px 0 20px;
    }
    .timer-box {
      background: var(--primary);
      color: #fff;
      padding: 10px 16px;
      border-radius: var(--radius-sm);
      min-width: 68px;
      text-align: center;
    }
    .timer-box .num { font-size: 26px; font-weight: 700; line-height: 1.2; }
    .timer-box .label { font-size: 11px; opacity: 0.7; text-transform: uppercase; letter-spacing: 0.4px; }

    /* ----- Testimonials (friendly scroll) ----- */
    .testimonials-scroll {
      display: flex;
      gap: 20px;
      overflow-x: auto;
      padding: 8px 4px 16px;
      scroll-snap-type: x mandatory;
      -webkit-overflow-scrolling: touch;
    }
    .testimonials-scroll::-webkit-scrollbar { height: 4px; }
    .testimonials-scroll::-webkit-scrollbar-thumb { background: var(--accent-light); border-radius: 60px; }
    .testimonial-card {
      flex: 0 0 320px;
      background: var(--bg-card);
      border-radius: var(--radius);
      padding: 24px 26px;
      box-shadow: var(--shadow);
      scroll-snap-align: start;
      transition: var(--transition);
    }
    .testimonial-card:hover { box-shadow: var(--shadow-hover); }
    .testimonial-card .stars { color: #f5a623; font-size: 16px; letter-spacing: 2px; margin-bottom: 10px; }
    .testimonial-card blockquote {
      font-size: 15px;
      line-height: 1.6;
      color: var(--primary);
      margin-bottom: 14px;
      font-style: italic;
    }
    .testimonial-card .author {
      display: flex;
      align-items: center;
      gap: 12px;
    }
    .testimonial-card .author .avatar {
      width: 44px;
      height: 44px;
      border-radius: 50%;
      object-fit: cover;
      background: var(--surface);
    }
    .testimonial-card .author .name { font-weight: 600; font-size: 14px; }
    .testimonial-card .author .role { font-size: 13px; color: var(--muted); }

    /* ----- Newsletter (friendly) ----- */
    .newsletter-wrap {
      background: linear-gradient(135deg, var(--primary) 0%, var(--primary-light) 100%);
      border-radius: var(--radius);
      padding: 48px 56px;
      color: #fff;
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 32px;
      flex-wrap: wrap;
    }
    .newsletter-wrap .text h3 { font-size: 26px; font-weight: 700; margin-bottom: 4px; }
    .newsletter-wrap .text p { opacity: 0.75; font-size: 15px; }
    .newsletter-wrap form {
      display: flex;
      gap: 10px;
      flex-wrap: wrap;
      flex: 1;
      max-width: 480px;
    }
    .newsletter-wrap form input {
      flex: 1;
      min-width: 200px;
      padding: 14px 20px;
      border-radius: 60px;
      border: 0;
      font-size: 15px;
      background: rgba(255,255,255,0.12);
      color: #fff;
      transition: var(--transition);
      outline: 2px solid transparent;
    }
    .newsletter-wrap form input::placeholder { color: rgba(255,255,255,0.5); }
    .newsletter-wrap form input:focus {
      outline-color: var(--accent);
      background: rgba(255,255,255,0.18);
    }
    .newsletter-wrap form .btn {
      background: var(--accent);
      color: #fff;
      border-color: var(--accent);
      padding: 14px 32px;
    }
    .newsletter-wrap form .btn:hover {
      background: var(--accent-dark);
      border-color: var(--accent-dark);
    }
    #newsletterMsg { margin-top: 12px; font-size: 14px; opacity: 0.9; width: 100%; }

    /* ----- Footer ----- */
    footer {
      margin-top: 16px;
      padding: 44px 0 28px;
      border-top: 1px solid rgba(30,30,44,0.04);
    }
    .footer-grid {
      display: grid;
      grid-template-columns: 2fr 1fr 1fr 1fr;
      gap: 40px;
      margin-bottom: 32px;
    }
    .footer-grid .brand-col .brand { font-size: 20px; margin-bottom: 8px; }
    .footer-grid .brand-col p {
      color: var(--muted);
      font-size: 14px;
      max-width: 300px;
      line-height: 1.6;
    }
    .footer-grid .brand-col .socials {
      display: flex;
      gap: 10px;
      margin-top: 14px;
    }
    .footer-grid .brand-col .socials a {
      width: 40px;
      height: 40px;
      border-radius: 50%;
      background: var(--surface);
      display: grid;
      place-items: center;
      color: var(--muted);
      transition: var(--transition);
      font-size: 16px;
    }
    .footer-grid .brand-col .socials a:hover { background: var(--accent); color: #fff; }
    .footer-grid .col h5 { font-weight: 700; font-size: 14px; margin-bottom: 12px; color: var(--primary); }
    .footer-grid .col ul { list-style: none; display: flex; flex-direction: column; gap: 6px; }
    .footer-grid .col ul li a { color: var(--muted); font-size: 14px; transition: var(--transition); }
    .footer-grid .col ul li a:hover { color: var(--accent); }
    .footer-bottom {
      text-align: center;
      padding-top: 20px;
      border-top: 1px solid rgba(30,30,44,0.04);
      color: var(--muted-light);
      font-size: 13px;
    }

    /* ----- Responsive (friendly everywhere) ----- */
    @media (max-width: 1200px) {
      .products-grid { grid-template-columns: repeat(3, 1fr); }
      .categories-grid { grid-template-columns: repeat(3, 1fr); }
      .footer-grid { grid-template-columns: 1fr 1fr; gap: 28px; }
    }
    @media (max-width: 992px) {
      .hero h1 { font-size: 36px; }
      .hero { min-height: 360px; margin: 16px 16px 0; padding: 40px 0; }
      .deal-wrap { flex-direction: column; }
      .deal-wrap .deal-img { flex: 0 0 220px; }
      .deal-wrap .deal-content { padding: 28px 30px; }
      .newsletter-wrap { padding: 32px 28px; flex-direction: column; text-align: center; }
      .newsletter-wrap form { max-width: 100%; }
      .search-wrap { min-width: 150px; }
    }
    @media (max-width: 768px) {
      nav.main-nav { display: none; }
      .mobile-toggle { display: grid; place-items: center; }
      .products-grid { grid-template-columns: repeat(2, 1fr); gap: 14px; }
      .categories-grid { grid-template-columns: repeat(2, 1fr); gap: 12px; }
      .hero h1 { font-size: 28px; }
      .hero p { font-size: 15px; }
      .section-header h2 { font-size: 22px; }
      .deal-wrap .deal-content h3 { font-size: 22px; }
      .deal-wrap .deal-content .price-big { font-size: 26px; }
      .timer-box { min-width: 56px; padding: 8px 12px; }
      .timer-box .num { font-size: 20px; }
      .footer-grid { grid-template-columns: 1fr; gap: 20px; }
      .header-inner { flex-wrap: nowrap; }
      .brand { font-size: 18px; }
      .brand i { font-size: 20px; }
      .search-wrap { min-width: 110px; padding: 0 10px 0 14px; }
      .search-wrap input { font-size: 13px; padding: 8px 0; }
      .header-actions .icon-btn { width: 36px; height: 36px; font-size: 15px; }
      .cart-count { width: 18px; height: 18px; font-size: 10px; }
      .testimonial-card { flex: 0 0 260px; }
      .hero .actions .btn { padding: 10px 20px; font-size: 14px; }
      .section { padding: 36px 0; }
    }
    @media (max-width: 480px) {
      .products-grid { grid-template-columns: 1fr 1fr; gap: 10px; }
      .categories-grid { grid-template-columns: 1fr 1fr; gap: 10px; }
      .hero { margin: 10px 10px 0; min-height: 280px; padding: 28px 0; border-radius: var(--radius-sm); }
      .hero h1 { font-size: 24px; }
      .container { padding: 0 14px; }
      .deal-wrap .deal-content { padding: 20px 18px; }
      .deal-wrap .deal-img { flex: 0 0 160px; }
      .newsletter-wrap { padding: 24px 18px; }
      .newsletter-wrap .text h3 { font-size: 20px; }
      .product-card .body { padding: 12px 12px 8px; }
      .product-card .body h5 { font-size: 13px; }
      .product-card .body .price { font-size: 15px; }
      .product-card .footer { padding: 0 12px 12px; }
      .product-card .footer .add-btn { font-size: 12px; padding: 8px; }
      .timer-box { min-width: 44px; padding: 6px 8px; }
      .timer-box .num { font-size: 16px; }
      .timer-box .label { font-size: 9px; }
      .cat-card { padding: 16px 10px; }
      .cat-card .icon-wrap { width: 44px; height: 44px; font-size: 18px; }
      .cat-card h4 { font-size: 13px; }
    }
  </style>
</head>
<body>

  <!-- HEADER -->
  <header>
    <div class="container header-inner">
      <div style="display:flex;align-items:center;gap:12px;">
        <button class="mobile-toggle" id="mobileToggle" aria-label="Menu">
          <i class="fas fa-bars"></i>
        </button>
        <a class="brand" href="#">
          <i class="fas fa-store-alt"></i>
          <span>Nexus<span class="accent">Shop</span></span>
        </a>
      </div>

      <nav class="main-nav" id="mainNav">
        <ul>
          <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
          <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
          <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
          <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
          <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
        </ul>
      </nav>

      <div style="display:flex;align-items:center;gap:10px;">
        <div class="search-wrap" role="search">
          <input type="search" id="searchInput" placeholder="Search..." aria-label="Search" />
          <button id="searchBtn" aria-label="Search"><i class="fas fa-search"></i></button>
        </div>

        <div class="header-actions">
          <button class="icon-btn" aria-label="Account"><i class="far fa-user"></i></button>
          <button class="icon-btn" aria-label="Wishlist"><i class="far fa-heart"></i></button>
          <div class="cart-wrap">
            <button class="icon-btn" id="cartBtn" aria-label="Cart">
              <i class="fas fa-shopping-bag"></i>
            </button>
            <span class="cart-count" id="cartCount">0</span>
          </div>
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
    <!-- HERO -->
    <section class="hero" aria-label="Hero">
      <div class="container">
        <div class="badge"><i class="fas fa-sparkles"></i> New Collection 2026</div>
        <h1>Discover Premium <br>Essentials</h1>
        <p>Curated fashion, tech & accessories with free shipping on your first order.</p>
        <div class="actions">
          <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop Now</button>
          <button class="btn btn-ghost" id="exploreDeals"><i class="fas fa-clock"></i> Explore Deals</button>
        </div>
      </div>
    </section>

    <!-- CATEGORIES -->
    <section class="section" id="categories">
      <div class="container">
        <div class="section-header">
          <div class="title-group">
            <h2>Shop by Category</h2>
            <p>Find what you love, quickly</p>
          </div>
          <a href="#" class="view-all">All categories <i class="fas fa-arrow-right"></i></a>
        </div>
        <div class="categories-grid" id="categoriesGrid">
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
          <div class="title-group">
            <h2>🔥 Trending Now</h2>
            <p>Most loved by our community</p>
          </div>
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

    <!-- DEAL -->
    <section class="section" id="deals">
      <div class="container">
        <div class="deal-wrap">
          <div class="deal-img">
            <img src="https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=800&q=80" alt="deal" loading="lazy">
          </div>
          <div class="deal-content">
            <span class="tag"><i class="fas fa-bolt"></i> Flash sale</span>
            <h3>Smart Watch Series 8</h3>
            <p class="desc">Track your fitness, style and stay connected — now at a special price.</p>
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
          <div class="title-group">
            <h2>⭐ What our customers say</h2>
            <p>Real stories from real people</p>
          </div>
        </div>
        <div class="testimonials-scroll">
          <div class="testimonial-card">
            <div class="stars"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
            <blockquote>“Absolutely love my new sneakers! Super comfy and the shipping was incredibly fast.”</blockquote>
            <div class="author"><img class="avatar" src="https://i.pravatar.cc/100?img=1" alt="avatar"><div><div class="name">Emma W.</div><div class="role">Verified buyer</div></div></div>
          </div>
          <div class="testimonial-card">
            <div class="stars"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
            <blockquote>“NexusShop has the best customer service. They helped me with my return in minutes.”</blockquote>
            <div class="author"><img class="avatar" src="https://i.pravatar.cc/100?img=2" alt="avatar"><div><div class="name">Michael R.</div><div class="role">Loyal customer</div></div></div>
          </div>
          <div class="testimonial-card">
            <div class="stars"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
            <blockquote>“The quality of the products is outstanding. I’ve recommended this store to all my friends.”</blockquote>
            <div class="author"><img class="avatar" src="https://i.pravatar.cc/100?img=3" alt="avatar"><div><div class="name">Sophia L.</div><div class="role">Fashion enthusiast</div></div></div>
          </div>
          <div class="testimonial-card">
            <div class="stars"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
            <blockquote>“Great experience from start to finish. The packaging was beautiful and eco-friendly.”</blockquote>
            <div class="author"><img class="avatar" src="https://i.pravatar.cc/100?img=4" alt="avatar"><div><div class="name">James K.</div><div class="role">Eco-conscious buyer</div></div></div>
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

  <!-- FOOTER -->
  <footer>
    <div class="container">
      <div class="footer-grid">
        <div class="brand-col">
          <a class="brand" href="#"><i class="fas fa-store-alt"></i><span>Nexus<span class="accent">Shop</span></span></a>
          <p>Friendly, fast and curated for you. We believe shopping should be a joy.</p>
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

      // Shop now button alert
      document.getElementById('shopNow').addEventListener('click', function(){
        alert('🛍️ Welcome! Explore our collection.');
      });
      document.getElementById('exploreDeals').addEventListener('click', function(){
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

      // Search (simple)
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

      // Cart button alert
      document.getElementById('cartBtn').addEventListener('click', function(){
        alert(`🛒 Your cart has ${cartCount} item${cartCount !== 1 ? 's' : ''}.`);
      });

      // Timer (simple countdown)
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

      // Wishlist buttons (simple toggle)
      document.querySelectorAll('.wish-btn').forEach(btn => {
        btn.addEventListener('click', function(e){
          e.stopPropagation();
          const icon = this.querySelector('i');
          icon.classList.toggle('far');
          icon.classList.toggle('fas');
          if (icon.classList.contains('fas')) {
            this.style.color = 'var(--accent)';
          } else {
            this.style.color = 'var(--muted)';
          }
        });
      });

      console.log('✨ NexusShop — friendly e-commerce');
    })();
  </script>
</body>
</html>
