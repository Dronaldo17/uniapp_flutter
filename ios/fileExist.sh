#! /bin/bash
cd UniMPCoreSDK/Frameworks/UniWeex

if [ -s "./liblibWeex.a" ]; then
  echo "文件存在"
else
  echo "文件不存在"
  curl -O http://axianu.com/static/libweex/liblibWeex.a
fi
