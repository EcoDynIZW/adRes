% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_supplement.R
\name{merge_3slopes}
\alias{merge_3slopes}
\title{Merges all three slopes by the respective data attributes}
\usage{
merge_3slopes(meta_obj, meta_obj1, meta_obj2)
}
\arguments{
\item{meta_obj}{A fitted meta-analytical model object.}

\item{meta_obj1}{A fitted meta-analytical model object whose global slopes and per-study effect
sizes will be displayed on the plot.}

\item{meta_obj2}{An (optional) second fitted meta-analytical model object whose
global slopes and per-study effect sizes will be displayed on the plot.}
}
\value{
A dataframe with the products of slopes from conditions 1 and 2 and
slopes from condition 3.
}
\description{
Merges all three slopes by the respective data attributes
}
\examples{
\dontrun{
mod_T_prcs <- fit_all(data = dat_Clim,
                      temperature = TRUE, precipitation = FALSE,
                      phenology = TRUE, morphology = TRUE,
                      condition = '1', nb_cores = nb_cores,
                      rand_trait = FALSE, fixed = NULL, digit = digit)
mod_phen_T_prcs <- fit_all(data = dat_Trait, temperature = TRUE,
                            precipitation = FALSE, phenology = TRUE,
                            morphology = FALSE, condition = '2',
                            nb_cores = nb_cores, rand_trait = FALSE,
                            fixed = NULL, digit = digit)
mod_Sel_T_phen <- fit_all(data = dat_Sel,
                          temperature = TRUE, precipitation = FALSE,
                          phenology = TRUE, morphology = FALSE,
                          condition = '3', nb_cores = nb_cores,
                          rand_trait = FALSE, fixed = NULL,
                          digit = digit)
test <- merge_3slopes(meta_obj = mod_T_prcs,
                      meta_obj1 = mod_phen_T_prcs,
                      meta_obj2 = mod_Sel_T_phen)
}

}
