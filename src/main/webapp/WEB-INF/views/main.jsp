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

@font-face {
	font-family: 'Paperlogy-8ExtraBold';
	src:
		url('https://fastly.jsdelivr.net/gh/projectnoonnu/2408-3@1.0/Paperlogy-8ExtraBold.woff2')
		format('woff2');
	font-weight: 400;
	font-style: normal;
}

body {
	font-family: 'Pretendard-Regular';
	margin: 0;
	padding: 0;
	background: linear-gradient(to bottom, #f3f4f6, #e2e8f0);
	color: #333;
	scroll-behavior: smooth;
}

header {
	position: fixed;
	top: 0;
	width: 100%;
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 20px 30px; /* 좌우 패딩을 충분히 설정 */
	transition: background-color 0.3s ease, box-shadow 0.3s ease;
	z-index: 1000;
	background: transparent;
	color: white;
	box-sizing: border-box; /* 패딩 포함 크기 계산 */
	font-size: 1.3em;
	font-family: 'Pretendard-Regular';
}

nav {
	display: flex;
	gap: 15px; /* 네비게이션 링크 간의 간격 추가 */
}

nav a {
	text-decoration: none;
	color: inherit; /* 부모 요소의 글씨 색상 상속 */
	transition: color 0.3s ease;
}

header.scrolled {
	background: white; /* 스크롤 시 배경 변경 */
	color: black; /* 글자 색상 변경 */
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2); /* 스크롤 시 그림자 추가 */
}

nav a:visited, nav a:focus, nav a:active {
	color: inherit; /* 링크 클릭 시에도 색상 유지 */
}


.home {
	position: relative; /* 가상 요소 사용을 위해 설정 */
	background: url('img/home3.jpg') no-repeat center/cover; /* 배경 이미지 */
	background-size: 100% 100%; /* 섹션 크기에 이미지를 맞춤 */
	height: 28vh; /* 섹션 높이를 화면 전체 높이로 설정 */
	display: flex; /* 텍스트를 중앙 정렬하기 위한 플렉스 박스 */
	flex-direction: column; /* 텍스트를 위아래로 정렬 */
	justify-content: center; /* 텍스트를 수직 가운데 정렬 */
	align-items: center; /* 텍스트를 수평 가운데 정렬 */
	color: white; /* 텍스트 색상 변경 */
	padding: 200px 20px;
	font-family: 'Pretendard-Regular';
}

/* 흐릿한 효과를 위한 가상 요소 */
.home::after {
	content: ''; /* 가상 요소 생성 */
	position: absolute; /* 부모 요소 기준으로 배치 */
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: rgba(50, 50, 50, 0.8); /* 어두운 회색 반투명 오버레이 */
	z-index: 1; /* 텍스트 아래에 배치 */
}

.home h1, .home p {
	position: relative; /* 가상 요소 위로 텍스트 표시 */
	z-index: 2; /* 텍스트를 가상 요소 위에 표시 */
}

.home h1 {
	font-size: 3em; /* 제목 크기 */
}

.home p {
	font-size: 1.8em; /* 부제 크기 */
	margin: 10px 0 0;
}

.profile {
	display: flex;
	align-items: center;
	margin-bottom: 40px;
	padding:80px 50px;
}

.profile img {
	border-radius: 50%;
	width: 180px;
	height: 180px;
	object-fit: cover;
	margin-right: 40px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.profile-info {
	max-width: 70%;
}

.profile-info h1 {
	font-size: 2em;
	margin: 0 0 10px;
	color: #4CAF50;
}

.profile-info p {
	font-size: 1.2em;
	line-height: 1.6;
	margin: 0;
}


h2 {
	font-size: 2em;
	margin-bottom: 15px;
	display: inline-block;
	padding-bottom: 5px;
}

ul {
	list-style: none;
	padding: 0;
}

ul li {
	margin: 10px 0;
	font-size: 1.1em;
}

.tech-grid {
	display: grid;
	grid-template-columns: repeat(3, 1fr);
	gap: 20px;
	margin-top: 20px;
}

.tech-card {
	background: #f9f9f9;
	padding: 40px 80px;
	border-radius: 10px;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
	text-align: center;
}

.tech-card h3 {
	margin: 10px 0;
	font-size: 1.2em;
	color: #333;
}

.tech-card img {
	width: 50px;
	height: 50px;
	margin: 10px 0;
}

section {
	scroll-margin-top: 60px; /* 헤더 높이만큼 간격 추가 */
	padding-top: 80px;
	padding-bottom: 80px;
	padding-left: 50px;
	padding-right: 50px;
}

#skills {
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
	background: #D1D0CB;
}

#projects {
	background: #f5f5f4;
}

