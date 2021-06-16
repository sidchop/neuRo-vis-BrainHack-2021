Introduction to Neuroimaging Data Visualisaion in R
================

These notebooks were developed to be presented at the TrainTrack 2021
edition of the [OHBM BrainHack](https://ohbm.github.io/hackathon2021/).

This short series of R-notebooks will introduce to to some of the
neuroimaging data visualization tools R. You can work though these
notebooks on RStudio Cloud, or locally on Rstudio. If you are using
Rstudio cloud, or have git installed, clone this get repo by typing the
following in to the terminal:

`git clone sidchop/neuRo-vis-BrainHack-2021`

## Structure

We will go though how to visualize 4 different types of data:

-   [Voxel-level
    data](https://github.com/sidchop/neuRo-vis-BrainHack-2021/blob/main/nifti.Rmd)  

-   [ROI-level
    data](https://github.com/sidchop/neuRo-vis-BrainHack-2021/blob/main/roi.Rmd)  

-   [Edge-level
    data](https://github.com/sidchop/neuRo-vis-BrainHack-2021/blob/main/edge.Rmd)  

-   [Vertex-level
    data](https://github.com/sidchop/neuRo-vis-BrainHack-2021/blob/main/vertex.Rmd)
    *(Note: This note book will not work properly on RStudio Cloud due
    to space and RAM requirements)*  

## Pre-requisites

You will need a basic understanding of R syntax. A understanding of
R-Markdown syntax will be helpful, but not essential.

## Questions?

If you run into any problems while executing these notebooks of have any
questions, please open an
[issue](https://github.com/sidchop/neuRo-vis-BrainHack-2021/issues) and
describing the problem or question. You can also email me at
<a href="mailto:sid.chopra@monash.edu" class="email">sid.chopra@monash.edu</a>.

## Acknowledgements

-   Voxel-level data: Thanks to [John
    Muschelli](https://github.com/muschellij2) for developing
    `neurobase` and providing great documentation.
-   ROI-level data: Thanks to [Athanasia
    Mowinckel](https://github.com/Athanasiamo) for developing `ggseg` &
    `ggseg3D`, and her wonderful blog posts on how to use these
    packages.
-   Vertex-level data: Thanks to [Tim Schäfer & Christine
    Ecker](https://github.com/dfsp-spirit/fsbrain) for developing
    fsbrain, a timely and much needed package.
