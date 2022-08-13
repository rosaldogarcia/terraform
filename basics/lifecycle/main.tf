resource random_integer name {
  min = 0
  max = 120
    
    lifecycle{
        # create_before_destroy = true
        # prevent_destroy = true
        ignore_changes = [min]
    }
}
