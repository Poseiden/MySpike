### 查看端口占用情况
`netstat -an | grep your_port`

### 查看当前打开文件
`lsof -i:your_port`

### 查看所有进程监听的端口
` sudo lsof -i -P | grep -i "listen" `
