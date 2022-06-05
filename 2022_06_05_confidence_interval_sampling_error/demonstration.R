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

sample_size <- 50

confidence_level <- 0.95

confidence_level_1 <- (1-confidence_level)/2+confidence_level     # for two-tailed

# ========== fill up data frame ==========

run_repetition <- 1000
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

# ========== calculate 95% confidence interval ==========

quantile(df$sample_mean, probs=c(0.025,0.975))

# ========== you may need to install "ggplot2" package to plot chart ==========

library('ggplot2')
ggplot(df, aes(x=sample_mean)) +
  geom_histogram(aes(y=..count../sum(..count..)), binwidth=0.1) +
  xlim(0, 20) +
  geom_text(label='true mean = 15', y=0.05, x=6, color='purple', size=10) +
  geom_text(label='sample set size = 50', y=0.06, x=6, color='purple', size=10) +
  geom_text(label='95% confidence interval = (14.3, 15.8)', y=0.07, x=6, color='purple', size=10) +
  theme(axis.text=element_text(size=15)) +
  theme(axis.title=element_text(size=20))

