pre.ls <- ls()

#
col.flower <- c('#5f5856','#dbb232','#906f5a','#988d8d','#000000')

col.beach <- c('#3f3342', '#e5ecd5','#a5b5c4','#576f92', '#7f7f96')

col.citynight <- c('#2d1916','#5d3a31', '#bf1713', '#bbb3a7','#FFF48A')

col.auLandscape <- c('#96b7dd','#6f9dd5','#453725','#ac8d4c','#bfc3bc')

col.resprout <- c('#1d1d21','#dcb9ab','#4f4b4e','#bb9b59','#a76a58')

col.daisy <- c('#222619', '#4b4b4a','#532a2c','#ad3f3e','#c59764')

col.iris <- c('#ECC834','#a5a1af','#855AB4','#1f2509','#839144')

col.beauty <- c('#a9b6ca','#6d9cd4','#a88f6c','#524330','#F4D1D5')

col.bushBySea <- c('#a8b0cd', '#4a3f20','#a69762','#737983','#49689E')

col.reptile <- c('#430248','#ae54c1','#462aba','#cba0f2','#000000')

#
col.df <- data.frame(flower = col.flower,
                     beach=col.beach,
                     citynight = col.citynight,
                     auLandscape=col.auLandscape,
                     resprout = col.resprout,
                     daisy = col.daisy,
                     iris = col.iris,
                     beauty = col.beauty,
                     bushBySea = col.bushBySea,
                     reptile = col.reptile)

# print.pallete.func(pallet.nm='beach')
#
print.pallete.func <- function(pallet.nm){

  col.vec <- as.character(col.df[,c(paste0(pallet.nm))])

  x <- seq_along(col.vec)
  pie(c(x/x),col=col.vec[x],
      labels = paste0(x,' - ',col.vec),main = paste0(pallet.nm))
}

#
print.all.func <- function(){
  par(mfrow=c(2,5))
  sapply(names(col.df),print.pallete.func)
}

# print.all.func()
disc = c('Description',
         'This code is a homemade color pallette from picture I have taken over the year.',
         'Each pallette contains the colors from a picutre of certain landscape/object, which should be obvious from the name of the pallette.',
         'The current version has 10 pallettes and five colors in each.',
         'Usage',
         'print.all.func can print all the pallettes for preview',
         'col.df has all the color',
         'use names(col.df) to check the names of the pallettes',
         'print.pallete.func can print a choosen pallette for preview',
         'Example',
         'pallette(col.df$flower)',
         'print.pallete.func(col.df$flower)')

cat("\014")
print(disc)

rm(list=setdiff(ls(), c(pre.ls,'print.all.func','print.pallete.func','col.df')))
