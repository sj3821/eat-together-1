package coma.spring.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import coma.spring.dto.MemberDTO;
import coma.spring.dto.MsgDTO;
import coma.spring.service.MemberService;
import coma.spring.service.MsgService;

@Controller
@RequestMapping("/msg/")
public class MsgController {
	//@Autowired
	//private MsgDAO msgdao;
	@Autowired
	private MemberService mservice;
	
	@Autowired
	private MsgService msgservice;
	
	@Autowired
	private HttpSession session;
	
	//받은 쪽지함
	@ExceptionHandler
	public String exceptionHandler(NullPointerException npe) {
		npe.printStackTrace();
		System.out.println("NullPointerException Handler : 에러가 발생하였습니다.");
		return "member/loginview";
	}
	
	//받은쪽지함
	@RequestMapping("msg_list_sender")
	public String msglist_sender(HttpServletRequest request)throws Exception{
		MemberDTO mdto = (MemberDTO)session.getAttribute("loginInfo");
		String msg_receiver = mdto.getId();
		System.out.println(msg_receiver+"의 받은 쪽지함");
		//새로운 메세지 카운트
		int newMsg=msgservice.newmsg(msg_receiver);
		
		if(session.getAttribute("msgcpage")==null) {
			session.setAttribute("msgcpage", 1);
		}
		try { 
			session.setAttribute("msgcpage", Integer.parseInt(request.getParameter("msgcpage")));
		} catch (Exception e) {}
		int msgcpage=(int)session.getAttribute("msgcpage");
		List<MsgDTO> dto = msgservice.selectBySender(msgcpage,msg_receiver);
		String navi = msgservice.Sendnavi(msgcpage,msg_receiver);
		request.setAttribute("newMsg", newMsg);
		request.setAttribute("navi", navi);
		request.setAttribute("list", dto);
		return "msg/mypage_sendmsg";
	}
	//관리자
	
	@RequestMapping("msg_list_admin")
	public String msglist_admin(HttpServletRequest request)throws Exception{
		MemberDTO mdto = (MemberDTO)session.getAttribute("loginInfo");
		String msg_receiver = mdto.getId();
		System.out.println(msg_receiver+"의 관리자 쪽지함");
		
		if(session.getAttribute("msgAcpage")==null) {
			session.setAttribute("msgAcpage", 1);
		}
		try { 
			session.setAttribute("msgAcpage", Integer.parseInt(request.getParameter("msgcpage")));
		} catch (Exception e) {}
		int msgAcpage=(int)session.getAttribute("msgAcpage");

		List<MsgDTO> dto = msgservice.selectByAdmin(msgAcpage,msg_receiver);
		String navi = msgservice.Adminnavi(msgAcpage, msg_receiver);
		
		request.setAttribute("navi", navi);
		request.setAttribute("list", dto);
		
		return "msg/mypage_sendmsg";
	}
	//보낸쪽지함
	
	@RequestMapping("msg_list_receiver")
	public String msglist_receiver(HttpServletRequest request)throws Exception{
		MemberDTO mdto = (MemberDTO)session.getAttribute("loginInfo");
		String msg_receiver = mdto.getId();
		System.out.println(msg_receiver+"의 보낸 쪽지함");
		
		if(session.getAttribute("msgRcpage")==null) {
			session.setAttribute("msgRcpage", 1);
		}
		try { 
			session.setAttribute("msgRcpage", Integer.parseInt(request.getParameter("msgcpage")));
		} catch (Exception e) {}
		
		int msgRcpage=(int)session.getAttribute("msgRcpage");
		
		List<MsgDTO> dto = msgservice.selectByReceiver(msgRcpage,msg_receiver);
		String navi =msgservice.Receivenavi(msgRcpage, msg_receiver);
		
		request.setAttribute("navi", navi);
		request.setAttribute("list", dto);
		return "msg/mypage_receivemsg";
	}
	
	@RequestMapping("msgWrite")
	public String msgWrite() {
		return "msg/msgWrite";
	}
	//쪽지보내기
	@RequestMapping("msgSend")
	public String msgSend(MsgDTO msgdto)throws Exception{
		MemberDTO mdto = (MemberDTO)session.getAttribute("loginInfo");
		String msg_sender=mdto.getId();
		msgdto.setMsg_sender(msg_sender);
		//메세지 보낸사람 넣기
		int result = msgservice.insert(msgdto);
		if(result==1) {
			return "msg/msgWriteResult";	
		}else {
			return "error";
		}
		
	}
	//답장하기 버튼 눌렀을때
	@RequestMapping("msgResponse")
	public String msgResponse(HttpServletRequest request,String msg_receiver)throws Exception{
		//받은사람을 보낼사람에 넣어줍니다
		request.setAttribute("msg_receiver", msg_receiver);
		return "msg/msgWriteResponse";
	}
	
	//받은쪽지함에서 눌러볼때
	@RequestMapping("msgView")
	public String msgView(HttpServletRequest request,int msg_seq)throws Exception{
		
		MsgDTO msgDTO = msgservice.selectBySeq(msg_seq);
		String sender = msgDTO.getMsg_sender();
		MemberDTO mdto = mservice.selectMyInfo(sender);
		String msg_receiver=msgDTO.getMsg_receiver();
		//읽음처리되는것
		int result = msgservice.updateView(msg_seq);
		int newmsg = msgservice.newmsg(msg_receiver);
		request.setAttribute("mdto", mdto);
		request.setAttribute("msgView", msgDTO);
		//읽음처리 수정중
		session.setAttribute("newMsg", newmsg);
		System.out.println(newmsg);
		return "msg/msgView";
	}
	//보낸쪽지함에서 눌러볼때
	@RequestMapping("msgViewSend")
	public String msgViewSend(HttpServletRequest request,int msg_seq)throws Exception{
		MemberDTO mdto = (MemberDTO)session.getAttribute("loginInfo");
		
		MsgDTO msgDTO = msgservice.selectBySeq(msg_seq);
		request.setAttribute("msgView", msgDTO);
		request.setAttribute("mdto", mdto);
		return "msg/msgViewSend";
	}
	
	//받은쪽지함 삭제
	@RequestMapping("msgReceiverDel")
	public String ReceiverDel(int msg_seq)throws Exception{
		int result = msgservice.receiver_del(msg_seq);
		
		return "redirect:msg_list_sender";
	}
	
	//보낸쪽지함 삭제
	@RequestMapping("msgSenderDel")
	public String SenderDel(int msg_seq)throws Exception{
		System.out.println(msg_seq);
		int result = msgservice.sender_del(msg_seq);

		return "redirect:msg_list_receiver";
	}
	
	@RequestMapping("newmsg")
	@ResponseBody
	public int newmsg(HttpServletRequest request)throws Exception{
		MemberDTO mdto = (MemberDTO)session.getAttribute("loginInfo");
		String msg_receiver=mdto.getId();
		int newmsg = msgservice.newmsg(msg_receiver);
		session.setAttribute("newMsg", newmsg);
		return newmsg;
	}

}

