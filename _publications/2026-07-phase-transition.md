---
title: "Phase Transition of Eigenvalues of Covariances from the Spiked Mixture Model in High-dimensional Regimes"
collection: publications
permalink: /publication/2026-07-phase-transition
excerpt: |
    This work provides sharp information-theoretic bounds on the parameters needed to detect one or more spikes from extreme eigenvalues of the SMM covariance matrix, and these guarantees could potentially impact any application of the SMM.
date: 2027-07-14
#paperurl: 'https://arxiv.org/abs/2501.01840'
venue: "Preprint"
authors : "<strong>Delacour</strong>, Van de Plas"
year : 2026
arxiv: "https://arxiv.org/"
#publication_url : "https://ieeexplore.ieee.org/document/11103744"
pdf: "/files/papers/2026-07-Delacour-phase-transition-SMM.pdf"
#doi : 10.1109/TSP.2025.3593082
---

<!-- [Download paper here](https://arxiv.org/abs/2501.01840) -->
<p class="archive__item-extras">
  {% if page.arxiv %}
    <a href="{{ page.arxiv }}" class="btn btn--small" target="_blank" rel="noopener noreferrer">
      <i class="fas fa-file-alt"></i> arXiv
    </a>
  {% endif %}
  {% if page.publication_url %}
    <a href="{{ page.publication_url }}" class="btn btn--small" target="_blank" rel="noopener noreferrer">
      <i class="fas fa-link"></i> Publication
    </a>
  {% endif %}
  {% if page.pdf %}
    <a href="{{ page.pdf }}" class="btn btn--small" target="_blank" rel="noopener noreferrer">
      <i class="fas fa-file-pdf"></i> PDF
    </a>
  {% endif %}
</p>


The spiked mixture model (SMM) has been introduced as a probabilistic model that generalizes the single-spike (Wishart) model to a mixture model form. With applications ranging from imaging mass spectrometry in the life sciences to hyperspectral imaging in computer vision, it is crucial to understand under which circumstances its signals can be recovered from noisy measurements. The highly multiplexed nature of these measurement types furthermore necessitates such analysis to hold in highdimensional settings. In this paper, we prove that the extreme eigenvalues of the covariance matrix from the SMM exhibit a phase transition in high-dimensional regimes. We show that this phase transition, and thus signal recovery by extreme eigenvalues, depends on several interacting factors: the correlation between spikes (i.e., how similar in content underlying signals are), the energy parameters (i.e., the absolute strength of each underlying signal), and the mixture probabilities (i.e., how likely it is to encounter each underlying signal). This work provides sharp information-theoretic bounds on the parameters needed to detect one or more spikes from extreme eigenvalues of the SMM covariance matrix, and these guarantees could potentially impact any application of the SMM. Understanding this interplay could serve as a tool for driving experimental design in analytical chemistry and life sciences.