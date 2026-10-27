---
bibkey: delacour2026sisal
figures_title: Illustration on synthetic data
figures_layout: grid
figures:
  - src: /images/SiSAL/synthetic_dataset.png
    caption: 'Synthetic dataset generation, \(\{x_i\}_{i\in I}\)'
    alt: Schematic of synthetic dataset generation
    wide: true
  - src: /images/SiSAL/synthetic_latent.png
    caption: Latent representation colored by tissue structure membership
    alt: Tissue labels in the latent space
  - src: /images/SiSAL/synthetic_SNR_latent.png
    caption: 'Latent representation colored by \(\mathrm{SNR}_i\)'
    alt: Latent-space representation colored by signal-to-noise ratio
---
As datasets grow increasingly **high-dimensional** and **complex**, distinguishing a **condensed set of interpretable underlying factors** becomes essential. In spatial omics, for example, hundreds to thousands of molecular features per observation promise unprecedented biological insight. However, without meaningful latent representations, that potential remains markedly untapped.

We propose a new approach based on the **beta-variational autoencoder** and **kernel density estimation** to dissect data along independent, uncertainty-aware, and interpretable (yet non-linear) latent axes. A **comparative-latent-traversal algorithm** translates latent findings back into the original measurement context. Applied to imaging mass spectrometry of human kidney, the approach separates signal strength from relative signal content and uncovers previously unrecognized subdivisions within kidney proximal tubules.
