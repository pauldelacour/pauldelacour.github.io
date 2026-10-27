---
layout: default
title: Talks and presentations
permalink: /talks/
---
<header class="page-intro">
  <h1>Talks and presentations</h1>
  <p>Research presentations, seminars, and recordings.</p>
</header>

<div class="research-list">
  {% if site.talks and site.talks.size > 0 %}
    {% assign talks = site.talks | sort: 'date' | reverse %}
    {% for talk in talks %}
      <article class="research-card">
        {% if talk.date %}
          <span class="item-date">{{ talk.date | date: '%-d %B %Y' }}</span>
        {% endif %}

        <h2><a href="{{ talk.url | relative_url }}">{{ talk.title }}</a></h2>
        {% if talk.venue or talk.location %}
          <p class="muted">
            {{ talk.venue }}{% if talk.venue and talk.location %} · {% endif %}{{ talk.location }}
          </p>
        {% endif %}
        {% if talk.excerpt %}<p>{{ talk.excerpt }}</p>{% endif %}

        <div class="resource-links">
          <a class="resource-button" href="{{ talk.url | relative_url }}">Talk details</a>
          {% if talk.video_url %}
            <a class="resource-button" href="{{ talk.video_url }}" target="_blank" rel="noopener noreferrer">Recording ↗</a>
          {% endif %}
          {% if talk.slides_url %}
            <a class="resource-button resource-button--pdf" href="{{ talk.slides_url | relative_url }}" target="_blank" rel="noopener noreferrer">Slides ↗</a>
          {% endif %}
        </div>
      </article>
    {% endfor %}
  {% else %}
    <p>No talks have been added yet.</p>
  {% endif %}
</div>
