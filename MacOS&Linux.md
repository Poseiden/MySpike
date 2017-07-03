### 查看端口占用情况
`netstat -an | grep your_port`

### 查看当前打开文件
`lsof -i:your_port`

### 查看所有进程监听的端口
` sudo lsof -i -P | grep -i "listen" `

### 列出所有本地可用用户 ([ref](https://askubuntu.com/questions/410244/a-command-to-list-all-users-and-how-to-add-delete-modify-users))
` cut -d: -f1 /etc/passwd `

### echo write file
` echo 'your_text' > your_file `

### echo append file
` echo 'your text' >> your_file `
