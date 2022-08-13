resource local_file name1 {
    filename = "implicit.txt"
    content = "This is random string from random provider: ${random_string.name2.id}"
}

resource random_string name2 {
  length  = 10
}
