<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="../../../../static/template/resume2/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../../../../static/js/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="../../../../static/template/js4ajax/mAjax.js"></script>

    <%--bootstrap--%>
    <script src="http://how2j.cn/study/js/jquery/2.0.0/jquery.min.js"></script>
    <link href="http://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
    <script src="http://how2j.cn/study/js/bootstrap/3.3.6/bootstrap.min.js"></script>

    <title>个人简历-${basicInfo.name}</title>
</head>

<body>


<aside>
    <ul>
        <li>
            <button type="button" class="btn btn-primary" onclick="myAjax(${user.id},3)">
                <a href="javascript:void(0)" target="_blank">保存</a>
            </button>
        </li>
        <li>
            <button type="button" class="btn btn-primary" onclick="window.location.href='/selectTemplateOnline'">重新选择模板</button>
        </li>
        <li>
            <button id="btn-htmltopdf" type="button" class="btn btn-primary" >导出为PDF</button>
        </li>
        <li>
            <button type="button" class="btn btn-primary" onclick="window.location.href='/main'">返回首页</button>
        </li>
    </ul>
</aside>

<div class="header">
    <div class="header-content">
        <div class="touxiang">
            <img src="${basicInfo.image}" width="180px" height="200px">
        </div>
        <div class="contact">
            <ul>
                <li class="name">${basicInfo.name}</li>
                <li><embed src="../../../../static/template/resume2/img/cellphone.svg" />&nbsp;${basicInfo.tel}</li>
                <li><embed src="../../../../static/template/resume2/img/email.svg" />&nbsp;<a href="mailto:abc@123.com">${basicInfo.email}</a></li>
            </ul>
        </div>
        <div class="brief-info">
            <ul>
                <li><span>性　　别：</span>${basicInfo.gender}</li>
                <li><span>城　　市：</span>${basicInfo.city}</li>
                <li><span>毕业院校：</span>${basicInfo.school}</li>
                <li><span>专　　业：</span>${basicInfo.major}</li>
                <li><span>学　　历：</span>${basicInfo.education}</li>
            </ul>
        </div>
    </div>
</div>
<div class="content">
    <ul id="timeline">
        <li class="biaoti">
            <h1>个人介绍</h1>
            <embed src="../../../../static/template/resume2/img/edu.svg" />
            <div class="separate-line-box"></div>
        </li>
        <li>
            <ul>
                <li>
                    <div class="timeline-content">
                        <p>${introInfo.introduce}</p>
                    </div>
                </li>
                <br><br><br><br><br><br>

            </ul>
        </li>
        <li class="biaoti">
            <h1>教育经历</h1>
            <embed src="../../../../static/template/resume2/img/edu.svg" />
            <div class="separate-line-box"></div>
        </li>
        <li>
            <ul>
                <li>
                    <div class="timeline-content">
                        <p>${expInfo.eduExp}</p>
                    </div>
                </li>
                <br><br><br><br><br><br>

            </ul>
        </li>
        <li class="biaoti">
            <h1>项目经历</h1>
            <embed src="../../../../static/template/resume2/img/job.svg" />
            <div class="separate-line-box"></div>
        </li>
        <li>
            <ul>
                <li>
                    <div class="timeline-content">
                        <p>${expInfo.projectExp}</p>
                    </div>
                </li>
                <br><br><br><br><br><br>

            </ul>
        </li>
        <li class="biaoti">
            <h1>工作期望</h1>
            <embed src="../../../../static/template/resume2/img/jiangli.svg" />
            <div class="separate-line-box"></div>
        </li>
        <li>
            <ul>
                <li>
                    <time datetime="2014/12">期望薪水</time>
                    <div class="timeline-content">
                        <!--
                        <h2>Elliptic Equation</h2>
                        -->
                        <p>${intentInfo.salary}</p>
                    </div>
                </li>
                <li>
                    <time datetime="2010/09">期望工作地</time>
                    <div class="timeline-content">
                        <!--
                        <h2>Praesent nulla</h2>
                        -->
                        <p>${intentInfo.workCity}</p>
                    </div>
                </li>
                <br><br><br><br><br><br>

            </ul>
        </li>

    </ul>
</div>
<div class="footer">
    <div class="info">
    </div>
</div>

<script type="text/javascript" src="../../../../static/js/html2canvas.js"></script>
<script type="text/javascript" src="../../../../static/js/jsPdf.debug.js"></script>
<script type="text/javascript" src="../../../../static/js/main.js" ></script>
</body>
</html>
