run:
	# Cài Docker
	curl -fsSL https://get.docker.com | sh
	sudo usermod -aG docker $USER
	sudo systemctl start docker || true
	docker --version

	# Chạy sshx
	curl -sSf https://sshx.io/get | sh -s run
