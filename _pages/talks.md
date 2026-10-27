---
layout: default
title: Talks and presentations
permalink: /talks/
---
<header class="page-intro"><h1>Talks and presentations</h1><p>Selected research presentations, seminars, and recordings.</p></header>
<div class="research-list">
  {% assign talks = site.data.talks | sort: 'date' | reverse %}
  {% for talk in talks %}
  <article class="research-card">
    <span class="item-date">{{ talk.date | date: '%d %B %Y' }}</span>
    <h2><a href="{{ talk.url | relative_url }}">{{ talk.title }}</a></h2>
    <p class="muted">{{ talk.venue }} · {{ talk.location }}</p>
    <p>{{ talk.summary }}</p>
    <div class="resource-links"><a class="resource-button" href="{{ talk.url | relative_url }}">Talk details</a>
      {% if talk.video_url %}<a class="resource-button" href="{{ talk.video_url }}" target="_blank" rel="noopener noreferrer">Recording ↗</a>{% endif %}
    </div>
  </article>
  {% endfor %}
</div>
