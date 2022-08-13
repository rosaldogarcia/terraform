resource local_file name1 {
    content = "This is HCL"
    filename = "sample.txt"
}

resource random_string name2 {
  length  = 10
}
