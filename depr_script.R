data = read.csv('depr_data.csv')
samp_size = 1E3

hist(sample(data$IMD.SCORE,samp_size,replace=F))

attach(data)
#hist(INCOME.SCORE)

emp_inc_lm = lm(EMPLOYMENT.SCORE ~ INCOME.SCORE)
plot(jitter(sample(EMPLOYMENT.SCORE, samp_size, replace=F)) ~ sample(INCOME.SCORE, samp_size, replace=F))
abline(emp_inc_lm)

# Make a subset of useful data
#new_data = data['POST.2009.LA.NAME','IMD.SCORE','INCOME.SCORE','EMPLOYMENT.SCORE','HEALTH.DEPRIVATION.AND.DISABILITY.SCORE','EDUCATION.SKILLS.AND.TRAINING.SCORE','BARRIERS.TO.HOUSING.AND.SERVICES.SCORE','CRIME.AND.DISORDER.SCORE','LIVING.ENVIRONMENT.SCORE']

# I want numbers: 5,8,10,12,14,16,18,20,22
new_data = data[c(5,8,10,12,14,16,18,20,22)]

new_data[sample(nrow(new_data[3])),3]

# Employment score and Income score seem to have the strongest relationship to IMD score

