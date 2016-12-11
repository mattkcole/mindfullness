### playing around with google sheets

data <- gs_title("mindfullness")

new_data <- c("mc", "12-10-2016", "pause")

data %>%
        gs_add_row(ws = 1, new_data)

data %>%
        gs_read(ws=1)
