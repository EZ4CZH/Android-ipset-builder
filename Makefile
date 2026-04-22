CC = gcc
TARGET = builder
SRC = local/android_ipset-builder.c

all: $(TARGET)
	./$(TARGET)

$(TARGET): $(SRC)
	@echo "正在编译构建器..."
	$(CC) $(SRC) -o $(TARGET)

clean:
	@echo "正在清理工作空间..."
	rm -rf workspace output $(TARGET) *.zip
	@echo "清理完成。"

help:
	@echo "可用命令:"
	@echo "  make       - 编译并开始构建 Android ipset"
	@echo "  make clean - 删除所有编译生成的临时文件和产物"
