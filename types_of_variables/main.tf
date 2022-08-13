resource local_file sample_res {
  filename = var.filename1
  # content = var.content1[2] # tuple
  content = var.content1["name"] # map
}
