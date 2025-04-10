#Dataset:
 # Simulate 2000 emails with:  
 # contains_offer (1/0)
#is_spam (1/0; depends on keyword presence)
#Questions:
#What’s P(Spam)?
#What’s P(Spam | contains_offer)?
#What’s P(Not Spam | contains_offer)?
# Set seed for reproducibility
set.seed(101)

# Simulate 2000 emails
n <- 2000
emails <- data.frame(
  email_id = 1:n,
  contains_offer = rbinom(n, 1, 0.4)  # 40% of emails have "offer"
)

# Spam probability depends on contains_offer
emails$is_spam <- ifelse(emails$contains_offer == 1, 
                         rbinom(n, 1, 0.8),  # 80% spam if contains offer
                         rbinom(n, 1, 0.3))  # 30% spam if not
View(emails)
# Calculate probabilities
total_emails <- nrow(emails)

p_spam <- mean(emails$is_spam == 1)
p_spam_given_offer <- mean(emails$is_spam[emails$contains_offer == 1] == 1)
p_not_spam_given_offer <- mean(emails$is_spam[emails$contains_offer == 1] == 0)

# Print results
cat("P(Spam):", round(p_spam, 3), "\n")
cat("P(Spam | contains_offer):", round(p_spam_given_offer, 3), "\n")
cat("P(Not Spam | contains_offer):", round(p_not_spam_given_offer, 3), "\n")
# Load ggplot2
library(ggplot2)

# Add readable labels
emails$OfferLabel <- ifelse(emails$contains_offer == 1, "Contains 'Offer'", "No 'Offer'")
emails$SpamLabel <- ifelse(emails$is_spam == 1, "Spam", "Not Spam")

# Plot
ggplot(emails, aes(x = OfferLabel, fill = SpamLabel)) +
  geom_bar(position = "fill") +
  scale_y_continuous(labels = scales::percent_format()) +
  labs(
    title = "Email Classification Based on 'Offer' Presence",
    x = "Email Content",
    y = "Proportion",
    fill = "Spam Status"
  ) +
  scale_fill_manual(values = c("Spam" = "red", "Not Spam" = "green")) +
  theme_minimal(base_size = 14)

mean(emails$is_spam[emails$contains_offer == 1] == 1)
mean(emails$is_spam[emails$contains_offer == 1] == 0)





