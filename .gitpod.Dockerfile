FROM gitpod/workspace-full:latest

USER root
RUN apt-get update

# Install python environment
RUN python -m pip install --upgrade pip
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Install R
RUN apt-get install -y libcurl4-openssl-dev libssl-dev libxml2-dev pandoc texlive texlive-latex-extra tcl r-base r-base-dev
RUN echo "r <- getOption('repos'); r['CRAN'] <- 'http://cran.us.r-project.org'; options(repos = r);" > ~/.Rprofile
RUN Rscript -e "install.packages('HSAUR')"
RUN Rscript -e "install.packages('PerformanceAnalytics')"
RUN Rscript -e "install.packages('PortfolioAnalytics')"
RUN Rscript -e "install.packages('RSQLite')"
RUN Rscript -e "install.packages('caret')"
RUN Rscript -e "install.packages('data.table')"
RUN Rscript -e "install.packages('dplyr')"
RUN Rscript -e "install.packages('e1071')"
RUN Rscript -e "install.packages('ggplot2')"
RUN Rscript -e "install.packages('ggraph')"
RUN Rscript -e "install.packages('kableExtra')"
RUN Rscript -e "install.packages('knitr')"
RUN Rscript -e "install.packages('languageserver')"
RUN Rscript -e "install.packages('lubridate')"
RUN Rscript -e "install.packages('magrittr')"
RUN Rscript -e "install.packages('markdown')"
RUN Rscript -e "install.packages('mlr3')"
RUN Rscript -e "install.packages('moments')"
RUN Rscript -e "install.packages('openxlsx')"
RUN Rscript -e "install.packages('plotly')"
RUN Rscript -e "install.packages('purrr')"
RUN Rscript -e "install.packages('purrr')"
RUN Rscript -e "install.packages('quantmod')"
RUN Rscript -e "install.packages('readr')"
RUN Rscript -e "install.packages('readxl')"
RUN Rscript -e "install.packages('reshape')"
RUN Rscript -e "install.packages('reshape2')"
RUN Rscript -e "install.packages('reticulate')"
RUN Rscript -e "install.packages('rmarkdown')"
RUN Rscript -e "install.packages('scales')"
RUN Rscript -e "install.packages('shiny')"
RUN Rscript -e "install.packages('stringr')"
RUN Rscript -e "install.packages('tibbletime')"
RUN Rscript -e "install.packages('tidyquant')"
RUN Rscript -e "install.packages('tidyr')"
RUN Rscript -e "install.packages('tidyverse')"
RUN Rscript -e "install.packages('timetk')"
RUN Rscript -e "install.packages('tinytex')"
RUN Rscript -e "install.packages('xml')"

RUN pip install -U scikit-learn
