package Meet_Us.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Meet_Us.board.dao.BoardMapper;
import Meet_Us.board.vo.BoardVo;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	private BoardMapper mapper;


	@Override
	public List<BoardVo> test() throws Exception {
		return mapper.test();
	}

}
