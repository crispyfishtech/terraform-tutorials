resource "local_file" "foo" {
  count    = 10
  content  = "bar!"
  filename = "${path.module}/foo${count.index}.txt"
}

resource "local_file" "bar" {
  for_each = toset(["a", "b", "c"])
  content  = "foo!"
  filename = "${path.module}/${each.key}.txt"
}