footer {
	background: #D1D0CB;
	color: white;
	text-align: center;
	padding: 10px 20px;
	bottom: 0;
	width: 100%;
}
</style>
</head>
<body>

	<header id="header">
		<div>yewon's portfolio</div>
		<nav>
			<a href="#home">Home</a> <a href="#skills">Skills</a> <a
				href="#projects">Projects</a> <a href="#contact">Contact</a>
		</nav>
	</header>

	<div class="container">

		<section id="home" class="home">
			<h1>벡엔드 개발자(BE) 김예원입니다!</h1>
			<p>신뢰를 담은 코드로 세상을 연결하는 개발자의 여정을 시작했습니다.</p>
		</section>

		<div class="detail">

			<div class="profile">
				<img src="img/profileImg.jpg" alt="프로필 사진">
				<div class="profile-info">
					<h1>김예원</h1>
					<p>안녕하세요! 저는 백엔드 개발자로서 다양한 프로젝트와 경험을 통해 성장해왔습니다. 항상 새로운 기술을 배우고
						창의적인 솔루션을 제공하는 것을 목표로 합니다. 저의 여정을 함께 보시고 궁금하신 점이 있다면 언제든지 연락주세요!</p>
				</div>
			</div>


			<section id="skills">
				<h2>SKILLS</h2>
				<div class="tech-grid">
					<div class="tech-card">
						<h3>LANGUAGE</h3>
						<img
							src="https://img.icons8.com/color/48/java-coffee-cup-logo--v1.png"
							alt="Java"> <img
							src="https://img.icons8.com/color/48/python--v1.png" alt="Python">
					</div>
					<div class="tech-card">
						<h3>Front-end</h3>
						<img src="https://img.icons8.com/color/48/html-5--v1.png"
							alt="HTML5"> <img
							src="https://img.icons8.com/color/48/css3.png" alt="CSS3">
						<img src="https://img.icons8.com/color/48/javascript--v1.png"
							alt="JavaScript">
					</div>
					<div class="tech-card">
						<h3>IDE</h3>
						<img src="https://img.icons8.com/color/48/eclipse--v1.png"
							alt="Eclipse"> <img
							src="https://img.icons8.com/color/48/visual-studio-code-2019.png"
							alt="VS Code">
					</div>
					<div class="tech-card">
						<h3>Collaboration</h3>
						<img src="https://img.icons8.com/ios-filled/50/github.png"
							alt="GitHub"> <img
							src="https://img.icons8.com/color/48/google-drive--v1.png"
							alt="Google Drive"> <img
							src="https://img.icons8.com/color/48/notion.png" alt="Notion">
					</div>
					<div class="tech-card">
						<h3>Back-end</h3>
						<img src="https://img.icons8.com/color/48/spring-logo.png"
							alt="Spring">
					</div>
					<div class="tech-card">
						<h3>Database</h3>
						<img src="https://img.icons8.com/color/48/mysql-logo.png"
							alt="MySQL"> 
							<img src="https://img.icons8.com/color/48/oracle-logo.png"
							alt="MySQL">
					</div>
				</div>
			</section>

			

			<section id="projects">
				<h2>🖥 프로젝트</h2>
				<ul>
					<li><b>ARTI 프로젝트</b>: AI 기반 아동 미술 심리 분석 및 동화 생성 서비스
						(2024.11.27 ~ 2024.12.19)</li>
					<li>BTB 무역회사 웹사이트 리뉴얼 프로젝트 (2024.10.03 ~ 2024.11.14)</li>
					<li><b>냉장고를 부탁해</b>: 식재료 기반 맞춤형 레시피 추천 및 소셜미디어 서비스 (2024.09.11
						~ 2024.09.25)</li>
				</ul>
			</section>

			<section id="experience">
				<h2>✨ 경험</h2>
				<ul>
					<li>광운대학교 경영학부 졸업 (2019.03 ~ 2024.02)</li>
					<li>SMHRD 2024 K-Digital Training DCX 빅데이터 분석서비스 개발자 과정 수료
						(2024.06 ~ 2024.12)</li>
					<li>제6회 K-Digital Training 해커톤 참가 (2024.08)</li>
					<li>제8회 K-PaaS 아이디어 공모전 참가 (2024.10)</li>
					<li>신한 AI 아이디어톤 참가 (2024.10)</li>
				</ul>
			</section>

			<section id="license">
				<h2>🎖️ 자격증</h2>
				<ul>
					<li><b>정보처리기사</b> (2023.11)</li>
					<li>SQL 개발자 자격증 (<b>SQLD</b>) (2023.12)
					</li>
				</ul>
			</section>

			<section id="award">
				<h2>🏆 수상</h2>
				<ul>
					<li>SMHRD 핵심 프로젝트 <b>최우수상</b> (2024.09.27)
					</li>
					<li>SMHRD 실전 프로젝트 <b>최우수상</b> (2024.12.20)
					</li>
					<li>SMHRD 2024 K-Digital Training DCX 과정 종합 성적 1위 (2024.12.20)</li>
				</ul>
			</section>
			
			<section id="dev-log">
				<h2>📘 DEV's Log</h2><br>
				<a href="https://velog.io/@happycat_139/posts" target="_blank">
					<img
					src="https://img.shields.io/badge/velog-20C997?style=for-the-badge&logo=velog&logoColor=white"
					alt="velog">
				</a>
			</section>



			<section id="contact">
				<h2>📱 연락처</h2><br>
				<a href="mailto:m63477802@gmail.com"> <img
					src="https://img.shields.io/badge/gmail-EA4335?style=for-the-badge&logo=gmail&logoColor=white"
					alt="Gmail">
				</a> <a href="mailto:yewon@naver.com"> <img
					src="https://img.shields.io/badge/naver-03C75A?style=for-the-badge&logo=naver&logoColor=white"
					alt="Naver">
				</a>
			</section>
		</div>
	</div>
	
	<footer> &copy; 2025 예원의 포트폴리오 </footer>

	<script>
    // 스크롤 이벤트 추가
    window.addEventListener('scroll', () => {
        const header = document.getElementById('header');
        if (window.scrollY > 50) {
            header.classList.add('scrolled'); // 스크롤 내리면 클래스 추가
        } else {
            header.classList.remove('scrolled'); // 스크롤 위로 올라가면 클래스 제거
        }
    });
</script>

</body>
</html>