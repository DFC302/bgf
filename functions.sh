#!/bin/bash

function list() {
    echo -e "--xss\t\t--redirect\t--wordpress" 
    echo -e "--potential\t--aws-keys\t--base-64"
    echo -e "--cors\t\t--debug-pages\t--firebase"
    echo -e "--fw\t\t--go-functions\t--http-auth"
    echo -e "--ip\t\t--json-sec\t--meg-headers"
    echo -e "--php-curl\t--php-errors\t--php-serialized"
    echo -e "--php-sinks\t--php-sources\t--s3-buckets"
    echo -e "--sec\t\t--servers\t--strings"
    echo -e "--takeovers\t--upload-fields\t--urls"
    echo -e "--no-protocol\t"
}

function helpmenu() {
    echo "bgf - A wrapper around grep to avoid typing common patterns."
    echo "Version: 1.0.0"
    echo ""
    echo "Usage: bgf --[options]"
    echo ""
    echo -e "--help\tDisplays this help menu and exit."
    echo -e "--list\tList all available options to grep for."
}

function xss() {
    grep --color -HanrE $FILE \
	-e callback= \
    -e jsonp= \
    -e api_key= \
    -e api= \
    -e password= \
    -e email= \
    -e emailto= \
    -e token= \
    -e username= \
    -e csrf_token= \
    -e unsubscribe_token= \
    -e p= \
    -e q= \
    -e query= \
    -e search= \
    -e id= \
    -e item= \
    -e page_id=
}

function redirect() {
    grep --color -HanE $FILE \
	-e url= \
	-e from_url= \
	-e load_url= \
	-e file_url= \
	-e page_url= \
	-e file_name= \
	-e page= \
	-e folder= \
	-e folder_url= \
	-e login_url= \
 	-e img_url= \
    -e return_url= \
    -e return_to= \
    -e next= \
    -e redirect= \
    -e redirect_to= \
    -e logout= \
    -e checkout= \
    -e checkout_url= \
    -e goto= \
    -e next_page= \
    -e file= \
    -e load_file=
}

function wordpress() {
    grep --color -HanE $FILE \
	-e index.php \
	-e license.txt \
	-e readme.html \
	-e wp-activate.php \
	-e wp-admin \
	-e wp-app.php \
	-e wp-blog-header.php \
	-e wp-comments-post.php \
	-e wp-config-sample.php \
	-e wp-content \
	-e wp-cron.php \
	-e wp-links-opml.php \
	-e wp-load.php \
	-e wp-login.php \
	-e wp-mail.php \
	-e wp-pass.php \
	-e wp-register.php \
	-e wp-settings.php \
	-e wp-signup.php \
	-e wp-trackback.php \
	-e xmlrpc.php
}

function potential() {
    grep --color -HanE $FILE \
	-e callback= \
    -e jsonp= \
    -e api_key= \
    -e api= \
    -e password= \
    -e email= \
    -e emailto= \
    -e token= \
    -e username= \
    -e csrf_token= \
    -e unsubscribe_token= \
    -e p= \
    -e q= \
    -e query= \
    -e search= \
    -e id= \
    -e item= \
    -e page_id= \
    -e secret= \
    -e url= \
    -e from_url= \
    -e load_url= \
    -e file_url= \
    -e page_url= \
    -e file_name= \
    -e page= \
    -e folder= \
    -e folder_urllogin_url= \
    -e img_url= \
    -e return_url= \
    -e return_to= \
    -e next= \
    -e redirect= \
    -e redirect_to= \
    -e logout= \
    -e checkout= \
    -e checkout_url= \
    -e goto= \
    -e next_page= \
    -e file= \
    -e load_file= \
    -e cmd= \
    -e ip= \
    -e ping= \
    -e lang= \
    -e edit= \
    -e LoginId= \
    -e size= \
    -e signature= \
 	-e passinfo=
}

function aws-keys() {
    grep -HanE $FILE \
	-e'[^A-Z0-9]|^)(AKIA|A3T|AGPA|AIDA|AROA|AIPA|ANPA|ANVA|ASIA)[A-Z0-9]{12,}'
}

function base64() {
    grep -HnoE $FILE \
	-e '[A-Za-z0-9+/]{4}*([A-Za-z0-9+/]{4}|[A-Za-z0-9+/]{3}=|[A-Za-z0-9+/]{2}==)' \
	-e '[^A-Za-z0-9+/]|^)(eyJ|YTo|Tzo|PD[89]|aHR0cHM6L|aHR0cDo|rO0)[%a-zA-Z0-9+/]+={0,2}'
}

function cors() {
    grep -HniE $FILE \
	-e "Access-Control-Allow"
}

function debug_pages(){
    grep -HnaiE $FILE \
	-e "Application-Trace|Routing Error|DEBUG\"? ?[=:] ?True|Caused by:|stack trace:|Microsoft .NET Framework|Traceback|[0-9]:in \'|#!/us|WebApplicationException|java\\.lang\\.|phpinfo|swaggerUi|on line [0-9]|SQLSTATE"
}

function firebase() {
	grep -Hni $FILE \
	-e "firebaseio.com"
}

function fw() {
	grep -HniE $FILE \
	-e "django" \
    -e "laravel" \
    -e "symfony" \
    -e "graphite" \
    -e "grafana" \
    -e "X-Drupal-Cache" \
    -e "struts" \
    -e "code ?igniter" \
    -e "cake ?php" \
    -e "grails" \
    -e "elastic ?search" \
    -e "kibana" \
    -e "log ?stash" \
    -e "tomcat" \
    -e "jenkins" \
    -e "hudson" \
    -e "com.atlassian.jira" \
    -e "Apache Subversion" \
    -e "Chef Server" \
    -e "RabbitMQ Management" \
    -e "Mongo" \
    -e "Travis CI - Enterprise" \
    -e "BMC Remedy" \
    -e "artifactory"
}

