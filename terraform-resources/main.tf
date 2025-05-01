resource "local_file" "foo" {
  count    = 1000
  content  = "bar!"
  filename = "${path.module}/foo${count.index}.txt"
}

resource "local_file" "bar" {
  for_each = toset(["a", "b", "c"])
  content  = "foo!"
  filename = "${path.module}/${each.key}.txt"
}

resource "local_file" "baz" {
  for_each = tomap({
    file1 = "content1",
    file2 = "content2",
  })
  content  = "${each.value}"
  filename = "${path.module}/${each.key}.txt"
}

resource "random_pet" "file_name" {}

resource "local_file" "pet" {
  content  = "pet!"
  filename = "${path.module}/${random_pet.file_name.id}.txt"
}

resource "local_file" "file1" {
  content  = "file1!"
  filename = "${path.module}/mefirst.txt"
}

resource "local_file" "file2" {
  content  = "file2!"
  filename = "${path.module}/mesecond.txt"
  depends_on = [ local_file.file1 ]
}