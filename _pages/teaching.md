---
layout: default
title: Teaching
permalink: /teaching/
---
<header class="page-intro"><h1>Teaching</h1><p>Courses and teaching contributions in signal analysis, machine learning, and their mathematical foundations.</p></header>
<div class="research-list">
  {% assign courses = site.data.teaching | sort: 'year' | reverse %}
  {% for course in courses %}
  <article class="research-card">
    <span class="item-date">{{ course.year }} · {{ course.level }}</span>
    <h2>{{ course.title }}</h2>
    <p class="muted">{{ course.institution }}</p>
    <p>{{ course.description }}</p>
    {% if course.link %}<div class="resource-links"><a class="resource-button" href="{{ course.link }}">Course materials ↗</a></div>{% endif %}
  </article>
  {% endfor %}
</div>
