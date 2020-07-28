<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>채팅방</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
   rel="stylesheet">
<link rel="stylesheet" type="text/css"
   href="/resources/css/chatroom.css">

<script>
   $(function() {
      var scrolled = false;
      var userenter = true;
      var viewed = 0;
      $(".input-area").empty();


      var ws = new WebSocket("wss://eat-together.net/chat/chatroom")
      //var ws = new WebSocket("ws://192.168.0.8/chat/chatroom");
      
      this.send = function (message, callback) {
          this.waitForConnection(function () {
              ws.send(message);
              if (typeof callback !== 'undefined') {
                callback();
              }
          }, 1000);
      };
      this.waitForConnection = function (callback, interval) {
          if (ws.readyState === 1) {
              callback();
          } else {
              var that = this;
              // optional: implement backoff for interval here
              setTimeout(function () {
                  that.waitForConnection(callback, interval);
              }, interval);
          }
      };

      ws.onmessage = function(e) {
         var some = e.data.split(":");
         if (some[0] == "z8qTA0JCIruhIhmCAQyHRBpIqUKjS3VBT2oJndv61od6") {
            var line = $("<div>");
            line.attr("class", "enterdMsg");
            line.append(some[1] + " 님이 입장하셨습니다");
            $(".message-area").append(line);

            if ($("li").children("#" + some[1]).text() == "") {
               var useradd = $("<li>");
               useradd.attr("id" ,some[1]);
               useradd.attr("class" , "exist");
               useradd.append("<div class=thum><img src=//"+some[2]+">");
               useradd.append("<div id="+some[1]+" class=exist>"+some[1]);
               var btns = $("<div class=chatBtns>");
               if(${writer == loginInfo.nickname }){
                  btns.append("<div id=kick>강퇴</div>");
               }
               btns.append("<div id=postNote>쪽지</div>");
               useradd.append(btns);

               $(".memNow").append(useradd);
            } else {
               $("#" + some[1]+">.thum>img").attr("src" ,some[2]);
               $("#" + some[1]).attr("class", "exist");
            }
            if (userenter) {
               userenter = false;
               $('.message-area').scrollTop(viewed-10);
            }
            if (scrolled) {
               $('.message-area').scrollTop(
                     $('.message-area')[0].scrollHeight);
            }
         } else if (some[0] == "qCPxXT9PAati6uDl2lecy4Ufjbnf6ExYsrN7iZA6dA4e4X") {
            $("#" + some[1]).attr("class", "noexist");
            $("#" + some[1]+">.thum>img").attr("src" ,"");
         } else if (some[0] == "elgnNST1qytCBnpR3DYlHqMIBxbMA0Kl7ld6B10nvOr2jMhDAfMwo0") {
            viewed = $('.message-area')[0].scrollHeight;
            var line = $("<div>");
            line.attr("class", "viewed");
            line.append(some[1])
            $(".message-area").append(line);
         }  else if (some[0] == "F1Ox28MRqHxk5ABxeRxOp7lK88jPSDAOWvV0rk9exQdFYR8E") {
            $("#"+some[1]).remove();
         } else {
            var str = some[1];
            for (var i = 2; i < some.length; i++) {
               str += ":" + some[i];
            }
            if (some[0] == $(".message-area>*:last>.info>.name").text()) {
               $(".message-area>*:last>.msgBox").append("<div><p>" + str);
            } else {
               var line = $("<article>");
               if (some[0] == "나") {
                  line.attr("class", "my");
               } else {
                  line.attr("class", "user");
               }
               var mInfo = $("<div>");
               mInfo.attr("class", "info");
               mInfo.append("<div class=name>" + some[0]);
               line.append(mInfo);
               line.append("<div class=msgBox><div><p>" + str)

               $(".message-area").append(line);
            }
            if (scrolled) {
               $('.message-area').scrollTop(
                     $('.message-area')[0].scrollHeight);

               $(".newMsg>div").remove();
            } else {
               if ($(".newMsg>div").text() == "") {
                  var newMsg = $("<div>");
                  newMsg.append("👇" + some[0] + ":" + str);
                  $(".newMsg").append(newMsg);
               } else {
                  $(".newMsg>div").text("👇" + some[0] + ":" + str);
               }
            }
         }
      }

      $(".message-area")
            .on(
                  "mousewheel",
                  function(e) {
                     var wheel = e.originalEvent.wheelDelta;

                     if ($('.message-area')[0].scrollHeight - 50 <= ($(
                           '.message-area').scrollTop() + $('.chatBox')[0].scrollHeight)) {
                        $(".viewed").remove();
                        scrolled = true;
                        $(".newMsg>div").remove();
                     }
                     if (wheel > 0) {
                        scrolled = false;
                     }
                     console.log(scrolled);
                  });

      $(".input-area").keydown(function(key) {
         if(key.ctrlKey && key.keyCode == 86 ){ 
            key.keyCode = 0;
            key.returnValue = false; 
          }
         var word = $(this).text();
         var wordSize = word.length;
         if(wordSize >1000){
            word=word.substr(0,1000);
            $(this).val(word);
            alert("메세지는 1000자 이하로 작성해주세요");
         }
         if (key.keyCode == 13) {
            var text = $(".input-area").text();
            if (text.trim() != "") {
               scrolled = true;
               ws.send(text.trim());
            }
            $(".input-area").empty();
            return false;
         }
      })
      $("#send").on("click",function(){
            var text = $(".input-area").text();
            if (text.trim() != "") {
               scrolled = true;
               ws.send(text.trim());
            }
            $(".input-area").empty();
            return false;
         
      })
      $("#exit").on("click",function() {
         var realExit = confirm("퇴장하시겠습니까?\n진행중인 대화방은 삭제되며 참가중인 모임에서도 퇴장하게 됩니다");
         if (realExit) {
            $.ajax({
               type:"POST",
               url:"/chat/exit",
               data:{"roomNum" : ${roomNum}},
               success:function(){
                  ws.send("${loginInfo.nickname}F1Ox28MRqHxk5ABxeRxOp7lK88jPSDAOWvV0rk9exQdFYR8E");
                  window.close();
               },error:function(){
                  console.log("실패");                  
               }
                  
            })
         }
      })
      $(document).on("click","#postNote", function() {
         var postMember = $(this).closest("li").attr("id");
         window.open("/msg/msgResponse?msg_receiver="+postMember, "POST TO "+postMember, 
               "width = 500, height = 550, top = 100, left = 200, scrollbars=no");
         
      })
      $(document).on("click","#kick", function() {
         var kickedMember = $(this).closest("li").attr("id");

         var realkicked = confirm(kickedMember+"님을 강퇴시키겠습니까?");
         if(realkicked){
            $.ajax({
               type:"POST",
               url:"/chat/kick",
               
               data:{"name" : kickedMember,
                  "seq" : ${roomNum}},
               success:function(){
                  ws.send(kickedMember+"F1Ox28MRqHxk5ABxeRxOp7lK88jPSDAOWvV0rk9exQdFYR8E");
                  console.log("강퇴 성공");   
               },error:function(){
                  console.log("실패");                  
               }
                  
            })
         }
         
      })
      $(".newMsg").on("click", function() {
         scrolled = true;
         $('.message-area').scrollTop($('.message-area')[0].scrollHeight);
         $(".newMsg>div").remove();
      })
   })
