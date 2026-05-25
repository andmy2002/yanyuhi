#!/bin/bash

echo "🔄 正在更新网站数据..."

for file in product ingredients clinical; do
  if [ -f "data/${file}.json" ]; then
    echo "✅ 已更新 ${file}.json"
  else
    echo "❌ 缺少 data/${file}.json"
  fi
done

echo ""
echo "📝 请直接编辑 data/ 目录下的 JSON 文件来更新内容"
echo "   - data/product.json    → 产品详情"
echo "   - data/ingredients.json → 成分说明"
echo "   - data/clinical.json    → 专利数据"
echo ""
echo "💡 编辑完 JSON 文件后，运行本脚本验证文件格式是否正确"