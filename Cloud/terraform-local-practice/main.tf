# 1. Define the Local Provider
terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.5.2"
    }
  }
}

# 2. Create a local file
resource "local_file" "learning_log" {
  filename = "${path.module}/learning-notes.txt"
  content  = "Cloud Learning Journey 2026: Testing with Terraform Local Provider"
}

# 3. Output the file path
output "file_path" {
  value = local_file.learning_log.filename
}