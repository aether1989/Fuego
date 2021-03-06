package cn.tinder.fuego.webservice.struts.action.search;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import cn.tinder.fuego.webservice.struts.constant.PageNameConst;
import cn.tinder.fuego.webservice.struts.constant.ParameterConst;



/**
 * 
* @ClassName: AssetsStatusDealHistorySerarchResultAction 
* @Description: TODO
* @author Kong Jingliang
* @date 2013-10-1 下午05:55:03 
*
 */

public class AssetsStatusDealHistoryAction extends Action
{
    private static final Log log = LogFactory.getLog(AssetsStatusDealHistoryAction.class);
    
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception
    {
    	log.info("[Action]Get into IndexInit.do");
        
    	String nextPage = null;
    	
    	String submitPara = request.getParameter(ParameterConst.SUBMIT_PARA_NAME); 
    	
    	if(submitPara.equals(ParameterConst.SUBMIT_PARA_NAME)){
			
			nextPage = PageNameConst.AssetsStatusDealHistorySearchResultInit_PAGE;
		}
    	
    	
        
    	
        
 
     
        log.info("[Jump]:NextPage:"+nextPage);
        return mapping.findForward(nextPage);	

    }

}
