# ========== to show use of rm() to remove all variables ==========

ls()
rm(list=ls())
ls()

# ========== create empty data frame with 9 columns ==========

df <- data.frame(matrix(nrow=0, ncol=9))

n <- c('sample',
       'true_mean',
       'sample_mean',
       'sample_standard_deviation',
       'sample_size',
       'confidence_level',
       'upper_confidence_limit',
       'lower_confidence_limit',
       'contains_true_mean')

colnames(df) <- n

# ========== assign values to parameters of uniform distribution ==========

sample_minimum <- 10

sample_maximum <- 20

true_mean <- (sample_minimum+sample_maximum)/2

# ========== assign values to variables ==========

sample_size <- 10

confidence_level <- 0.95

confidence_level_1 <- (1-confidence_level)/2+confidence_level     # for two-tailed

# ========== fill up data frame ==========

run_repetition <- 20
set.seed(103)

for (m in 1:run_repetition)
{
  random_numbers <- runif(sample_size, sample_minimum, sample_maximum)

  sample_mean <- mean(random_numbers)
  sample_standard_deviation <- sd(random_numbers)

  if (m<=9) {df[m, 'sample']=paste0('0000', m)}
  else if (m<=99) {df[m, 'sample']=paste0('000', m)}
  else if (m<=999) {df[m, 'sample']=paste0('00', m)}
  else if (m<=9999) {df[m, 'sample']=paste0('0', m)}
  else {df[m, 'sample']=paste0('', m)}

  df[m, 'true_mean'] <- true_mean

  df[m, 'sample_mean'] <- sample_mean

  df[m, 'sample_standard_deviation'] <- sample_standard_deviation

  df[m, 'sample_size'] <- sample_size

  df[m, 'confidence_level'] <- confidence_level
  df[m, 'upper_confidence_limit'] <- sample_mean+qt(confidence_level_1, sample_size-1)*sample_standard_deviation/sqrt(sample_size)
  df[m, 'lower_confidence_limit'] <- sample_mean-qt(confidence_level_1, sample_size-1)*sample_standard_deviation/sqrt(sample_size)

  if (true_mean<=df[m, 'upper_confidence_limit']) {less_than=1} else {less_than=0}
  if (true_mean>=df[m, 'lower_confidence_limit']) {more_than=1} else {more_than=0}
  if ((less_than==1)&(more_than==1)) {df[m, 'contains_true_mean']='1'} else {df[m, 'contains_true_mean']='0'}
}

# ========== you may need to install "ggplot2" package to plot chart ==========

# install.packages('ggplot2')
library('ggplot2')

ggplot(df, aes(x=sample, y=sample_mean, group=contains_true_mean)) +
  geom_point(size=2, aes(colour=contains_true_mean)) +
  geom_errorbar(size=1, aes(ymax=upper_confidence_limit, ymin=lower_confidence_limit, color=contains_true_mean)) +
  scale_color_manual(values=c('0'='red', '1'='black')) +
  geom_hline(aes(yintercept=15), color='purple', size=1) +
  geom_text(label='true mean = 15', y=19, x='00003', color='purple', size=10) +
  theme(axis.text=element_text(size=15)) +
  theme(axis.title=element_text(size=20)) +
  theme(legend.text=element_text(size=15)) +
  theme(legend.title=element_text(size=15)) +
  scale_y_continuous(breaks=seq(10, 20, by=1), limits=c(10, 20))

