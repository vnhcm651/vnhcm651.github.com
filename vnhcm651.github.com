<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <title>毅信工业科技有限公司 | TONY</title>

  <meta
    name="description"
    content="毅信工业科技有限公司，主营技术咨询、产品设计、检测服务、设备与零配件销售。了解 TONY，访问文件中心，上传与下载业务资料。"
  >

  <style>
    :root {
      --bg: #f5f7f9;
      --white: #ffffff;
      --text: #182630;
      --muted: #62717c;
      --brand: #0b655c;
      --brand-dark: #084d46;
      --brand-light: #e8f3ef;
      --border: #dde5e8;
      --radius: 20px;
    }

    * {
      box-sizing: border-box;
    }

    html {
      scroll-behavior: smooth;
      scroll-padding-top: 95px;
    }

    body {
      margin: 0;
      font-family:
        -apple-system, BlinkMacSystemFont, "Segoe UI",
        "PingFang SC", "Microsoft YaHei", sans-serif;
      color: var(--text);
      background: var(--bg);
      line-height: 1.7;
    }

    a {
      color: inherit;
      text-decoration: none;
    }

    button,
    a {
      -webkit-tap-highlight-color: transparent;
    }

    a:focus-visible {
      outline: 3px solid #bd7100;
      outline-offset: 5px;
    }

    .container {
      width: min(1120px, calc(100% - 40px));
      margin-inline: auto;
    }

    .skip-link {
      position: absolute;
      top: -100px;
      left: 16px;
      z-index: 100;
      padding: 10px 16px;
      background: var(--white);
    }

    .skip-link:focus {
      top: 12px;
    }

    /* 顶部导航 */

    .header {
      position: sticky;
      top: 0;
      z-index: 20;
      border-bottom: 1px solid var(--border);
      background: rgba(255, 255, 255, 0.96);
    }

    .nav {
      min-height: 78px;
      display: flex;
      justify-content: space-between;
      align-items: center;
      gap: 24px;
    }

    .brand {
      display: flex;
      align-items: center;
      gap: 12px;
    }

    .brand-icon {
      width: 42px;
      height: 42px;
      border-radius: 12px;
      display: grid;
      place-items: center;
      background: var(--brand);
      color: var(--white);
      font-size: 23px;
      font-weight: 700;
      flex-shrink: 0;
    }

    .brand-name {
      font-weight: 750;
      font-size: 16px;
      line-height: 1.4;
    }

    .brand-domain {
      display: block;
      color: var(--muted);
      font-size: 12px;
      font-weight: 400;
      margin-top: 3px;
    }

    .nav-links {
      display: flex;
      align-items: center;
      gap: 25px;
      font-size: 14px;
    }

    .nav-links a:hover {
      color: var(--brand);
    }

    /* 通用按钮 */

    .button {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      min-height: 48px;
      padding: 11px 23px;
      border: 1px solid transparent;
      border-radius: 10px;
      background: var(--brand);
      color: var(--white);
      font-size: 15px;
      font-weight: 650;
      transition: background 0.2s, transform 0.2s;
      text-align: center;
    }

    .button:hover {
      background: var(--brand-dark);
      transform: translateY(-2px);
    }

    .button.secondary {
      background: var(--white);
      color: var(--text);
      border-color: var(--border);
    }

    .button.secondary:hover {
      background: var(--brand-light);
    }

    .button[aria-disabled="true"] {
      background: #e8edef;
      border-color: #dbe2e6;
      color: #596670;
      cursor: not-allowed;
      transform: none;
    }

    /* 首屏 */

    .hero {
      display: grid;
      grid-template-columns: 1.2fr 0.8fr;
      align-items: center;
      gap: 60px;
      padding-block: 88px;
    }

    .eyebrow {
      display: inline-block;
      color: var(--brand);
      background: var(--brand-light);
      border-radius: 100px;
      padding: 5px 13px;
      font-size: 13px;
      font-weight: 650;
    }

    h1 {
      margin: 22px 0;
      font-size: clamp(36px, 5vw, 58px);
      line-height: 1.2;
      letter-spacing: -1.5px;
    }

    h1 span {
      color: var(--brand);
    }

    .hero-description {
      max-width: 540px;
      color: var(--muted);
      font-size: 17px;
      line-height: 1.9;
    }

    .actions {
      display: flex;
      flex-wrap: wrap;
      gap: 12px;
      margin-top: 28px;
    }

    .hero-card {
      position: relative;
      overflow: hidden;
      background: var(--brand-dark);
      color: var(--white);
      border-radius: 26px;
      padding: 34px;
      box-shadow: 0 22px 48px rgba(8, 77, 70, 0.13);
    }

    .hero-card::after {
      content: "";
      position: absolute;
      width: 180px;
      height: 180px;
      right: -70px;
      top: -70px;
      border: 30px solid rgba(255, 255, 255, 0.06);
      border-radius: 50%;
      pointer-events: none;
    }

    .hero-card-label {
      margin: 0 0 8px;
      color: #bcddd6;
      font-size: 14px;
    }

    .hero-card h2 {
      margin: 0 0 25px;
      font-size: 25px;
    }

    .service-list {
      list-style: none;
      margin: 0;
      padding: 0;
    }

    .service-list li {
      display: flex;
      gap: 14px;
      padding: 15px 0;
      border-top: 1px solid rgba(255, 255, 255, 0.16);
    }

    .service-list span {
      color: #acd5cb;
      font-size: 13px;
      padding-top: 3px;
    }

    /* 内容区 */

    .section {
      padding-block: 56px;
    }

    .section-head {
      margin-bottom: 28px;
    }

    .section-head h2 {
      margin: 0 0 8px;
      font-size: 30px;
      line-height: 1.35;
    }

    .section-head p {
      margin: 0;
      color: var(--muted);
    }

    .service-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 18px;
    }

    .service-card {
      background: var(--white);
      border: 1px solid var(--border);
      border-radius: var(--radius);
      padding: 26px;
    }

    .service-number {
      color: var(--brand);
      font-size: 14px;
      font-weight: 750;
    }

    .service-card h3 {
      margin: 20px 0 10px;
      font-size: 19px;
    }

    .service-card p {
      margin: 0;
      color: var(--muted);
      font-size: 14px;
    }

    /* TONY 介绍 */

    .about {
      display: grid;
      grid-template-columns: 240px 1fr;
      gap: 38px;
      align-items: center;
      padding: 40px;
      background: var(--white);
      border: 1px solid var(--border);
      border-radius: var(--radius);
    }

    .profile {
      min-height: 230px;
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      border-radius: 15px;
      background: var(--brand-light);
      color: var(--brand);
    }

    .avatar {
      width: 82px;
      height: 82px;
      display: grid;
      place-items: center;
      border: 1px solid #b7d6cc;
      border-radius: 50%;
      font-size: 40px;
      font-weight: 750;
      background: #f7fbf9;
    }

    .profile strong {
      margin-top: 12px;
      font-size: 23px;
      letter-spacing: 2px;
    }

    .profile small {
      font-size: 13px;
    }

    .about h2 {
      font-size: 29px;
      margin: 0 0 15px;
    }

    .about p {
      margin: 12px 0;
      color: var(--muted);
    }

    .tags {
      display: flex;
      flex-wrap: wrap;
      gap: 8px;
      margin-top: 22px;
    }

    .tag {
      padding: 5px 11px;
      border-radius: 7px;
      background: var(--bg);
      font-size: 13px;
      color: var(--brand);
    }

    /* 文件中心 */

    .files-panel {
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 20px;
    }

    .file-card {
      padding: 30px;
      border: 1px solid var(--border);
      border-radius: var(--radius);
      background: var(--white);
    }

    .file-icon {
      width: 44px;
      height: 44px;
      display: grid;
      place-items: center;
      border-radius: 12px;
      background: var(--brand-light);
      color: var(--brand);
      font-size: 24px;
    }

    .file-card h3 {
      margin: 18px 0 8px;
      font-size: 22px;
    }

    .file-card p {
      color: var(--muted);
      margin: 0 0 22px;
      font-size: 15px;
    }

    .file-note {
      color: var(--muted);
      font-size: 13px;
      margin-top: 18px;
    }

    .storage-status {
      color: var(--brand);
      font-size: 14px;
      margin-bottom: 0;
    }

    /* 页脚 */

    .footer {
      margin-top: 34px;
      padding-block: 28px;
      border-top: 1px solid var(--border);
      color: var(--muted);
      font-size: 13px;
    }

    .footer-inner {
      display: flex;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 12px;
    }

    .footer p {
      margin: 0;
    }

    @media (max-width: 900px) {
      .hero {
        grid-template-columns: 1fr;
        gap: 32px;
        padding-block: 55px;
      }

      .service-grid {
        grid-template-columns: repeat(2, 1fr);
      }

      .about {
        grid-template-columns: 180px 1fr;
        gap: 26px;
        padding: 28px;
      }
    }

    @media (max-width: 600px) {
      .container {
        width: calc(100% - 32px);
      }

      .nav {
        flex-direction: column;
        align-items: flex-start;
        gap: 12px;
        padding-block: 14px;
      }

      .nav-links {
        width: 100%;
        justify-content: space-between;
        gap: 12px;
      }

      html {
        scroll-padding-top: 130px;
      }

      h1 {
        letter-spacing: -1px;
      }

      .hero {
        padding-block: 40px;
      }

      .hero-card {
        padding: 26px;
      }

      .section {
        padding-block: 32px;
      }

      .service-grid,
      .files-panel,
      .about {
        grid-template-columns: 1fr;
      }

      .profile {
        min-height: 190px;
      }

      .about {
        padding: 24px;
      }

      .actions .button {
        flex: 1;
      }
    }

    @media (prefers-reduced-motion: reduce) {
      html {
        scroll-behavior: auto;
      }

      .button {
        transition: none;
      }
    }
  </style>
