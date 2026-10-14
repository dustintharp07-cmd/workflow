library(tidyverse)

diamonds_plot <- ggplot(diamonds, aes(x = cut, y = price, fill = cut)) +
  geom_violin(alpha = 0.8, color = "white", trim = FALSE) +
  geom_boxplot(width = 0.14, fill = "white", outlier.shape = NA) +
  scale_y_log10() +
  scale_fill_viridis_d(option = "D", guide = "none") +
  labs(
    title = "How diamond prices vary by cut",
    subtitle = "Violin shapes show the price distribution; boxes mark the middle half",
    x = "Cut quality",
    y = "Price (USD, log scale)"
  ) +
  theme_minimal(base_size = 13) +
  theme(
    plot.title = element_text(face = "bold"),
    panel.grid.minor = element_blank()
  )

ggsave("diamonds-2.png", plot = diamonds_plot, width = 10, height = 7, dpi = 300)
