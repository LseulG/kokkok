package z.common.util;

import java.util.HashMap;
import java.util.Map;

import com.kokkok.util.BoardConstance;
import com.kokkok.util.PageNavigation;

public class CommonServiceImpl implements CommonService {
	
	private static CommonService commonservice;
	
	static {
		commonservice = new CommonServiceImpl();
	}
	
	private CommonServiceImpl() {		
	}
	
	public static CommonService getCommonservice() {
		return commonservice;
	}




	@Override
	public PageNavigation getPageNavigation(int bcode, int pg, String word , String key) {
		
		//리스트사이즈 조절은 if문에 bcode==n을 만들어 BoardConstance에서 원하는 사이즈를 호출해 값을 지정해주면됩니다.
		int listSize = BoardConstance.ARTICLE_LIST_SIZE;
		int navSize = BoardConstance.NAVIGATION_SIZE;
		
		Map<String, String> map = new HashMap<>();
		map.put("bcode", bcode+"");
		map.put("key", key);
		map.put("word", word);
		
		
		
		PageNavigation pageNavigation = new PageNavigation();
		int newArticleCount = CommonDaoImpl.getCommonDao().getNewArticleCount(bcode);		
		pageNavigation.setNewArticleCount(newArticleCount);
		
		int totalArticleCount = CommonDaoImpl.getCommonDao().getTotalArticleCount(map);		
		pageNavigation.setTotalArticleCount(totalArticleCount);		
		
		int totalPageCount = (totalArticleCount -1) / listSize + 1;
		pageNavigation.setTotalPageCount(totalPageCount);
				
		pageNavigation.setNowFirst(pg <= navSize);
		
		pageNavigation.setNowEnd((totalPageCount - 1) / navSize * navSize < pg);
		pageNavigation.setPageNo(pg);
		
		return pageNavigation;
	}

}
