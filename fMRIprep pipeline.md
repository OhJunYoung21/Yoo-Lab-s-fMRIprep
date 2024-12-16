## fMRIprep pipeline

1. Head motion correction
2. Slice-timing correction (if SliceTiming information is available)
3. Susceptibility distortion correction (if sufficient metadata is available and fieldmaps are provided or --use-syn-sdc is passed)
4. BOLD-T1w coregistration
5. Resampling in a requested output space


### Head motion correction

It requires reference image 
