#!/bin/bash

# NetworkTools Privacy Policy Deployment Script
# 用于更新和部署隐私政策到GitHub Pages

echo "🚀 开始部署NetworkTools隐私政策..."

# 检查是否有未提交的更改
if [[ -n $(git status --porcelain) ]]; then
    echo "📝 发现未提交的更改，正在提交..."
    git add .
    echo "请输入提交信息 (默认: Update privacy policy):"
    read commit_message
    if [ -z "$commit_message" ]; then
        commit_message="Update privacy policy"
    fi
    git commit -m "$commit_message"
else
    echo "✅ 没有未提交的更改"
fi

# 推送到GitHub
echo "📤 推送到GitHub..."
git push origin main

echo "🎉 部署完成！"
echo "📱 隐私政策将在几分钟内在以下地址更新："
echo "   https://YOUR_USERNAME.github.io/networktools-privacy/"
echo ""
echo "💡 提示：首次部署后，请在GitHub仓库设置中启用GitHub Pages" 