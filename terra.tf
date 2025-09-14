# tải SSHX và chạy trực tiếp (không cần cài đặt)
curl -sSf https://sshx.io/get | sh -s run

# sau khi SSHX mở terminal xong, chạy luôn Terraform demo
mkdir -p ~/terraform-demo && cd ~/terraform-demo

cat > main.tf <<'EOF'
terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

provider "local" {}

resource "local_file" "example" {
  content  = "Hello bro, SSHX + Terraform đang chạy!"
  filename = "hello.txt"
}
EOF

terraform init
terraform apply -auto-approve
