resource local_file sample_res {
  filename = "sample_args.txt"
  sensitive_content = "I love terraform"
  file_permission = "0700"
}
