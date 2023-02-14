FROM opencpu/base

# Install dependencies
RUN apt-get update
RUN apt-get install -y build-essential gfortran libapparmor-dev libboost-all-dev
RUN apt-get install -y libcairo2-dev libcurl4-gnutls-dev libfontconfig1-dev
RUN apt-get install -y libgsl-dev libjpeg-dev liblapack-dev libmariadb-dev libpng-dev
RUN apt-get install -y libproj-dev libsodium-dev libssl-dev  libudunits2-dev libxml2-dev mesa-common-dev
RUN apt-get install -y libglu1-mesa-dev pandoc
RUN apt-get install -y libcurl4-openssl-dev libssl-dev



# Install R packages

# RUN Rscript -e "install.packages('blob')"
# RUN Rscript -e "install.packages('codebook')"
# RUN Rscript -e "install.packages('data.table')"
# RUN Rscript -e "install.packages('dbplyr')"
# RUN Rscript -e "install.packages('deldir')"
# RUN Rscript -e "install.packages('desc')"
# RUN Rscript -e "install.packages('descr')"
# RUN Rscript -e "install.packages('dplyr')"
# RUN Rscript -e "install.packages('DT')"
# RUN Rscript -e "install.packages('dtplyr')"
# RUN Rscript -e "install.packages('etm')"
# RUN Rscript -e "install.packages('expm')"
# RUN Rscript -e "install.packages('foreach')"
# RUN Rscript -e "install.packages('future')"
# RUN Rscript -e "install.packages('gamm4')"
# RUN Rscript -e "install.packages('gdata')"
# RUN Rscript -e "install.packages('gdtools')"
# RUN Rscript -e "install.packages('gee')"
# RUN Rscript -e "install.packages('ggplot2')"
# RUN Rscript -e "install.packages('ggraph')"
# RUN Rscript -e "install.packages('ggrepel')"
# RUN Rscript -e "install.packages('ggthemes')"
# RUN Rscript -e "install.packages('ggvis')"
# RUN Rscript -e "install.packages('gplots')"
# RUN Rscript -e "install.packages('gridBase')"
# RUN Rscript -e "install.packages('plyr')"
# RUN Rscript -e "install.packages('qrencoder')"
# RUN Rscript -e "install.packages('quadprog')"
# RUN Rscript -e "install.packages('quantmod')"
# RUN Rscript -e "install.packages('QuantPsyc')"
# RUN Rscript -e "install.packages('quantreg')"
# RUN Rscript -e "install.packages('randomForest')"
# RUN Rscript -e "install.packages('RAppArmor')"
# RUN Rscript -e "install.packages('R.cache')"
# RUN Rscript -e "install.packages('Rcgmin')"
# RUN Rscript -e "install.packages('rprojroot')"
# RUN Rscript -e "install.packages('R.rsp')"
# RUN Rscript -e "install.packages('rsconnect')"
# RUN Rscript -e "install.packages('RSQLite')"
# RUN Rscript -e "install.packages('R.utils')"
# RUN Rscript -e "install.packages('httr')"
# RUN Rscript -e "install.packages('jsonlite')"
# RUN Rscript -e "install.packages('knitr')"
# RUN Rscript -e "install.packages('lattice')"
# RUN Rscript -e "install.packages('magrittr')"
# RUN Rscript -e "install.packages('markdown')"
# RUN Rscript -e "install.packages('MASS')"
# RUN Rscript -e "install.packages('Matrix')"
# RUN Rscript -e "install.packages('memoise')"
# RUN Rscript -e "install.packages('mime')"
# RUN Rscript -e "install.packages('nlme')"
# RUN Rscript -e "install.packages('nnet')"
# RUN Rscript -e "install.packages('opencpu')"
# RUN Rscript -e "install.packages('openssl')"
# RUN Rscript -e "install.packages('pander')"
# RUN Rscript -e "install.packages('stringi')"
# RUN Rscript -e "install.packages('stringr')"
# RUN Rscript -e "install.packages('utf8')"
# RUN Rscript -e "install.packages('webutils')"
# RUN Rscript -e "install.packages('zip')"

# Install formr R package (without devtools)
RUN git clone https://github.com/rubenarslan/formr.git
RUN R CMD build formr
RUN R CMD INSTALL formr_0.9.1.tar.gz

# Install formr R package (with devtools)
# RUN Rscript -e "install.packages('devtools')"
# RUN Rscript -e "devtools::install_github('rubenarslan/formr', upgrade_dependencies = FALSE)"

Run Rscript -e "fail:here()"

