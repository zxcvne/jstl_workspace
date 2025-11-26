Dynamic Web Project 실행 순서

Dynamic Web Project 생성

next -> next -> Generate web.xml deplyment descriptor 체크

## explorer 변경
window -> show view -> other -> package Explorer

src > main > 
java : controller service dao DB
webapp : view 화면 html css js image

webapp > WEB-INF > lib : 외부 라이브러리 모음 폴더

tomcat => 서버 
// tomcat : jdk 버전을 맞춰줘야 함

## 이크립스 설정
- windows > Preferences
jdk 설정 변경
encoding 설정 변경
1.General 
Java Class File 
Text
Wordl Document
default encoding => utf-8

2. Web
CSS, HTML ,JSP
Encoding : utf-8

Web
Web Browser => Chrome

server > Runtime Environments > add > tomcat

## 프로젝트 설정 

Java Build Path
Java Compiler
Project Facets // Dynamic Web Module / Java -> Runtimes -> tomcat 체크

## 서버에 올리기
Server -> add

수업 port : 8089

내 프로젝트에 서버 올리기 => 서버설정

localhost:8089/ => webapp > index.jsp
