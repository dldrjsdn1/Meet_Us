package Meet_Us.meeter.controller;

import java.io.File;
import java.security.Principal;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

//import com.sendgrid.Content;
//import com.sendgrid.Email;
//import com.sendgrid.Mail;
//import com.sendgrid.Method;
//import com.sendgrid.Request;
//import com.sendgrid.Response;
//import com.sendgrid.SendGrid;

import Meet_Us.meeter.service.MAmazonS3ClientService;
import Meet_Us.meeter.service.MeeterService;
import Meet_Us.meeter.vo.FileVo;
import Meet_Us.meeter.vo.MeetBoardReplyVo;
import Meet_Us.meeter.vo.MeetingBoardVo;
import Meet_Us.meeter.vo.PageCriteria;
import Meet_Us.meeter.vo.PageMaker;

@Controller
@EnableAutoConfiguration
public class MeeterController {

	@Autowired
	private MeeterService service;
	@Autowired
	private MAmazonS3ClientService amazonS3ClientService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String Home(Model model) throws Exception {
		MeetingBoardVo[] list = service.selectHomeMeetingList();
		
		for(int i=0; i<list.length; i++) {
			list[i].setFILE_PATH(service.imagePath(list[i].getMB_NO()));
		}
		model.addAttribute("list", list);
		
		return "bootstrap.Home";
	}

	@RequestMapping(value = "/MeeterMain", method = RequestMethod.GET)
	public String MeeterMain(Model model, PageCriteria cri) throws Exception {
		PageMaker pageMaker = new PageMaker();
		cri.setPerPageNum(6);  
		pageMaker.setCri(cri);
		
		List<Map<String, Object>> meetingCount = service.selectCountMeetingList();
		pageMaker.setTotalCount(meetingCount.size()); 
		MeetingBoardVo[] arrayList = service.selectMeetingList(cri);
		
		for(int i=0; i<arrayList.length; i++) {
			arrayList[i].setFILE_PATH(service.imagePath(arrayList[i].getMB_NO()));
		}

		model.addAttribute("pageCriteria", cri);
		model.addAttribute("arrayList", arrayList);
		model.addAttribute("pageMaker", pageMaker);

		return "bootstrap.MeeterMain";
	}
	
	@RequestMapping(value = "/MeetingBoardSearchList", method = RequestMethod.GET)
	public String NoticeSearchList(Model model, PageCriteria cri) throws Exception {
		PageMaker pageMaker = new PageMaker();
		cri.setPerPageNum(6); 
		pageMaker.setCri(cri);

		List<Map<String, Object>> meetingCount = service.selectCountSearchMeetingList(cri);
		pageMaker.setTotalCount(meetingCount.size()); 
		
		MeetingBoardVo[] arrayList = service.selectSearchMeetingList(cri);
		
		for(int i=0; i<arrayList.length; i++) {
			arrayList[i].setFILE_PATH(service.imagePath(arrayList[i].getMB_NO()));
		}
		
		model.addAttribute("pageCriteria", cri);
		model.addAttribute("arrayList", arrayList);
		model.addAttribute("pageMaker", pageMaker);

		return "bootstrap.MeeterMain";
	}
	
	@RequestMapping(value = "/MeeterDetail", method = RequestMethod.GET)
	public String MeeterDetail(Model model, @RequestParam("MB_NO") int MB_NO, Principal principal) throws Exception {
		
		service.viewCountIncrease(MB_NO);
		MeetingBoardVo detail = service.selectMeetingDetail(MB_NO);
		List<MeetingBoardVo> subList= service.selectSimilarMeeting(Integer.toString(MB_NO), detail.getMB_PURPOSE());
		List<MeetBoardReplyVo> vo = service.replyList(MB_NO);
		   
		for(int i=0; i<subList.size(); i++) {
			subList.get(i).setFILE_PATH(service.imagePath(subList.get(i).getMB_NO()));
		}
		
		for (int i = 0; i < vo.size(); i++) {
	         String description = vo.get(i).getBoard_reply_content();
	         vo.get(i).setBoard_reply_content(description.replace("\r\n","<br>")); // 줄바꿈 처리
	      }
	      
		
		model.addAttribute("imageUrl", service.selectMeetingImageUrl(MB_NO));
		model.addAttribute("detail", detail);
		model.addAttribute("subList", subList);
		model.addAttribute("list", vo);
	    model.addAttribute("name", principal.getName());
	    model.addAttribute("count", service.replyCount(MB_NO));
	    model.addAttribute("memberList", service.AttendMember(MB_NO));
	    
		return "bootstrap.MeeterDetail";
	}
	
	@RequestMapping(value = "/insertReply", method = RequestMethod.GET)
	   @ResponseBody
	   public int insertReply(MeetBoardReplyVo vo) {
	      String description = vo.getBoard_reply_content();
	      vo.setBoard_reply_content(description.replace("\r\n","<br>")); // 줄바꿈 처리
//	       System.out.println(vo.getBoard_reply_content());
	       
	      return service.insertReply(vo);
	   }
	   
	   @RequestMapping(value = "/replyDelete", method = RequestMethod.GET)
	   @ResponseBody
	   public int replyDelete(MeetBoardReplyVo vo) {
//	      System.out.println(vo.toString());
	      
	      return service.replyDelete(vo.getBoard_reply_no());
	   }
	
	   @RequestMapping(value = "/MeeterFromMapInsert", method = RequestMethod.GET)
	   public String MeeterFromMapInsert(Model model, @RequestParam("MeetingPlace") String MeetingPlace, @RequestParam("address") String address ) throws Exception {
		   model.addAttribute("MeetingPlace", MeetingPlace);
		   model.addAttribute("address", address);
		   return "bootstrap.MeeterInsert";
	   }
	   
