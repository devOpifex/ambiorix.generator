# render homepage
render_home <- function(req, res){
  res$render(
    "templates/home.html", 
    list(
      title = "Hello from R", 
      subtitle = "This is rendered with {glue}"
    )
  )
}

# render about
render_about <- function(req, res){
  res$render(
    "templates/about.R", 
    list(
      title = "About", 
      name = robj(req$query$name)
    )
  )
}

# 404: not found
render_404 <- function(req, res){
  res$send_file("templates/404.html", status = 404L)
}