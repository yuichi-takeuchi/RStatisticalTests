# RStatisticalTests
Practical script collection for biostatistics.

## Getting Started

### Prerequisites
* R software (https://www.r-project.org/)
* R reshape package

The codes have been tested with R ver 3.2.3 (2015-12-10).

### Installing
* Install R software.
* Run R software as administrator.
* Install reshape package
```
install.packages("reshape")
```
* Download the above .R stript files.
* Move a .R stript file, which you want to use, to a working directory. In demo files, the default working directry is 'D:\RWD'.

### How to used
1. Move a data source comma-separated values file into the working directry (eg. use Demo_TwoSampleTest.csv).
2. Run R software.
3. Open the sprint in R (File > Open Script...) (eg. use TwoSampleTest.R).
4. Run the script (Edit > Run all or Ctrl+A > Ctrl+R).
5. The results will be available as a text file (eg. Stats_Demo_TwoSampleTest.txt).

## R stript files
* ChiSquaredTest.R: Pearson's Chi-squared test
* CorrelationTest.R: Pearson, Spearman, or Kendall's correlation test between two series of values.
* TwoSampleTest.R: Parametric and non-parametric tests between two independent groups.
* OneWayANOVA.R: Parametric and non-parametric tests between multiple groups followed by pairwise tests with significance level corrections.
* TwoWayANOVA.R: Two-way ANOVA (single or repeated measures).
* TwoWayANOVATimecourse.R: Two-way repeated measures ANOVA along time course.
* TwoWayANOVATimecourseMix.R: Two-way repeated measures ANOVA along time course mixed.

## Help
Use the help function as below.
```
help()
```
or use the online help domument (https://www.r-project.org/help.html).

## DOI


## Versioning
We use [SemVer](http://semver.org/) for versioning.

## Releases
* Ver 1.0.0, 2017/06/24

## Authors
* **Yuichi Takeuchi PhD** - *Initial work* - [GitHub](https://github.com/yuichi-takeuchi)
* Affiliation: Department of Physiology, University of Szeged, Hungary
* E-mail: yuichi-takeuchi@umin.net

## License
This project is licensed under the MIT License.

## Acknowledgments
* Department of Physiology, Tokyo Women's Medical University, Tokyo, Japan

## References
RStatisticalTests has been used for the following works:
* Takeuchi Y, Osaki H, Yagasaki Y, Katayama Y, Miyata M (2017) Afferent Fiber Remodeling in the Somatosensory Thalamus of Mice as a Neural Basis of Somatotopic Reorganization in the Brain and Ectopic Mechanical Hypersensitivity after Peripheral Sensory Nerve Injury. eNeuro 4:e0345-0316.
