```html
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes">
    <title>NEBULA | Tech Store</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Inter', sans-serif;
            background-color: #0a0c10;
            color: #f0f3fc;
            line-height: 1.4;
            scroll-behavior: smooth;
        }

        ::-webkit-scrollbar {
            width: 6px;
        }
        ::-webkit-scrollbar-track {
            background: #141824;
        }
        ::-webkit-scrollbar-thumb {
            background: #3b3f5c;
            border-radius: 8px;
        }

        .container {
            max-width: 1400px;
            margin: 0 auto;
            padding: 0 32px;
        }

        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px 0;
            flex-wrap: wrap;
            gap: 20px;
            border-bottom: 1px solid rgba(66, 153, 225, 0.2);
        }
        .logo {
            font-size: 28px;
            font-weight: 800;
            color: white;
            letter-spacing: -0.5px;
        }
        .logo span {
            font-size: 22px;
            color: white;
        }
        .nav-links {
            display: flex;
            gap: 32px;
            font-weight: 500;
        }
        .nav-links a {
            color: #e2e8f0;
            text-decoration: none;
            transition: 0.2s;
            font-size: 1rem;
            cursor: pointer;
        }
        .nav-links a:hover {
            color: #5bc0ff;
        }
        .header-icons {
            display: flex;
            gap: 24px;
            font-size: 1.25rem;
            align-items: center;
        }
        .cart-wrapper {
            position: relative;
            cursor: pointer;
        }
        .cart-wrapper i {
            font-size: 1.25rem;
        }
        .cart-count {
            position: absolute;
            top: -10px;
            right: -12px;
            background-color: #ff3b6f;
            color: white;
            font-size: 11px;
            font-weight: bold;
            border-radius: 30px;
            padding: 2px 6px;
            min-width: 18px;
            text-align: center;
        }

        .hero {
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            justify-content: space-between;
            padding: 60px 0 40px;
            gap: 40px;
        }
        .hero-content {
            flex: 1;
            min-width: 280px;
        }
        .hero-content h1 {
            font-size: 3.5rem;
            font-weight: 800;
            line-height: 1.2;
            letter-spacing: -1px;
            background: linear-gradient(to right, #ffffff, #a0f0ff);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            margin-bottom: 20px;
        }
        .hero-content p {
            font-size: 1.1rem;
            color: #b9c3dd;
            max-width: 550px;
            margin-bottom: 32px;
        }
        .hero-image {
            flex: 1;
            min-width: 280px;
            text-align: center;
        }
        .hero-image canvas {
            max-width: 100%;
            border-radius: 36px;
            background: #0b1120;
            box-shadow: 0 25px 35px -12px rgba(0,0,0,0.5);
            cursor: grab;
        }
        .hero-image canvas:active {
            cursor: grabbing;
        }

        .section-title {
            font-size: 2rem;
            font-weight: 700;
            margin: 60px 0 32px 0;
            letter-spacing: -0.3px;
            color: #f0f3fc;
        }
        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
            gap: 32px;
            margin-bottom: 40px;
        }
        .product-card {
            background: #11141e;
            border-radius: 28px;
            overflow: hidden;
            border: 1px solid rgba(66, 153, 225, 0.1);
        }
        .product-img {
            background: #0b0e16;
            padding: 20px;
            text-align: center;
            border-bottom: 1px solid rgba(255,255,255,0.05);
            height: 220px;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .product-img img {
            max-width: 100%;
            max-height: 180px;
            object-fit: contain;
            border-radius: 16px;
        }
        .product-info {
            padding: 20px 18px 24px;
        }
        .product-title {
            font-weight: 700;
            font-size: 1.25rem;
            margin-bottom: 8px;
        }
        .product-desc {
            font-size: 0.85rem;
            color: #9aa5c2;
            margin-bottom: 16px;
            line-height: 1.4;
        }
        .price-row {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-top: 12px;
        }
        .price {
            font-weight: 800;
            font-size: 1.5rem;
            color: #ffffff;
        }
        .add-cart {
            background: rgba(43, 110, 255, 0.2);
            border: none;
            width: 36px;
            height: 36px;
            border-radius: 60px;
            color: #9acdff;
            font-size: 1.1rem;
            cursor: pointer;
            transition: 0.2s;
        }
        .add-cart:hover {
            background: #2b6eff;
            color: white;
        }

        .categories {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 24px;
            margin: 40px 0 60px;
        }
        .cat-item {
            background: #121520;
            padding: 12px 28px;
            border-radius: 60px;
            font-weight: 500;
            transition: 0.2s;
            cursor: pointer;
            border: 1px solid #2a2f3f;
        }
        .cat-item:hover, .cat-active {
            background: #1e2a5e;
            border-color: #5bc0ff;
            color: #e0f2ff;
            box-shadow: 0 0 12px rgba(91,192,255,0.2);
        }

        footer {
            margin-top: 70px;
            border-top: 1px solid #1c212e;
            padding: 48px 0 32px;
        }
        .footer-grid {
            display: grid;
            grid-template-columns: 1fr;
            gap: 40px;
            margin-bottom: 40px;
            text-align: center;
        }
        .footer-col h4 {
            font-weight: 600;
            margin-bottom: 20px;
            font-size: 1.1rem;
            color: #e2e8f0;
        }
        .footer-col p {
            color: #8b97b5;
            margin-bottom: 12px;
            font-size: 0.9rem;
        }
        .copyright {
            text-align: center;
            padding-top: 28px;
            color: #5f6a8a;
            font-size: 0.8rem;
        }

        @media (max-width: 850px) {
            .container {
                padding: 0 20px;
            }
            .hero-content h1 {
                font-size: 2.4rem;
            }
            .section-title {
                font-size: 1.6rem;
            }
            .navbar {
                flex-direction: column;
                align-items: flex-start;
            }
            .nav-links {
                gap: 20px;
                flex-wrap: wrap;
            }
        }
        @media (max-width: 550px) {
            .hero-content h1 {
                font-size: 2rem;
            }
        }
    </style>
</head>
<body>

<div class="container">
    <nav class="navbar">
        <div class="logo">NEBULA<span> | Tech</span></div>
        <div class="nav-links">
            <a class="nav-link-item" data-tab="home">Главная</a>
            <a class="nav-link-item" data-tab="services">Услуги</a>
            <a class="nav-link-item" data-tab="contacts">Контакты</a>
        </div>
        <div class="header-icons">
            <div class="cart-wrapper" id="cartIconWrapper">
                <i class="fas fa-shopping-cart"></i>
                <span class="cart-count" id="cartCount">0</span>
            </div>
        </div>
    </nav>

    <div id="homeTab" class="tab-content">
        <div class="hero">
            <div class="hero-content">
                <h1>Техника будущего<br>в твоих руках</h1>
                <p>Сверхбыстрые ноутбуки, умные девайсы и уникальный дизайн. Погрузись в мир передовых технологий.</p>
            </div>
            <div class="hero-image">
                <canvas id="laptopCanvas" width="500" height="400" style="width:100%; height:auto; max-width:500px; aspect-ratio:500/400"></canvas>
            </div>
        </div>

        <div class="categories" id="categoryFilter">
            <div class="cat-item cat-active" data-cat="all">Все товары</div>
            <div class="cat-item" data-cat="laptops">Ноутбуки</div>
            <div class="cat-item" data-cat="audio">Наушники</div>
            <div class="cat-item" data-cat="phones">Телефоны</div>
        </div>

        <div class="section-title">Хиты продаж</div>
        <div class="products-grid" id="productsContainer"></div>
    </div>

    <div id="servicesTab" class="tab-content" style="display: none;"></div>
    <div id="contactsTab" class="tab-content" style="display: none;"></div>

    <footer>
        <div class="footer-grid">
            <div class="footer-col">
                <h4>NEBULA</h4>
                <p>Инновационные решения для цифрового мира. Качество и стиль в каждой детали.</p>
            </div>
        </div>
        <div class="copyright">
            © 2025 NEBULA — интернет-магазин техники будущего. Все права защищены.
        </div>
    </footer>
</div>

<script>
    const products = [
        { id: 1, name: "Ноутбук", desc: "ПРИВЕТ", price: 69990, cat: "laptops", img: " " },
        { id: 2, name: "Наушники", desc: "ПРИВЕТ", price: 12990, cat: "audio", img: " " },
        { id: 3, name: "Телефон", desc: "ПРИВЕТ", price: 49990, cat: "phones", img: " " },
        { id: 4, name: "Ноутбук", desc: "ПРИВЕТ", price: 89990, cat: "laptops", img: "" },
        { id: 5, name: "Наушники", desc: "ПРИВЕТ", price: 15990, cat: "audio", img: " " },
        { id: 6, name: "Телефон", desc: "ПРИВЕТ", price: 79990, cat: "phones", img: " " },
        { id: 7, name: "Ноутбук", desc: "ПРИВЕТ", price: 119990, cat: "laptops", img: " " },
        { id: 8, name: "Наушники", desc: "ПРИВЕТ", price: 8990, cat: "audio", img: " " },
        { id: 9, name: "Телефон", desc: "ПРИВЕТ", price: 99990, cat: "phones", img: " " }
    ];

    let activeCategory = "all";
    let cart = JSON.parse(localStorage.getItem("nebula_cart")) || [];

    function saveCart() {
        localStorage.setItem("nebula_cart", JSON.stringify(cart));
        updateCartCounter();
    }

    function updateCartCounter() {
        const totalQty = cart.reduce((sum, item) => sum + item.quantity, 0);
        const cartCountSpan = document.getElementById("cartCount");
        if (cartCountSpan) {
            cartCountSpan.innerText = totalQty;
        }
    }

    function addToCart(productId) {
        const product = products.find(p => p.id === productId);
        if(!product) return;
        const existing = cart.find(item => item.id === productId);
        if(existing) {
            existing.quantity += 1;
        } else {
            cart.push({ id: product.id, name: product.name, price: product.price, quantity: 1, img: product.img });
        }
        saveCart();
    }

    function renderProducts() {
        const container = document.getElementById("productsContainer");
        if (!container) return;
        let filtered = activeCategory === "all" ? products : products.filter(p => p.cat === activeCategory);
        if(filtered.length === 0) {
            container.innerHTML = `<div style="grid-column:1/-1; text-align:center; padding: 60px;">🔮 Товаров в этой категории пока нет, но скоро появятся!</div>`;
            return;
        }
        container.innerHTML = filtered.map(product => `
            <div class="product-card" data-id="${product.id}">
                <div class="product-img">
                    <img src="${product.img}" alt="${product.name}" onerror="this.src='https://placehold.co/400x300/0b1120/5bc0ff?text=ФОТО'">
                </div>
                <div class="product-info">
                    <div class="product-title">${product.name}</div>
                    <div class="product-desc">${product.desc}</div>
                    <div class="price-row">
                        <div>
                            <span class="price">${product.price.toLocaleString()} ₽</span>
                        </div>
                        <button class="add-cart" data-id="${product.id}"><i class="fas fa-plus"></i></button>
                    </div>
                </div>
            </div>
        `).join('');

        document.querySelectorAll('.add-cart').forEach(btn => {
            btn.addEventListener('click', (e) => {
                e.stopPropagation();
                const id = parseInt(btn.getAttribute('data-id'));
                addToCart(id);
            });
        });
    }

    function initCategoryFilter() {
        const catItems = document.querySelectorAll('.cat-item');
        catItems.forEach(item => {
            item.addEventListener('click', () => {
                const cat = item.getAttribute('data-cat');
                activeCategory = cat;
                catItems.forEach(i => i.classList.remove('cat-active'));
                item.classList.add('cat-active');
                renderProducts();
            });
        });
    }

    function initTabs() {
        const homeTab = document.getElementById("homeTab");
        const servicesTab = document.getElementById("servicesTab");
        const contactsTab = document.getElementById("contactsTab");
        const navLinks = document.querySelectorAll(".nav-link-item");

        function showTab(tabId) {
            homeTab.style.display = "none";
            servicesTab.style.display = "none";
            contactsTab.style.display = "none";
            if (tabId === "home") homeTab.style.display = "block";
            if (tabId === "services") servicesTab.style.display = "block";
            if (tabId === "contacts") contactsTab.style.display = "block";
        }

        navLinks.forEach(link => {
            link.addEventListener("click", (e) => {
                const tab = link.getAttribute("data-tab");
                showTab(tab);
            });
        });
        showTab("home");
    }

    let laptopScene, laptopCamera, laptopRenderer, laptopGroup, isDragging = false, previousMousePosition = { x: 0, y: 0 }, laptopRotation = { x: 0, y: 0 };

    function init3DLaptop() {
        const canvas = document.getElementById('laptopCanvas');
        if (!canvas) return;
        
        laptopScene = new THREE.Scene();
        laptopScene.background = new THREE.Color(0x0b1120);
        
        laptopCamera = new THREE.PerspectiveCamera(45, canvas.clientWidth / canvas.clientHeight, 0.1, 1000);
        laptopCamera.position.set(3, 2, 5);
        laptopCamera.lookAt(0, 0, 0);
        
        laptopRenderer = new THREE.WebGLRenderer({ canvas, alpha: false });
        
        function updateSize() {
            const width = canvas.clientWidth;
            const height = canvas.clientHeight;
            laptopRenderer.setSize(width, height);
            laptopCamera.aspect = width / height;
            laptopCamera.updateProjectionMatrix();
        }
        updateSize();
        window.addEventListener('resize', updateSize);
        
        const ambientLight = new THREE.AmbientLight(0x404060);
        laptopScene.add(ambientLight);
        const dirLight = new THREE.DirectionalLight(0xffffff, 1);
        dirLight.position.set(2, 5, 3);
        laptopScene.add(dirLight);
        const backLight = new THREE.PointLight(0x3366ff, 0.3);
        backLight.position.set(-1, 1, -2);
        laptopScene.add(backLight);
        const fillLight = new THREE.PointLight(0xffaa66, 0.2);
        fillLight.position.set(1, 2, 2);
        laptopScene.add(fillLight);
        
        laptopGroup = new THREE.Group();
        
        const baseGeo = new THREE.BoxGeometry(2.2, 0.15, 1.8);
        const baseMat = new THREE.MeshStandardMaterial({ color: 0x2c3e5c, metalness: 0.7, roughness: 0.3 });
        const base = new THREE.Mesh(baseGeo, baseMat);
        base.position.y = -0.2;
        laptopGroup.add(base);
        
        const keyboardGeo = new THREE.BoxGeometry(1.8, 0.05, 1.2);
        const keyboardMat = new THREE.MeshStandardMaterial({ color: 0x1a1f2e, metalness: 0.2 });
        const keyboard = new THREE.Mesh(keyboardGeo, keyboardMat);
        keyboard.position.y = -0.12;
        laptopGroup.add(keyboard);
        
        const screenGroup = new THREE.Group();
        const lidGeo = new THREE.BoxGeometry(2.2, 1.4, 0.08);
        const lidMat = new THREE.MeshStandardMaterial({ color: 0x3a5a7c, metalness: 0.6 });
        const lid = new THREE.Mesh(lidGeo, lidMat);
        lid.position.y = 0.7;
        screenGroup.add(lid);
        
        const displayGeo = new THREE.BoxGeometry(1.9, 1.1, 0.05);
        const displayMat = new THREE.MeshStandardMaterial({ color: 0x88bbff, emissive: 0x2255aa, emissiveIntensity: 0.5 });
        const display = new THREE.Mesh(displayGeo, displayMat);
        display.position.set(0, 0.7, 0.045);
        screenGroup.add(display);
        
        screenGroup.position.y = 0;
        screenGroup.rotation.x = -0.8;
        laptopGroup.add(screenGroup);
        
        const hingeGeo = new THREE.CylinderGeometry(0.08, 0.08, 2.1, 8);
        const hingeMat = new THREE.MeshStandardMaterial({ color: 0xaaaaee, metalness: 0.8 });
        const hinge = new THREE.Mesh(hingeGeo, hingeMat);
        hinge.rotation.z = Math.PI / 2;
        hinge.position.set(0, -0.05, 0.9);
        laptopGroup.add(hinge);
        
        laptopScene.add(laptopGroup);
        
        function animate() {
            requestAnimationFrame(animate);
            if (!isDragging) {
                laptopGroup.rotation.y += 0.005;
            }
            laptopRenderer.render(laptopScene, laptopCamera);
        }
        animate();
        
        canvas.addEventListener('mousedown', (e) => {
            isDragging = true;
            previousMousePosition = { x: e.clientX, y: e.clientY };
            canvas.style.cursor = 'grabbing';
        });
        
        window.addEventListener('mousemove', (e) => {
            if (!isDragging) return;
            const deltaX = e.clientX - previousMousePosition.x;
            const deltaY = e.clientY - previousMousePosition.y;
            laptopGroup.rotation.y += deltaX * 0.008;
            laptopGroup.rotation.x += deltaY * 0.005;
            laptopGroup.rotation.x = Math.max(-1, Math.min(1, laptopGroup.rotation.x));
            previousMousePosition = { x: e.clientX, y: e.clientY };
        });
        
        window.addEventListener('mouseup', () => {
            isDragging = false;
            canvas.style.cursor = 'grab';
        });
        
        canvas.style.cursor = 'grab';
    }
    
    function loadThreeAndInit() {
        if (typeof THREE === 'undefined') {
            const script = document.createElement('script');
            script.src = 'https://cdnjs.cloudflare.com/ajax/libs/three.js/r128/three.min.js';
            script.onload = () => {
                init3DLaptop();
            };
            document.head.appendChild(script);
        } else {
            init3DLaptop();
        }
    }

    document.addEventListener("DOMContentLoaded", () => {
        renderProducts();
        initCategoryFilter();
        initTabs();
        updateCartCounter();
        loadThreeAndInit();
    });
</script>
</body>
</html>
```
