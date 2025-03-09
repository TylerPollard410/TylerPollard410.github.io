---
title: "NFL Field Goal Analysis"
excerpt: "A Bayesian analysis of NFL field goal data since 1999."
collection: nfl
header:
  teaser: "assets/images/NFLFieldGoalPic.png"
external_site: "https://tylerpollard410.github.io/NFL-Kicker-Analysis/"
---

The analysis for NFL Field Goals is [available here](https://tylerpollard410.github.io/NFL-Kicker-Analysis/)

<div id="external-content">
  <p>Loading analysis...</p>
</div>

<script>
  fetch("https://tylerpollard410.github.io/NFL-Kicker-Analysis/")
    .then(response => response.text())
    .then(html => {
      // Fix paths for images, assets, and styles
      html = html.replace(/src=["']README_files\//g, 'src="https://raw.githubusercontent.com/tylerpollard410/NFL-Kicker-Analysis/main/README_files/');
      html = html.replace(/href=["']assets\//g, 'href="https://tylerpollard410.github.io/NFL-Kicker-Analysis/assets/');
      // Inject external content
      document.getElementById("external-content").innerHTML = html;
      //  Re-render MathJax after inserting content
      if (window.MathJax) {
        MathJax.typesetPromise();
      }
    })
    .catch(error => {
      document.getElementById("external-content").innerHTML = "<p>Error loading content.</p>";
    });
</script>
