library(tidyverse)

result <- sum(1:10)
print(result)

diamonds_plot <- ggplot(diamonds, aes(x = carat, y = price, color = cut)) +
  geom_point(alpha = 0.45, size = 1.2) +
  scale_color_viridis_d(option = "C") +
  labs(
    title = "Diamond prices by carat",
    subtitle = "Price increases with carat, with variation across cut grades",
    x = "Carat",
    y = "Price (USD)",
    color = "Cut"
  ) +
  theme_minimal(base_size = 13) +
  theme(
    plot.title = element_text(face = "bold"),
    legend.position = "bottom"
  )

ggsave("diamonds-1.png", plot = diamonds_plot, width = 10, height = 7, dpi = 300)
