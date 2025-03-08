---
title: "Welcome to the Portfolio of Tyler Pollard"
layout: splash
permalink: "/"
author_profile: true
header:
  overlay_image: /assets/images/HomePic3.png
  overlay_filter: 0.5
  actions:
    - label: "Learn More About Me"
      url: "/about/"
excerpt: "Statistician, Bayesian Analysis, Predictive Modeling, Interactive Dashboards"
intro:
  - excerpt: "Welcome to my portfolio! I’m a statistician who thrives at the intersection of data and decision-making. Whether I’m developing statistical models, creating interactive dashboards, or exploring new analytical techniques, I’m driven by curiosity and a passion for continuous improvement. This space showcases my journey—from mastering statistical methods to building impactful projects. Take a look around, and I hope you find something that sparks collaboration or inspires a new idea!"
feature_row:
  - title: "Bayesian Analysis"
    excerpt: "Check out my full Bayesian workflow in the coral bleaching project."
    url: "/projects/school/florida-coral-bleaching/"
    icon: "fas fa-chart-area"
  - title: "Predictive Modeling"
    excerpt: "See how my predictive modeling enhances hurricane analysis and forecasting."
    url: "/projects/school/hurricanes/"
    icon: "fas fa-chart-line"
  - title: "Interactive Dashboards"
    excerpt: "Check out interactive visualizations built with R Shiny."
    url: "/apps/"
    icon: "fas fa-desktop"
---

{% include feature_row id="intro" type="center" %}

<div class="feature__wrapper">
    <div class="feature__item">
      <div class="archive__item">
        <div class="archive__item-body">
            <a href="/projects/school/florida-coral-bleaching/" ><i class="fas fa-chart-area fa-4x"></i></a>
            <h2 class="archive__item-title">Bayesian Analysis</h2>
            <div class="archive__item-excerpt">
              <p>Check out my full Bayesian workflow in the coral bleaching project.</p>
            </div>
            <p><a href="/projects/school/florida-coral-bleaching/" class="btn btn--info">Learn more</a></p>
        </div>
      </div>
    </div>
    <div class="feature__item">
      <div class="archive__item">
        <div class="archive__item-body">
            <a href="/projects/school/hurricanes/" ><i class="fas fa-chart-line fa-4x"></i></a>
            <h2 class="archive__item-title">Predictive Modeling</h2>
            <div class="archive__item-excerpt">
              <p>See how my predictive modeling enhances hurricane analysis and forecasting.</p>
            </div>
            <p><a href="/projects/school/hurricanes/" class="btn btn--info">Learn more</a></p>
        </div>
      </div>
    </div>
    <div class="feature__item">
      <div class="archive__item">
        <div class="archive__item-body">
            <a href="/apps" ><i class="fas fa-desktop fa-4x"></i></a>
            <h2 class="archive__item-title">Interactive Dashboards</h2>
            <div class="archive__item-excerpt">
              <p>Explore interactive data visualizations built with R Shiny.</p>
            </div>
            <p><a href="/apps" class="btn btn--info">Learn more</a></p>
        </div>
      </div>
    </div>
</div>

<!-- {% include feature_row %} -->
