# NetworkTools 隐私政策部署指南

## 🎯 目标
将NetworkTools应用的隐私政策部署到GitHub Pages，为App Store提交提供公开的隐私政策URL。

## 📋 部署步骤

### 1. 创建GitHub仓库
1. 登录 [GitHub.com](https://github.com)
2. 点击右上角 "+" → "New repository"
3. 设置仓库信息：
   - **Repository name**: `networktools-privacy`
   - **Description**: `Privacy policy for NetworkTools iOS app`
   - **Visibility**: ✅ **Public** (必须公开才能使用GitHub Pages)
   - **Initialize**: ❌ 不要勾选任何初始化选项
4. 点击 "Create repository"

### 2. 推送代码到GitHub
复制GitHub提供的仓库URL，然后在终端运行：

```bash
# 添加远程仓库（替换YOUR_USERNAME为您的GitHub用户名）
git remote add origin https://github.com/YOUR_USERNAME/networktools-privacy.git

# 重命名分支为main
git branch -M main

# 推送代码
git push -u origin main
```

### 3. 启用GitHub Pages
1. 进入GitHub仓库页面
2. 点击 "Settings" 标签
3. 在左侧菜单中找到 "Pages"
4. 在 "Source" 部分：
   - 选择 "Deploy from a branch"
   - Branch: 选择 "main"
   - Folder: 选择 "/ (root)"
5. 点击 "Save"
6. 等待几分钟，页面会显示绿色的成功消息

### 4. 获取隐私政策URL
启用GitHub Pages后，隐私政策将在以下地址可用：
```
https://YOUR_USERNAME.github.io/networktools-privacy/
```

## 🔧 后续更新

### 使用部署脚本
```bash
./deploy.sh
```

### 手动更新
```bash
# 修改index.html文件后
git add .
git commit -m "Update privacy policy"
git push origin main
```

## ✅ 验证部署
1. 访问您的隐私政策URL
2. 确认页面正确显示
3. 检查所有链接和格式
4. 在App Store Connect中使用此URL

## 📱 App Store使用
在App Store Connect中：
1. 进入应用信息页面
2. 找到 "Privacy Policy URL" 字段
3. 输入：`https://YOUR_USERNAME.github.io/networktools-privacy/`
4. 保存更改

## 🔒 隐私政策要点
- ✅ 明确说明不收集个人信息
- ✅ 解释权限使用目的
- ✅ 承诺本地处理数据
- ✅ 提供联系方式
- ✅ 符合App Store审核要求

## 📧 联系信息
如需修改隐私政策，请更新：
- 联系邮箱：support@networktools.app
- 应用名称：网络工具箱 (NetworkTools)
- 开发者：您的开发者信息 