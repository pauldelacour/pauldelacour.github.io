---
layout: default
permalink: /
title: Home
---
<div class="home-page">
  <section class="home-hero" aria-labelledby="home-hero-title">
    <p class="home-hero__eyebrow">
      <span>Machine learning</span><span>High-dimensional statistics</span><span>Random matrix theory</span>
    </p>
    <div class="home-hero__content">
      <h1 id="home-hero-title">Finding structure in high-dimensional noise.</h1>
      <p class="home-hero__lead">I am a PhD candidate at TU Delft, working at the intersection of machine learning, high-dimensional statistics, and random matrix theory.</p>
      <div class="home-hero__links">
        <a class="hero-button hero-button--primary" href="{{ '/publications/' | relative_url }}">Publications <span aria-hidden="true">→</span></a>
        <a class="hero-button hero-button--secondary" href="{{ '/talks/' | relative_url }}">Talks <span aria-hidden="true">→</span></a>
      </div>
    </div>
    <div class="home-hero__visuals" role="img" aria-label="Solid and liquid phases of a phase transition">
      <img src="{{ '/images/visuals/solid_phase.png' | relative_url }}" alt="" width="300" height="215">
      <span class="home-hero__visual-divider" aria-hidden="true"></span>
      <img src="{{ '/images/visuals/liquid_phase.png' | relative_url }}" alt="" width="300" height="215">
    </div>
  </section>

  <section class="home-section" aria-labelledby="about-heading">
    <h2 id="about-heading">About my research</h2>
    <div class="home-about__text">
      <p>I started my PhD in November 2022, advised by <strong>Raf Van de Plas</strong>.</p>
      <p>My work sits at the intersection of machine learning, high-dimensional statistics, and random matrix theory.</p>
      <p>My research seeks to understand when latent structure can be recovered from complex and noisy data, how sharp transitions separate learnable from non-learnable regimes, and how these theoretical insights can guide the design of effective inference and generative-learning methods.</p>
    </div>
  </section>

  <section class="home-section" aria-labelledby="education-heading">
    <h2 id="education-heading">Education</h2>
    <div class="home-education">
      <div class="home-education__item"><div><h3>PhD in Machine Learning</h3><p>TU Delft</p></div><span>2022–present</span></div>
      <div class="home-education__item"><div><h3>MSc in Data Science</h3><p>ETH Zürich</p></div><span>2019–2022</span></div>
      <div class="home-education__item"><div><h3>BSc in Communication Systems</h3><p>EPFL</p></div><span>2016–2019</span></div>
    </div>
  </section>

  <section class="home-section home-publications" aria-labelledby="selected-heading">
    <div class="section-heading"><h2 id="selected-heading">Selected publications</h2><a href="{{ '/publications/' | relative_url }}">All publications <span aria-hidden="true">→</span></a></div>
    <div class="publications">
      {% bibliography --group_by none --query @*[selected=true] %}
    </div>
  </section>

  <section class="home-section home-contact" aria-labelledby="contact-heading">
    <h2 id="contact-heading">Get in touch</h2>
    <p>Interested in discussing research, collaborating, or simply exchanging ideas? I would be happy to hear from you.</p>
    <a class="contact-link" href="mailto:{{ site.email }}">Send me an email <span aria-hidden="true">→</span></a>
  </section>
</div>
