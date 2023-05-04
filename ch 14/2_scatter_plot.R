data(obama_vs_mccain, package = "learningr")

# still droppin NA tho plot already ignores

obama_vs_mccain <- obama_vs_mccain[!is.na(obama_vs_mccain$Turnout),]

# with for accessing cols 
with(obama_vs_mccain, plot(Income, Turnout))

# plot args col for color , pch for  dot shape, bg , main as title
with(obama_vs_mccain, plot(Income, Turnout, col = "violet", pch = 20, main = "Turnout vs Income"))

