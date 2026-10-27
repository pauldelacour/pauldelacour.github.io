---
bibkey: delacour2025smm
video_title: Model illustration
video: /images/SMM/synthetic_data_SMM.mp4
figures_title: Numerical results
figures:
  - src: /images/SMM/model_comparison_low_noise_0.01.png
    caption: 'Low noise: \(\sigma^2 = 0.01\)'
    alt: Model comparison at low noise variance
  - src: /images/SMM/model_comparison_high_noise_0.5.png
    caption: 'High noise: \(\sigma^2 = 0.5\)'
    alt: Model comparison at high noise variance
---
We introduce the spiked mixture model (SMM) to address the problem of estimating a set of signals from many randomly scaled and noisy observations. Subsequently, we design a novel expectation-maximization (EM) algorithm to recover all parameters of the SMM. Numerical experiments show that in low signal-to-noise ratio regimes, and for data types where the SMM is relevant, SMM surpasses the more traditional Gaussian mixture model (GMM) in terms of signal recovery performance.