	@RequestMapping(value = "/MeeterInsert", method = RequestMethod.GET)
	public String MeeterInsert(Model model) throws Exception {
		
		return "bootstrap.MeeterInsert";
	}
	
	@ResponseBody
	@RequestMapping(value = "/MeeterInsertAction", method = RequestMethod.POST )
	public void MeeterInsertAction(Model model, MeetingBoardVo meetingBoardVo, Principal principal) throws Exception {
		
		meetingBoardVo.setMB_WRITER(principal.getName());
		model.addAttribute("MB_NO", meetingBoardVo.getMB_NO());
		
		service.insertMeetingBoard(meetingBoardVo);
	}
	
	@RequestMapping(value = "/MeetingImageInsert", method = RequestMethod.GET)
	public String MeetingImageInsert(Model model
									, @RequestParam("MB_NO") int MB_NO
									) throws Exception {
		model.addAttribute("MB_NO", MB_NO);
		model.addAttribute("imageUrl", service.selectMeetingImageUrl(MB_NO));
		
		return "bootstrap.MeetingImageInsert";
	}
	
	@ResponseBody
	@RequestMapping(value = "/MeetingDeleteImage", method = RequestMethod.GET)
	public void MeetingDeleteImage(Model model, @RequestParam("MB_NO") String MB_NO) throws Exception {
		service.MeetingDeleteImage(Integer.parseInt(MB_NO));
	}
	
	@RequestMapping(value = "/MeetingImageInsertAction", method = RequestMethod.POST)
	public String MeetingImageInsertAction(Model model
									, FileVo file
									, MultipartHttpServletRequest request
									) throws Exception {
		
		String filecount = request.getParameter("image_count");
		
		int no = Integer.parseInt(request.getParameter("MB_NO"));
		MultipartFile[] files = new MultipartFile[Integer.parseInt(filecount)];
		for(int i=0; i<Integer.parseInt(filecount); i++) {
			String name = "image_" +i;
			files[i] = request.getFile(name);
		}
		for(int i=0; i < files.length; i++) {
		if(files[i].getOriginalFilename() != "") {
				
		this.amazonS3ClientService.uploadFileToS3Bucket(files[i], true);
			
		String fileName = files[i].getOriginalFilename();
		String fileNameExtension = FilenameUtils.getExtension(fileName).toLowerCase();
		File destinationFile;
		String destinationFileName;
		String fileRealUrl = "https://meet-us.s3.ap-northeast-2.amazonaws.com/MeetingImage/" + fileName;
		String fileUrl= fileRealUrl;
		
		do {
			destinationFileName = RandomStringUtils.randomAlphanumeric(32) + "." + fileNameExtension;
			destinationFile = new File(fileUrl + destinationFileName);
		} while (destinationFile.exists());

           file.setUp_Seq(no);
           file.setFile_Name(destinationFileName);
           file.setFile_Real_Name(fileName);
           file.setFile_Path(fileUrl);

           service.fileInsert(file); //file insert
			}
		}
		
		return "bootstrap.MeetingImageInsert";
	}
	
	@RequestMapping(value = "/MeetingDelete", method = RequestMethod.GET)
	public String MeetingDelete(Model model, @RequestParam("MB_NO") int MB_NO ) throws Exception {
		service.MeetingDelete(MB_NO);
		service.MeetingDeleteImage(MB_NO);
		
		return "redirect:MeeterMain";
	}
	
	@RequestMapping(value = "/MeetingModify", method = RequestMethod.GET)
	public String NoticeModify(Model model, @RequestParam("MB_NO") int MB_NO) throws Exception {
		
		MeetingBoardVo meetingBoardVo = service.selectOne(MB_NO);
		String description = meetingBoardVo.getMB_CONTENTS();
		meetingBoardVo.setMB_CONTENTS(description.replace("<br>","\r\n")); // 줄바꿈 처리
		
		model.addAttribute("Modify", meetingBoardVo);
		model.addAttribute("Image", service.selectImage(MB_NO));

		return "bootstrap.MeetingModify";
	}
	
	@ResponseBody
	@RequestMapping(value = "/MeetingModifyAction", method = RequestMethod.POST)
	public void MeetingModifyAction(Model model, MeetingBoardVo meetingBoardVo) throws Exception {
		
		model.addAttribute("MB_NO", meetingBoardVo.getMB_NO());
		
		service.modifyMeetingBoard(meetingBoardVo);
	}
	
	@RequestMapping(value = "/MeetingAttend", method = RequestMethod.GET)
	public String MeetingAttend(Model model, @RequestParam("MB_NO") String MB_NO, Principal principal,RedirectAttributes redirectAttributes) throws Exception {
		
		service.MeetingAttend(MB_NO, principal.getName());
		service.CurrentCountInc(MB_NO);
		redirectAttributes.addAttribute("MB_NO", MB_NO);
		
		return "redirect:/MeeterDetail";
	}
	
	@RequestMapping(value = "/MeetingAttendCancel", method = RequestMethod.GET)
	public String MeetingAttendCancel(Model model, @RequestParam("MB_NO") String MB_NO, Principal principal,RedirectAttributes redirectAttributes) throws Exception {
		
		service.MeetingAttendCancel(MB_NO, principal.getName());
		service.CurrentCountDec(MB_NO);
		redirectAttributes.addAttribute("MB_NO", MB_NO);
		
		return "redirect:/MeeterDetail";
	}
	
}
