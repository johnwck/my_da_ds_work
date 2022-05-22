# ========== to show use of rm() to remove all variables ==========

ls()
rm(list=ls())
ls()

# ========== create empty data frame with 9 columns ==========

df <- data.frame(matrix(nrow=0, ncol=4))

n <- c('sample',
       'upper_confidence_limit',
       'lower_confidence_limit',
       'contains_true_mean')

colnames(df) <- n

# ========== create empty data frame with 9 columns ==========

df_1 <- data.frame(matrix(nrow=0, ncol=2))

n <- c('sample',
       'proportion_contains_true_mean')

colnames(df_1) <- n


# ========== assign values to parameters of uniform distribution ==========

sample_minimum <- 10

sample_maximum <- 20

true_mean <- (sample_minimum+sample_maximum)/2

# ========== assign values to variables ==========

sample_size <- 100

confidence_level <- 0.95

confidence_level_1 <- (1-confidence_level)/2+confidence_level     # for two-tailed

# ========== fill up data frame ==========

run_repetition_outer <- 999
run_repetition_inner <- 1000
set.seed(103)

for (p in 1:run_repetition_outer)
{

  for (m in 1:run_repetition_inner)
  {
    random_numbers <- runif(sample_size, sample_minimum, sample_maximum)

    sample_mean <- mean(random_numbers)
    sample_standard_deviation <- sd(random_numbers)
  
    df[m, 'sample']=m

    df[m, 'upper_confidence_limit'] <- sample_mean+qt(confidence_level_1, sample_size-1)*sample_standard_deviation/sqrt(sample_size)
    df[m, 'lower_confidence_limit'] <- sample_mean-qt(confidence_level_1, sample_size-1)*sample_standard_deviation/sqrt(sample_size)

    if (true_mean<=df[m, 'upper_confidence_limit']) {less_than=1} else {less_than=0}
    if (true_mean>=df[m, 'lower_confidence_limit']) {more_than=1} else {more_than=0}
    if ((less_than==1)&(more_than==1)) {df[m, 'contains_true_mean']=1} else {df[m, 'contains_true_mean']=0}
  }

  count_1 <- nrow(df[df$contains_true_mean==1, ])
  count_0 <- nrow(df[df$contains_true_mean==0, ])
  
  if (p<=9) {df_1[p, 'sample']=paste0('00', p)}
  else if (p<=99) {df_1[p, 'sample']=paste0('0', p)}
  else {df_1[p, 'sample']=paste0('', p)}
  df_1[p, 'proportion_contains_true_mean'] <- count_1/(count_1+count_0)*100
}

# ========== you may need to install "ggplot2" package to plot chart ==========

# install.packages('ggplot2')
library('ggplot2')

ggplot(df_1, aes(x=sample, y=proportion_contains_true_mean, group=1)) +
  geom_line(size=1) +
  geom_hline(aes(yintercept=95), color='purple', size=1) +
  geom_text(label='(large) true proportion = 95%', y=85, x='500', color='purple', size=10) +
  theme(axis.text.x=element_blank()) +
  theme(axis.ticks.x=element_blank()) +
  theme(axis.text=element_text(size=15)) +
  theme(axis.title=element_text(size=20)) +
  theme(legend.text=element_text(size=15)) +
  theme(legend.title=element_text(size=15)) +
  scale_y_continuous(breaks=seq(80, 100, by=2), limits=c(80, 100))