</script>

</head>
<body oncontextmenu="return false" ondragstart="return false">
   <section id="chatRoom" class="clearfix">
      <div id="exit">
         <button>채팅방 나가기</button>
      </div>
      <div class="user_list">
         <div class="title">채팅 그룹</div>
         <div class="memberList">
            <ul class="memNow">
               <c:if test="${!empty memberList }">
                  <c:forEach var="item" items="${memberList }">
                     <li id="${item.participant}" class="${item.exist}">
                        <div class="thum">
                           <img
                              src=<c:if test="${!empty item.id }">
                              "/upload/${item.id}/${item.sysname}"
                           </c:if>>
                        </div>
                        <div id="${item.participant}">${item.participant}</div> <c:if
                           test="${item.participant != loginInfo.nickname }">
                           <div class="chatBtns">
                              <c:if test="${writer == loginInfo.nickname }">
                                 <div id="kick">강퇴</div>
                              </c:if>
                              <div id="postNote">쪽지</div>
                           </div>

                        </c:if>
                     </li>
                  </c:forEach>
               </c:if>
            </ul>
         </div>
      </div>

      <div class="chatBox">
         <div class="head-area">
            <div class="title">CHATROOM#${roomNum }</div>
         </div>
         <div class="message-area"></div>
         <div class="newMsg"></div>
         <div class="inputBox">
            <div class="input-area" contenteditable="true"></div>
            <div class="submit">
               <button type="button" id=send>전송</button>
            </div>
         </div>
      </div>
   </section>
</body>
</html>