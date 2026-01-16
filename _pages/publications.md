---
layout: archive
title: "Publications"
permalink: /publications/
author_profile: true
---

{% if author.googlescholar %}
  You can also find my articles on <u><a href="{{author.googlescholar}}">my Google Scholar profile</a>.</u>
{% endif %}

{% include base_path %}

{% for post in site.publications reversed %}
  {% include archive-single.html %}
{% endfor %}

<div class="publications-list">
  {% for post in site.publications reversed %}
    <div class="archive__item">
      <a class="archive__item-link" href="{{ post.url }}"></a>
      <h2 class="archive__item-title" itemprop="headline">
        <span class="bullet">&#8226;</span> {{ post.title }}
      </h2>
      <!-- Optional Metadata -->
      <p class="archive__item-meta">
        {{ post.authors }} — {{ post.venue }}{% if post.year %}, {{ post.year }}{% endif %}
      </p>
      <!-- Link Buttons -->
      <p class="archive__item-extras">
        {% if post.arxiv %}
          <a href="{{ post.arxiv }}" class="btn btn--small" target="_blank" rel="noopener noreferrer">
            <i class="fas fa-file-alt"></i> arXiv
          </a>
        {% endif %}
        {% if post.publication_url %}
          <a href="{{ post.publication_url }}" class="btn btn--small" target="_blank" rel="noopener noreferrer">
            <i class="fas fa-link"></i> Publication
          </a>
        {% endif %}
        {% if post.pdf %}
          <a href="{{ post.pdf }}" class="btn btn--small" target="_blank" rel="noopener noreferrer">
            <i class="fas fa-file-pdf"></i> PDF
          </a>
        {% endif %}
      </p>
    </div>
  {% endfor %}
</div>