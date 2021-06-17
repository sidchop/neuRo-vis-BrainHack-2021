make_ggseg3d <- function(attribute, 
                         colour.pal = c("light yellow",
                                        "orange",
                                        "red",
                                        "dark red"), 
                         hide.colourbar=FALSE, 
                         output.png=FALSE, 
                         file.name="ggseg_3d.png") {
  # Inputs: 
  #' attribute = This must be a numeric vector in this: Left-Thalamus, Left-Caudate, Left-Putamen, Left-Pallidum Left-Hippocampus, Left-Amygdala, Left-Accumbens-area, Right-Thalamus-Proper, Right-Caudate, Right-Putamen, Right-Pallidum, Right-Hippocampus, Right-Amygdala, Right-Accumbens-area
  
  library(ggseg3d)
  library(tidyr)
  library(dplyr)
  #remove(aseg_3d)
  aseg_3d <- aseg_3d
  aseg_3d <- tidyr::unnest(aseg_3d, cols = c(ggseg_3d))
  
  attribute.ggseg3d <- c(rep(NA, 4), attribute[1:4], rep(NA, 3), attribute[5:7],
                         rep(NA, 5), attribute[8:14],  rep(NA, 6))
  
  data <- dplyr::mutate(aseg_3d, attribute =  attribute.ggseg3d)
  #remove NA regions
  aseg_3d[which(is.na(data$attribute)),] <- NA
  aseg_3d <- tidyr::drop_na(aseg_3d)
  
  data[which(is.na(data$attribute)),] <- NA
  data <- tidyr::drop_na(data)
  data$attribute[data$attribute==0]<-NA #make 0 valus NA so they are set as grey in ggseg3d
  
  scene=list(camera = list(eye = list(x = 0, y = 1, z = -2.25)),
             aspectratio = list(x=1.6,y=1.6,z=1.6))
  
  
  plot <- ggseg3d::ggseg3d(.data = data, 
                           atlas = aseg_3d, 
                           colour = "attribute", 
                           text = "attribute",
                           palette = colour.pal)
  plot <- remove_axes(plot)
  plot <- plotly::layout(plot, 
                         scene = scene, 
                         plot_bgcolor  = "rgba(0, 0, 0, 0)",
                         paper_bgcolor = "rgba(0, 0, 0, 0)", 
                         width = 600, height = 600) 
  
  if(hide.colourbar==TRUE){
    plot <- plotly::hide_colorbar(plot)
  }
  
  if( output.png==TRUE){
    plotly::orca(plot, file =  file.name)
  }
  
  return(plot)
  
}