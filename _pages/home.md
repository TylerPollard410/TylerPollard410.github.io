---
title: "Welcome to the Portfolio of Tyler Pollard"
layout: splash
permalink: "/"
author_profile: true
header:
  overlay_image: /assets/images/HomePic3.png
  overlay_filter: 0.5
  actions:
    - label: "More Info"
      url: "/about/"
excerpt: "Statistician, Bayesian Analysis, Predictive Modeling, Interactive Dashboards"
intro:
  - excerpt: "Welcome to my portfolio! I’m a statistician who thrives on exploring the intersection of data and decision-making. Whether I’m diving into sports analytics, creating interactive dashboards, or learning new techniques to refine my craft, I’m driven by curiosity and a passion for continuous improvement. This space showcases my journey, from the skills I’ve mastered to the projects I’ve built along the way. Take a look around—I hope you find something that inspires collaboration or sparks a new idea!"
feature_row:
  - title: "Sports Analytics"
    excerpt: "Explore my models and insights on NFL and MLB statistics."
    url: "/projects"
    icon: "fas fa-chart-line"
  - title: "Interactive Dashboards"
    excerpt: "Check out interactive visualizations built with R Shiny."
    url: "/projects"
    icon: "fas fa-desktop"
  - title: "Education & Career"
    excerpt: "Learn more about my journey from engineering to statistics."
    url: "/about"
    icon: "fas fa-user-graduate"
---

{% include feature_row id="intro" type="center" %}

<div class="feature__wrapper">
    <div class="feature__item">
      <div class="archive__item">
        <div class="archive__item-body">
            <a href="/projects" ><i class="fas fa-chart-line fa-4x"></i></a>
            <h2 class="archive__item-title">Sports Analytics</h2>
            <div class="archive__item-excerpt">
              <p>Explore my models and insights on NFL and MLB statistics.</p>
            </div>
            <p><a href="/projects" class="btn btn--info">Learn more</a></p>
        </div>
      </div>
    </div>
    <div class="feature__item">
      <div class="archive__item">
        <div class="archive__item-body">
            <a href="/projects" ><i class="fas fa-desktop fa-4x"></i></a>
            <h2 class="archive__item-title">Interactive Dashboards</h2>
            <div class="archive__item-excerpt">
              <p>Check out interactive visualizations built with R Shiny.</p>
            </div>
            <p><a href="/projects" class="btn btn--info">Learn more</a></p>
        </div>
      </div>
    </div>
    <div class="feature__item">
      <div class="archive__item">
        <div class="archive__item-body">
            <a href="/about" ><i class="fas fa-user-graduate fa-4x"></i></a>
            <h2 class="archive__item-title">Education &amp; Career</h2>
            <div class="archive__item-excerpt">
              <p>Learn more about my journey from engineering to statistics.</p>
            </div>
            <p><a href="/about" class="btn btn--info">Learn more</a></p>
        </div>
      </div>
    </div>
</div>

<!-- {% include feature_row %} -->
