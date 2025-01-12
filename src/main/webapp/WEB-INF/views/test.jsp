<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>portfolio</title>
<style>
@font-face {
	font-family: 'Pretendard-Regular';
	src:
		url('https://fastly.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff')
		format('woff');
	font-weight: 500;
	font-style: normal;
}

body {
	margin: 0;
	padding: 0;
	font-family: 'Pretendard-Regular';
	color: #333;
	scroll-behavior: smooth;
}

header {
	position: fixed;
	top: 0;
	width: 100%;
	background: #4CAF50;
	color: white;
	padding: 10px 20px;
	display: flex;
	justify-content: space-between;
	align-items: center;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2);
	z-index: 1000;
}

header nav a {
	color: white;
	text-decoration: none;
	margin: 0 15px;
	font-weight: bold;
	transition: color 0.3s;
}

header nav a:hover {
	color: #81C784;
}

.section {
	padding: 100px 20px;
	margin-top: 60px;
}

.section h2 {
	font-size: 2em;
	color: #4CAF50;
	margin-bottom: 20px;
}

.home {
	background: linear-gradient(to bottom, #f3f4f6, #e2e8f0);
	text-align: center;
	padding: 200px 20px;
}

.home h1 {
	font-size: 3em;
	color: #333;
}

.home p {
	font-size: 1.5em;
	color: #666;
}

.skills-grid {
	display: grid;
	grid-template-columns: repeat(3, 1fr);
	gap: 20px;
}

.skills-card {
	background: #f9f9f9;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
	text-align: center;
}

.skills-card img {
	width: 50px;
	height: 50px;
	margin-bottom: 10px;
}

.skills-card h3 {
	font-size: 1.2em;
	color: #333;
}

.contact {
	background: #f3f4f6;
	text-align: center;
	padding: 50px 20px;
}

.contact a {
	text-decoration: none;
	font-size: 1.5em;
	color: #4CAF50;
	margin: 0 15px;
}

footer {
	background: #4CAF50;
	color: white;
	text-align: center;
	padding: 10px 20px;
	position: fixed;
	bottom: 0;
	width: 100%;
}
</style>
</head>
<body>

	<header>
		<div>포트폴리오</div>
		<nav>
			<a href="#home">Home</a> <a href="#skills">Skills</a> <a
				href="#projects">Projects</a> <a href="#contact">Contact</a>
		</nav>
	</header>

	<section id="home" class="home">
		<h1>Welcome to My Portfolio</h1>
		<p>Discover my skills, projects, and experiences</p>
	</section>

	<section id="skills" class="section">
		<h2>Skills</h2>
		<div class="skills-grid">
			<div class="skills-card">
				<img
					src="https://img.icons8.com/color/48/java-coffee-cup-logo--v1.png"
					alt="Java">
				<h3>Java</h3>
			</div>
			<div class="skills-card">
				<img src="https://img.icons8.com/color/48/python--v1.png"
					alt="Python">
				<h3>Python</h3>
			</div>
			<div class="skills-card">
				<img src="https://img.icons8.com/color/48/html-5--v1.png"
					alt="HTML5">
				<h3>HTML5</h3>
			</div>
			<div class="skills-card">
				<img src="https://img.icons8.com/color/48/css3.png" alt="CSS3">
				<h3>CSS3</h3>
			</div>
			<div class="skills-card">
				<img src="https://img.icons8.com/color/48/javascript--v1.png"
					alt="JavaScript">
				<h3>JavaScript</h3>
			</div>
			<div class="skills-card">
				<img src="https://img.icons8.com/color/48/spring-logo.png"
					alt="Spring">
				<h3>Spring</h3>
			</div>
		</div>
	</section>

	<section id="projects" class="section">
		<h2>Projects</h2>
		<ul>
			<li><b>ARTI 프로젝트</b>:AI 기반 아동 미술 심리 분석 및 동화 생성 서비스</li>
			<li>BTB 무역회사 웹사이트 리뉴얼 프로젝트</li>
			<li><b>냉장고를 부탁해</b>:식재료 기반 맞춤형 레시피 추천 및 소셜미디어 서비스</li>
		</ul>
	</section>

	<section id="contact" class="contact">
		<h2>Contact</h2>
		<a href="mailto:m63477802@gmail.com">Email</a> <a
			href="https://github.com">GitHub</a>
	</section>

	<footer> &copy; 2025 예원의 포트폴리오! </footer>

</body>
</html>