</head>

<body>
  <a class="skip-link" href="#main">跳转到主要内容</a>

  <header class="header">
    <div class="container nav">
      <a class="brand" href="#home" aria-label="毅信工业科技有限公司首页">
        <span class="brand-icon" aria-hidden="true">毅</span>

        <div class="brand-name">
          毅信工业科技有限公司
          <span class="brand-domain">www.vnhcm651.com</span>
        </div>
      </a>

      <nav class="nav-links" aria-label="主要导航">
        <a href="#services">主营业务</a>
        <a href="#tony">关于 TONY</a>
        <a href="#files">文件中心</a>
      </nav>
    </div>
  </header>

  <main id="main">
    <section class="container hero" id="home" aria-labelledby="hero-title">
      <div>
        <span class="eyebrow">毅信工业科技 · 专注工业服务</span>

        <h1 id="hero-title">
          让技术沟通更简单<br>
          <span>让项目推进更高效</span>
        </h1>

        <p class="hero-description">
          毅信工业科技有限公司，主营技术咨询、产品设计、
          检测服务、设备与零配件销售。
          从需求沟通开始，为您的业务寻找切实可行的解决思路。
        </p>

        <div class="actions">
          <a class="button" href="#services">了解主营业务</a>
          <a class="button secondary" href="#files">上传 / 下载资料 ↗</a>
        </div>
      </div>

      <aside class="hero-card" aria-label="业务概览">
        <p class="hero-card-label">我们的业务</p>
        <h2>围绕需求，务实协作。</h2>

        <ul class="service-list">
          <li><span>01</span>技术咨询</li>
          <li><span>02</span>产品设计</li>
          <li><span>03</span>检测服务</li>
          <li><span>04</span>设备与零配件销售</li>
        </ul>
      </aside>
    </section>

    <section
      class="container section"
      id="services"
      aria-labelledby="services-title"
    >
      <div class="section-head">
        <h2 id="services-title">主营业务</h2>
        <p>清晰的服务方向，直接的需求对接。</p>
      </div>

      <div class="service-grid">
        <article class="service-card">
          <span class="service-number">01 / 咨询</span>
          <h3>技术咨询</h3>
          <p>
            围绕技术需求、方案思路与设备选型开展沟通，
            梳理问题，明确下一步方向。
          </p>
        </article>

        <article class="service-card">
          <span class="service-number">02 / 设计</span>
          <h3>产品设计</h3>
          <p>
            围绕产品功能与使用场景讨论设计需求，
            推进方案沟通与设计协作。
          </p>
        </article>

        <article class="service-card">
          <span class="service-number">03 / 检测</span>
          <h3>检测服务</h3>
          <p>
            对接产品与项目检测需求。
            具体检测项目、标准及交付内容按需求确认。
          </p>
        </article>

        <article class="service-card">
          <span class="service-number">04 / 供应</span>
          <h3>设备与零配件销售</h3>
          <p>
            对接设备及零配件采购需求，
            根据型号、规格和应用场景沟通供货方案。
          </p>
        </article>
      </div>
    </section>

    <section
      class="container section"
      id="tony"
      aria-labelledby="tony-title"
    >
      <div class="about">
        <div class="profile">
          <!-- 如需使用真人照片，可将这个字母头像替换为图片 -->
          <div class="avatar" aria-hidden="true">T</div>
          <strong>TONY</strong>
          <small>毅信工业科技有限公司</small>
        </div>

        <div>
          <span class="eyebrow">个人介绍</span>
          <h2 id="tony-title">你好，我是 TONY。</h2>

          <!-- 可在此补充真实履历、专业方向和联系方式 -->
          <p>
            欢迎来到毅信工业科技有限公司网站。
            我希望通过这个简洁的窗口，让您更直接地了解我们的业务，
            也让项目资料的交流更方便。
          </p>

          <p>
            无论是技术咨询、产品设计、检测需求，
            还是设备与零配件采购，都可以从一份清晰的需求资料开始。
            重视沟通，务实推进，是我们期待的合作方式。
          </p>

          <div class="tags" aria-label="合作理念">
            <span class="tag">直接沟通</span>
            <span class="tag">务实协作</span>
            <span class="tag">重视需求</span>
          </div>
        </div>
      </div>
    </section>

    <section
      class="container section"
      id="files"
      aria-labelledby="files-title"
    >
      <div class="section-head">
        <h2 id="files-title">文件中心</h2>
        <p>统一的资料入口，让文件交接更清楚。</p>
      </div>

      <div class="files-panel">
        <article class="file-card">
          <div class="file-icon" aria-hidden="true">↑</div>
          <h3>上传资料</h3>
          <p>
            提交需求说明、产品图纸、设备清单或项目附件。
            点击后前往指定的云端文件收集页面。
          </p>

          <a
            class="button"
            id="upload-link"
            aria-disabled="true"
            role="link"
            tabindex="0"
          >上传入口待配置</a>
        </article>

        <article class="file-card">
          <div class="file-icon" aria-hidden="true">↓</div>
          <h3>下载资料</h3>
          <p>
            查看和下载共享文档、产品资料及相关附件。
            点击后前往指定的云端共享文件夹。
          </p>

          <a
            class="button secondary"
            id="download-link"
            aria-disabled="true"
            role="link"
            tabindex="0"
          >下载入口待配置</a>
        </article>
      </div>

      <p class="file-note">
        文件由外部云盘存储。访问可能需要登录或输入提取码，
        支持的文件大小与格式以云盘规则为准。
        未经授权，请勿上传涉密文件或个人敏感信息。
      </p>

      <p
        class="storage-status"
        id="storage-status"
        role="status"
        aria-live="polite"
      ></p>

      <noscript>
        <p class="file-note">
          当前浏览器未启用 JavaScript，文件入口无法自动加载。
        </p>
      </noscript>
    </section>
  </main>

  <footer class="footer">
    <div class="container footer-inner">
      <p>© <span id="year"></span> 毅信工业科技有限公司</p>
      <p>www.vnhcm651.com</p>
    </div>
    <!-- 如部署要求备案，请在此添加真实备案号及对应官方链接 -->
  </footer>

  <script>
    /*
      文件中心配置
      -----------------------------------------------
      1. 在云盘中创建“文件收集”入口，用于客户上传。
      2. 创建单独的只读共享文件夹，用于客户下载。
      3. 将两个真实 HTTPS 链接分别粘贴到下方引号内。
      4. 不要在此填写密码、管理员链接或 API 密钥。

      注意：
      普通分享链接不一定允许上传。
      上传地址应使用云盘提供的文件收集/上传入口。
    */

    const STORAGE = {
      uploadUrl: "",
      downloadUrl: ""
    };

    document.getElementById("year").textContent =
      new Date().getFullYear();

    function isValidHttpsUrl(value) {
      try {
        const url = new URL(value);
        return (
          url.protocol === "https:" &&
          !url.username &&
          !url.password
        );
      } catch {
        return false;
      }
    }

    function configureLink(id, url, label) {
      const link = document.getElementById(id);
      const valid = isValidHttpsUrl(url);

      if (valid) {
        link.href = url;
        link.target = "_blank";
        link.rel = "noopener noreferrer";
        link.removeAttribute("aria-disabled");
        link.removeAttribute("role");
        link.removeAttribute("tabindex");
        link.textContent = label + " ↗";
        link.setAttribute("aria-label", label + "（在新窗口打开）");
      } else {
        function showNotice(event) {
          event.preventDefault();
          document.getElementById("storage-status").textContent =
            "该文件入口尚未开通，请由网站管理员配置有效的云盘地址。";
        }

        link.addEventListener("click", showNotice);
        link.addEventListener("keydown", function (event) {
          if (event.key === "Enter" || event.key === " ") {
            showNotice(event);
          }
        });
      }

      return valid;
    }

    const uploadReady = configureLink(
      "upload-link",
      STORAGE.uploadUrl,
      "前往上传资料"
    );

    const downloadReady = configureLink(
      "download-link",
      STORAGE.downloadUrl,
      "前往下载资料"
    );

    if (!uploadReady || !downloadReady) {
      document.getElementById("storage-status").textContent =
        "文件中心正在准备中，尚未配置的入口暂不可用。";
    }
  </script>
</body>
</html>