function go-functions() {
    grep -HniE $FILE \
    -e "func [a-z0-9_]+\\("
}

function http-auth() {
    grep -hioaE $FILE \
    -e "[a-z0-9_/\\.:-]+@[a-z0-9-]+\\.[a-z0-9.-]+"
}

function ip() {
    grep -HnroE $FILE \
    -e "([^.]|^)([0-9]{1,2}|1[0-9]{2}|2[0-4][0-9]|25[0-5]).([0-9]{1,2}|1[0-9]{2}|2[0-4][0-9]|25[0-5]).([0-9]{1,2}|1[0-9]{2}|2[0-4][0-9]|25[0-5]).([0-9]{1,2}|1[0-9]{2}|2[0-4][0-9]|25[0-5])([^.]|$)"
    #-e "(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])"
}

function json-sec() {
    grep -harioE $FILE \
    -e "(\\\\?\"|&quot;|%22)[a-z0-9_-]*(api[_-]?key|S3|aws_|secret|passw|auth)[a-z0-9_-]*(\\\\?\"|&quot;|%22): ?(\\\\?\"|&quot;|%22)[^\"&]+(\\\\?\"|&quot;|%22)"
}

function meg-headers() {
    grep -hroiE $FILE \
    -e "^\u003c [a-z0-9_\\-]+: .*"
}

function php-curl() {
    grep -HnrE $FILE \
    -e "CURLOPT_(HTTPHEADER|HEADER|COOKIE|RANGE|REFERER|USERAGENT|PROXYHEADER)"
}

function php-errors() {
    grep -HnriE $FILE \
    -e "php warning" \
    -e "php error" \
    -e "fatal error" \
    -e "uncaught exception" \
    -e "include_path" \
    -e "undefined index" \
    -e "undefined variable" \
    -e "\\?php" \
    -e "<\\?[^x]" \
    -e "stack trace\\:" \
    -e "expects parameter [0-9]*" \
    -e "Debug Trace"
}

function php-serialized() {
    grep -HnrE $FILE \
    -e "a:[0-9]+:{" \
    -e "O:[0-9]+:\"" \
    -e "s:[0-9]+:\""
}

function php-sinks() {
    grep -HnriE $FILE \
    -e "[^a-z0-9_](system|exec|popen|pcntl_exec|eval|create_function|unserialize|file_exists|md5_file|filemtime|filesize|assert) ?\\("
}

function php-sources() {
    grep -HnrE $FILE \
    -e "\\$_(POST|GET|COOKIE|REQUEST|SERVER|FILES)" \
    -e "php://(input|stdin)"
}

function s3-buckets() {
    grep -hrioaE $FILE \
    -e "[a-z0-9.-]+\\.s3\\.amazonaws\\.com" \
    -e "[a-z0-9.-]+\\.s3-[a-z0-9-]\\.amazonaws\\.com" \
    -e "[a-z0-9.-]+\\.s3-website[.-](eu|ap|us|ca|sa|cn)" \
    -e "//s3\\.amazonaws\\.com/[a-z0-9._-]+" \
    -e "//s3-[a-z0-9-]+\\.amazonaws\\.com/[a-z0-9._-]+"
}

function sec() {
    grep -HanriE $FILE \
    -e "(aws_access|aws_secret|api[_-]?key|ListBucketResult|S3_ACCESS_KEY|Authorization:|RSA PRIVATE|Index of|aws_|secret|ssh-rsa AA)"
}

function servers() {
    grep -hri $FILE \
    -e "server: "
}

function strings() {
    grep -hroiaE $FILE \
    -e "\"[^\"]+\"" \
    -e "'[^']+'"
}

function takeovers() {
    grep -HnriE $FILE \
    -e "There is no app configured at that hostname" \
    -e "NoSuchBucket" \
    -e "No Such Account" \
    -e "You're Almost There" \
    -e "a GitHub Pages site here" \
    -e "There's nothing here" \
    -e "project not found" \
    -e "Your CNAME settings" \
    -e "InvalidBucketName" \
    -e "PermanentRedirect" \
    -e "The specified bucket does not exist" \
    -e "Repository not found" \
    -e "Sorry, We Couldn't Find That Page" \
    -e "The feed has not been found." \
    -e "The thing you were looking for is no longer here, or never was" \
    -e "Please renew your subscription" \
    -e "There isn't a Github Pages site here." \
    -e "We could not find what you're looking for." \
    -e "No settings were found for this company:" \
    -e "No such app" \
    -e "is not a registered InCloud YouTrack" \
    -e "Unrecognized domain" \
    -e "project not found" \
    -e "This UserVoice subdomain is currently available!" \
    -e "Do you want to register" \
    -e "Help Center Closed"
}

function upload-fields() {
    grep -HnriE $FILE \
    -e "\u003cinput[^\u003e]+type=[\"']?file[\"']?"
}

function urls() {
    grep -oriahE $FILE \
    -e "https?://[^\"\\'> ]+"
}

function no-protocol() {
    grep -iEo $FILE \
    -e "[^https://|http://].*"
}

function wordlist() {
    grep -iEo $FILE \
    -e "[^https://].+[^-\.@a-z.com]"
}