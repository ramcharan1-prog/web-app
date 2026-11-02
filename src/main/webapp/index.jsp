<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Sai Gutha | Developer Portfolio</title>

    <style>

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            scroll-behavior: smooth;
        }

        body {
            font-family: "Segoe UI", Arial, sans-serif;
            background: #080b14;
            color: #ffffff;
            line-height: 1.6;
        }

        /* ================= NAVBAR ================= */

        header {
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 1000;
            background: rgba(8, 11, 20, 0.90);
            backdrop-filter: blur(15px);
            border-bottom: 1px solid rgba(255,255,255,0.08);
        }

        .navbar {
            max-width: 1200px;
            margin: auto;
            height: 75px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 0 25px;
        }

        .logo {
            font-size: 26px;
            font-weight: bold;
            color: #00e5ff;
        }

        .logo span {
            color: #ffffff;
        }

        .nav-links {
            display: flex;
            gap: 30px;
            list-style: none;
        }

        .nav-links a {
            color: #ffffff;
            text-decoration: none;
            font-size: 15px;
            transition: 0.3s;
        }

        .nav-links a:hover {
            color: #00e5ff;
        }


        /* ================= HERO ================= */

        .hero {
            min-height: 100vh;
            display: flex;
            align-items: center;
            position: relative;
            overflow: hidden;
            padding: 100px 10%;
        }

        .hero::before {
            content: "";
            position: absolute;
            width: 500px;
            height: 500px;
            background: #00e5ff;
            filter: blur(180px);
            opacity: 0.15;
            top: -100px;
            right: -100px;
        }

        .hero-content {
            max-width: 750px;
            position: relative;
            z-index: 2;
        }

        .hello {
            color: #00e5ff;
            font-size: 18px;
            margin-bottom: 10px;
        }

        .hero h1 {
            font-size: clamp(45px, 7vw, 80px);
            line-height: 1.1;
            margin-bottom: 15px;
        }

        .hero h1 span {
            color: #00e5ff;
        }

        .hero h2 {
            font-size: 28px;
            color: #b7becd;
            margin-bottom: 20px;
        }

        .hero p {
            color: #9da5b5;
            max-width: 650px;
            font-size: 17px;
            margin-bottom: 30px;
        }


        /* ================= BUTTONS ================= */

        .buttons {
            display: flex;
            gap: 15px;
            flex-wrap: wrap;
        }

        .btn {
            padding: 13px 25px;
            border-radius: 8px;
            text-decoration: none;
            font-weight: bold;
            transition: 0.3s;
        }

        .primary {
            background: #00e5ff;
            color: #05070d;
        }

        .primary:hover {
            transform: translateY(-3px);
            box-shadow: 0 10px 30px rgba(0,229,255,0.25);
        }

        .secondary {
            border: 1px solid #00e5ff;
            color: #00e5ff;
        }

        .secondary:hover {
            background: #00e5ff;
            color: #05070d;
        }


        /* ================= SOCIAL ================= */

        .socials {
            margin-top: 35px;
            display: flex;
            gap: 15px;
        }

        .socials a {
            width: 45px;
            height: 45px;
            border: 1px solid #263041;
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            color: white;
            text-decoration: none;
            transition: 0.3s;
        }

        .socials a:hover {
            border-color: #00e5ff;
            color: #00e5ff;
            transform: translateY(-4px);
        }


        /* ================= SECTIONS ================= */

        section:not(.hero) {
            padding: 100px 10%;
        }

        .section-title {
            text-align: center;
            margin-bottom: 60px;
        }

        .section-title h2 {
            font-size: 40px;
        }

        .section-title span {
            color: #00e5ff;
        }

        .section-title p {
            color: #8f98aa;
            margin-top: 10px;
        }


        /* ================= ABOUT ================= */

        .about-container {
            max-width: 1000px;
            margin: auto;
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 50px;
            align-items: center;
        }

        .about-text p {
            color: #aab2c0;
            margin-bottom: 15px;
        }

        .about-info {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 15px;
        }

        .info-card {
            padding: 25px;
            background: #101521;
            border: 1px solid #202a3b;
            border-radius: 12px;
            transition: 0.3s;
        }

        .info-card:hover {
            border-color: #00e5ff;
            transform: translateY(-5px);
        }

        .info-card h3 {
            color: #00e5ff;
            margin-bottom: 5px;
        }

        .info-card p {
            color: #8f98aa;
        }


        /* ================= SKILLS ================= */

        .skills-container {
            max-width: 1000px;
            margin: auto;
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 25px;
        }

        .skill-box {
            background: #101521;
            border: 1px solid #202a3b;
            padding: 25px;
            border-radius: 12px;
        }

        .skill-header {
            display: flex;
            justify-content: space-between;
            margin-bottom: 10px;
        }

        .skill-header span:last-child {
            color: #00e5ff;
        }

        .progress {
            height: 8px;
            background: #202838;
            border-radius: 10px;
            overflow: hidden;
        }

        .progress-bar {
            height: 100%;
            background: #00e5ff;
            border-radius: 10px;
        }


        /* ================= PROJECTS ================= */

        .projects {
            max-width: 1100px;
            margin: auto;
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 25px;
        }

        .project-card {
            background: #101521;
            border: 1px solid #202a3b;
            border-radius: 15px;
            overflow: hidden;
            transition: 0.4s;
        }

        .project-card:hover {
            transform: translateY(-10px);
            border-color: #00e5ff;
            box-shadow: 0 15px 40px rgba(0,229,255,0.08);
        }

        .project-image {
            height: 180px;
            background: linear-gradient(135deg, #00e5ff, #3557ff);
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 28px;
            font-weight: bold;
            color: #ffffff;
        }

        .project-content {
            padding: 25px;
        }

        .project-content h3 {
            margin-bottom: 10px;
        }

        .project-content p {
            color: #919bad;
            font-size: 14px;
            margin-bottom: 15px;
        }

        .tags {
            display: flex;
            flex-wrap: wrap;
            gap: 7px;
            margin-bottom: 20px;
        }

        .tag {
            background: #1a2434;
            color: #00e5ff;
            padding: 5px 10px;
            border-radius: 5px;
            font-size: 12px;
        }

        .project-link {
            color: #00e5ff;
            text-decoration: none;
        }


        /* ================= EDUCATION ================= */

        .timeline {
            max-width: 850px;
            margin: auto;
            border-left: 2px solid #00e5ff;
            padding-left: 30px;
        }

        .timeline-item {
            position: relative;
            margin-bottom: 40px;
            background: #101521;
            border: 1px solid #202a3b;
            padding: 25px;
            border-radius: 12px;
        }

        .timeline-item::before {
            content: "";
            position: absolute;
            width: 14px;
            height: 14px;
            background: #00e5ff;
            border-radius: 50%;
            left: -38px;
            top: 30px;
        }

        .timeline-item h3 {
            color: #00e5ff;
        }

        .timeline-item span {
            color: #737e91;
            font-size: 14px;
        }

        .timeline-item p {
            color: #9da5b5;
            margin-top: 10px;
        }


        /* ================= CONTACT ================= */

        .contact-container {
            max-width: 900px;
            margin: auto;
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 40px;
        }

        .contact-info h3 {
            font-size: 28px;
            margin-bottom: 15px;
        }

        .contact-info p {
            color: #919bad;
            margin-bottom: 20px;
        }

        .contact-details {
            margin-top: 20px;
        }

        .contact-details div {
            margin-bottom: 15px;
            color: #b8c0ce;
        }

        .contact-details span {
            color: #00e5ff;
        }

        form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        input,
        textarea {
            width: 100%;
            padding: 14px;
            border: 1px solid #283346;
            background: #101521;
            color: white;
            border-radius: 8px;
            outline: none;
        }

        input:focus,
        textarea:focus {
            border-color: #00e5ff;
        }

        textarea {
            height: 150px;
            resize: none;
        }

        button {
            padding: 14px;
            background: #00e5ff;
            border: none;
            border-radius: 8px;
            font-weight: bold;
            cursor: pointer;
            transition: 0.3s;
        }

        button:hover {
            transform: translateY(-3px);
        }


        /* ================= FOOTER ================= */

        footer {
            text-align: center;
            padding: 30px;
            border-top: 1px solid #202a3b;
            color: #737e91;
        }

        footer span {
            color: #00e5ff;
        }


        /* ================= RESPONSIVE ================= */

        @media (max-width: 900px) {

            .nav-links {
                display: none;
            }

            .about-container,
            .contact-container {
                grid-template-columns: 1fr;
            }

            .projects {
                grid-template-columns: 1fr 1fr;
            }

            .skills-container {
                grid-template-columns: 1fr;
            }
        }


        @media (max-width: 600px) {

            .hero {
                padding: 100px 7%;
            }

            section:not(.hero) {
                padding: 70px 7%;
            }

            .hero h1 {
                font-size: 45px;
            }

            .hero h2 {
                font-size: 22px;
            }

            .projects {
                grid-template-columns: 1fr;
            }

            .about-info {
                grid-template-columns: 1fr;
            }
        }

    </style>

</head>


<body>


    <!-- ================= NAVBAR ================= -->

    <header>

        <div class="navbar">

            <div class="logo">
                Sai<span>.</span>
            </div>

            <ul class="nav-links">

                <li>
                    <a href="#home">Home</a>
                </li>

                <li>
                    <a href="#about">About</a>
                </li>

                <li>
                    <a href="#skills">Skills</a>
                </li>

                <li>
                    <a href="#projects">Projects</a>
                </li>

                <li>
                    <a href="#education">Education</a>
                </li>

                <li>
                    <a href="#contact">Contact</a>
                </li>

            </ul>

        </div>

    </header>


    <!-- ================= HERO ================= -->

    <section class="hero" id="home">

        <div class="hero-content">

            <div class="hello">
                Hello, I'm
            </div>

            <h1>
                Sai <span>Gutha</span>
            </h1>

            <h2>
                B.Tech Student and Full Stack Developer
            </h2>

            <p>
                I build modern web applications, AI-powered solutions,
                and software projects. I enjoy solving problems,
                learning new technologies, and turning ideas into
                real-world applications.
            </p>

            <div class="buttons">

                <a href="#projects" class="btn primary">
                    View Projects
                </a>

                <a href="#contact" class="btn secondary">
                    Contact Me
                </a>

            </div>


            <div class="socials">

                <a href="#" title="GitHub">
                    GH
                </a>

                <a href="#" title="LinkedIn">
                    IN
                </a>

                <a href="#" title="Twitter">
                    TW
                </a>

                <a href="#" title="Email">
                    @
                </a>

            </div>

        </div>

    </section>


    <!-- ================= ABOUT ================= -->

    <section id="about">

        <div class="section-title">

            <h2>
                About <span>Me</span>
            </h2>

            <p>
                A little bit about myself
            </p>

        </div>


        <div class="about-container">

            <div class="about-text">

                <p>
                    I am a B.Tech student passionate about software
                    development, artificial intelligence, and modern
                    web technologies.
                </p>

                <p>
                    I enjoy developing projects that solve real-world
                    problems. My interests include full-stack development,
                    machine learning, data structures and algorithms.
                </p>

                <p>
                    I am continuously improving my programming skills
                    and exploring new technologies.
                </p>

            </div>


            <div class="about-info">

                <div class="info-card">

                    <h3>
                        Education
                    </h3>

                    <p>
                        B.Tech
                    </p>

                </div>


                <div class="info-card">

                    <h3>
                        Focus
                    </h3>

                    <p>
                        Software Development
                    </p>

                </div>


                <div class="info-card">

                    <h3>
                        Interests
                    </h3>

                    <p>
                        AI and Web Development
                    </p>

                </div>


                <div class="info-card">

                    <h3>
                        Goal
                    </h3>

                    <p>
                        Software Engineer
                    </p>

                </div>

            </div>

        </div>

    </section>


    <!-- ================= SKILLS ================= -->

    <section id="skills">

        <div class="section-title">

            <h2>
                My <span>Skills</span>
            </h2>

            <p>
                Technologies I work with
            </p>

        </div>


        <div class="skills-container">


            <div class="skill-box">

                <div class="skill-header">

                    <span>
                        Java
                    </span>

                    <span>
                        90%
                    </span>

                </div>

                <div class="progress">

                    <div
                        class="progress-bar"
                        style="width:90%">
                    </div>

                </div>

            </div>


            <div class="skill-box">

                <div class="skill-header">

                    <span>
                        Python
                    </span>

                    <span>
                        85%
                    </span>

                </div>

                <div class="progress">

                    <div
                        class="progress-bar"
                        style="width:85%">
                    </div>

                </div>

            </div>


            <div class="skill-box">

                <div class="skill-header">

                    <span>
                        JavaScript
                    </span>

                    <span>
                        80%
                    </span>

                </div>

                <div class="progress">

                    <div
                        class="progress-bar"
                        style="width:80%">
                    </div>

                </div>

            </div>


            <div class="skill-box">

                <div class="skill-header">

                    <span>
                        React
                    </span>

                    <span>
                        80%
                    </span>

                </div>

                <div class="progress">

                    <div
                        class="progress-bar"
                        style="width:80%">
                    </div>

                </div>

            </div>


            <div class="skill-box">

                <div class="skill-header">

                    <span>
                        Node.js
                    </span>

                    <span>
                        75%
                    </span>

                </div>

                <div class="progress">

                    <div
                        class="progress-bar"
                        style="width:75%">
                    </div>

                </div>

            </div>


            <div class="skill-box">

                <div class="skill-header">

                    <span>
                        MongoDB
                    </span>

                    <span>
                        75%
                    </span>

                </div>

                <div class="progress">

                    <div
                        class="progress-bar"
                        style="width:75%">
                    </div>

                </div>

            </div>

        </div>

    </section>


    <!-- ================= PROJECTS ================= -->

    <section id="projects">

        <div class="section-title">

            <h2>
                Featured <span>Projects</span>
            </h2>

            <p>
                Some of the projects I have worked on
            </p>

        </div>


        <div class="projects">


            <!-- Project 1 -->

            <div class="project-card">

                <div class="project-image">
                    MEDICONNECT
                </div>

                <div class="project-content">

                    <h3>
                        MediConnect
                    </h3>

                    <p>
                        A healthcare platform for doctor appointments,
                        online consultations, prescriptions and
                        pharmacy orders.
                    </p>

                    <div class="tags">

                        <span class="tag">
                            React
                        </span>

                        <span class="tag">
                            Node.js
                        </span>

                        <span class="tag">
                            MongoDB
                        </span>

                        <span class="tag">
                            Express
                        </span>

                    </div>

                    <a href="#" class="project-link">
                        View Project
                    </a>

                </div>

            </div>


            <!-- Project 2 -->

            <div class="project-card">

                <div class="project-image">
                    BEAUTIFY AI
                </div>

                <div class="project-content">

                    <h3>
                        BeautifyAI
                    </h3>

                    <p>
                        An AI-powered facial image beautification
                        application designed to enhance images while
                        preserving identity.
                    </p>

                    <div class="tags">

                        <span class="tag">
                            Python
                        </span>

                        <span class="tag">
                            AI
                        </span>

                        <span class="tag">
                            FastAPI
                        </span>

                        <span class="tag">
                            React
                        </span>

                    </div>

                    <a href="#" class="project-link">
                        View Project
                    </a>

                </div>

            </div>


            <!-- Project 3 -->

            <div class="project-card">

                <div class="project-image">
                    JAVA CALCULATOR
                </div>

                <div class="project-content">

                    <h3>
                        Java Calculator
                    </h3>

                    <p>
                        A calculator application developed in Java
                        supporting arithmetic operations with
                        input validation.
                    </p>

                    <div class="tags">

                        <span class="tag">
                            Java
                        </span>

                        <span class="tag">
                            OOP
                        </span>

                        <span class="tag">
                            GUI
                        </span>

                    </div>

                    <a href="#" class="project-link">
                        View Project
                    </a>

                </div>

            </div>

        </div>

    </section>


    <!-- ================= EDUCATION ================= -->

    <section id="education">

        <div class="section-title">

            <h2>
                My <span>Education</span>
            </h2>

            <p>
                My academic journey
            </p>

        </div>


        <div class="timeline">


            <div class="timeline-item">

                <h3>
                    Bachelor of Technology
                </h3>

                <span>
                    2025 - Present
                </span>

                <p>
                    Currently pursuing B.Tech with a focus on
                    computer science, programming, algorithms,
                    software development and emerging technologies.
                </p>

            </div>


            <div class="timeline-item">

                <h3>
                    Intermediate / Higher Secondary
                </h3>

                <span>
                    Completed
                </span>

                <p>
                    Studied mathematics, physics and computer-related
                    subjects while developing an interest in programming.
                </p>

            </div>


            <div class="timeline-item">

                <h3>
                    Secondary Education
                </h3>

                <span>
                    Completed
                </span>

                <p>
                    Completed foundational education and developed
                    an interest in technology and problem solving.
                </p>

            </div>

        </div>

    </section>


    <!-- ================= CONTACT ================= -->

    <section id="contact">

        <div class="section-title">

            <h2>
                Contact <span>Me</span>
            </h2>

            <p>
                Let's build something together
            </p>

        </div>


        <div class="contact-container">


            <div class="contact-info">

                <h3>
                    Let's Talk
                </h3>

                <p>
                    Have a project idea, collaboration opportunity,
                    or just want to say hello? Feel free to contact me.
                </p>


                <div class="contact-details">

                    <div>
                        <span>
                            Email:
                        </span>

                        your-email@example.com
                    </div>


                    <div>
                        <span>
                            Location:
                        </span>

                        India
                    </div>


                    <div>
                        <span>
                            Role:
                        </span>

                        Student / Developer
                    </div>

                </div>

            </div>


            <form onsubmit="sendMessage(event)">

                <input
                    type="text"
                    placeholder="Your Name"
                    required
                >

                <input
                    type="email"
                    placeholder="Your Email"
                    required
                >

                <input
                    type="text"
                    placeholder="Subject"
                    required
                >

                <textarea
                    placeholder="Your Message"
                    required
                ></textarea>

                <button type="submit">
                    Send Message
                </button>

            </form>

        </div>

    </section>


    <!-- ================= FOOTER ================= -->

    <footer>

        <p>
            Copyright 2026
            <span>
                Sai Gutha
            </span>.
            All Rights Reserved.
        </p>

    </footer>


    <!-- ================= JAVASCRIPT ================= -->

    <script>

        function sendMessage(event) {

            event.preventDefault();

            alert(
                "Thank you for contacting me! " +
                "I will get back to you soon."
            );

        }

    </script>


</body>

</html>