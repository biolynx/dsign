// ===================================
// SMOOTH SCROLLING
// ===================================

document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function (e) {
        e.preventDefault();
        const target = document.querySelector(this.getAttribute('href'));
        if (target) {
            target.scrollIntoView({
                behavior: 'smooth',
                block: 'start'
            });
        }
    });
});

// ===================================
// SCROLL ANIMATIONS (AOS Alternative)
// ===================================

const observerOptions = {
    threshold: 0.15,
    rootMargin: '0px 0px -50px 0px'
};

const observer = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
        if (entry.isIntersecting) {
            entry.target.classList.add('aos-animate');
        }
    });
}, observerOptions);

// Observe all elements with data-aos attribute
document.addEventListener('DOMContentLoaded', () => {
    const animatedElements = document.querySelectorAll('[data-aos]');
    animatedElements.forEach(el => {
        observer.observe(el);
    });
});

// ===================================
// PORTFOLIO HOVER EFFECTS
// ===================================

const portfolioItems = document.querySelectorAll('.portfolio-item');

portfolioItems.forEach(item => {
    item.addEventListener('mouseenter', function() {
        this.style.zIndex = '10';
    });

    item.addEventListener('mouseleave', function() {
        this.style.zIndex = '1';
    });
});

// ===================================
// HERO PARALLAX EFFECT
// ===================================

let lastScrollTop = 0;
const hero = document.querySelector('.hero');

window.addEventListener('scroll', () => {
    const scrollTop = window.pageYOffset || document.documentElement.scrollTop;

    if (hero && scrollTop < window.innerHeight) {
        const opacity = 1 - (scrollTop / window.innerHeight);
        hero.style.opacity = opacity;
    }

    lastScrollTop = scrollTop;
});

// ===================================
// SCROLL INDICATOR FADE OUT
// ===================================

const scrollIndicator = document.querySelector('.scroll-indicator');

window.addEventListener('scroll', () => {
    if (window.scrollY > 100 && scrollIndicator) {
        scrollIndicator.style.opacity = '0';
    } else if (scrollIndicator) {
        scrollIndicator.style.opacity = '1';
    }
});

// ===================================
// LAZY LOADING IMAGES
// ===================================

if ('IntersectionObserver' in window) {
    const imageObserver = new IntersectionObserver((entries, observer) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                const img = entry.target;
                if (img.dataset.src) {
                    img.src = img.dataset.src;
                    img.removeAttribute('data-src');
                }
                imageObserver.unobserve(img);
            }
        });
    });

    const images = document.querySelectorAll('img[data-src]');
    images.forEach(img => imageObserver.observe(img));
}

// ===================================
// CURSOR EFFECT (OPTIONAL - CREATIVE TOUCH)
// ===================================

const cursor = document.createElement('div');
cursor.className = 'custom-cursor';
document.body.appendChild(cursor);

let cursorX = 0;
let cursorY = 0;
let currentX = 0;
let currentY = 0;

document.addEventListener('mousemove', (e) => {
    cursorX = e.clientX;
    cursorY = e.clientY;
});

function animateCursor() {
    const diffX = cursorX - currentX;
    const diffY = cursorY - currentY;

    currentX += diffX * 0.1;
    currentY += diffY * 0.1;

    cursor.style.left = currentX + 'px';
    cursor.style.top = currentY + 'px';

    requestAnimationFrame(animateCursor);
}

// Only enable custom cursor on desktop
if (window.innerWidth > 768) {
    animateCursor();

    // Add cursor styles
    const style = document.createElement('style');
    style.textContent = `
        .custom-cursor {
            width: 20px;
            height: 20px;
            border: 2px solid #6366f1;
            border-radius: 50%;
            position: fixed;
            pointer-events: none;
            z-index: 9999;
            mix-blend-mode: difference;
            transition: transform 0.2s ease, opacity 0.2s ease;
            opacity: 0;
        }

        body:hover .custom-cursor {
            opacity: 1;
        }

        a:hover ~ .custom-cursor,
        button:hover ~ .custom-cursor,
        .portfolio-item:hover ~ .custom-cursor {
            transform: scale(1.5);
        }
    `;
    document.head.appendChild(style);
} else {
    cursor.remove();
}

// ===================================
// PERFORMANCE OPTIMIZATION
// ===================================

// Debounce function for scroll events
function debounce(func, wait) {
    let timeout;
    return function executedFunction(...args) {
        const later = () => {
            clearTimeout(timeout);
            func(...args);
        };
        clearTimeout(timeout);
        timeout = setTimeout(later, wait);
    };
}

// Apply debounce to scroll-heavy functions
window.addEventListener('scroll', debounce(() => {
    // Add any additional scroll-based functionality here
}, 10));

// ===================================
// PAGE LOAD ANIMATION
// ===================================

window.addEventListener('load', () => {
    document.body.classList.add('loaded');

    // Add loaded class styles
    const loadStyle = document.createElement('style');
    loadStyle.textContent = `
        body {
            opacity: 0;
            transition: opacity 0.3s ease;
        }

        body.loaded {
            opacity: 1;
        }
    `;
    document.head.appendChild(loadStyle);
});

// ===================================
// CONSOLE SIGNATURE
// ===================================

console.log(
    '%cD\'Sign',
    'font-size: 3rem; font-weight: bold; color: #6366f1; font-family: serif; font-style: italic;'
);
console.log(
    '%cCreative Studio — Website designed with precision and passion',
    'font-size: 1rem; color: #666; margin-top: 10px;'
);
