/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年5月9日 上午10:15:17
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSON;
import com.ramostear.jbuilder.dao.CategoryDao;
import com.ramostear.jbuilder.entity.BSTreeNode;
import com.ramostear.jbuilder.entity.Category;
import com.ramostear.jbuilder.kit.PageDto;
import com.ramostear.jbuilder.service.CategoryService;
/** 
 * @Desc: () 
 * @author: 赖生龙 
 * @date: 2017年5月9日 上午10:15:17 
 * @email:361801580@qq.com 
 */
@Service("categoryService")
public class CategoryServiceImpl implements CategoryService {

	@Autowired
	private CategoryDao cdao;
	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.CategoryService#add(com.ramostear.jbuilder.entity.Category)
	 */
	@Override
	public Category add(Category category) {
		//设置父名称
		Category temp=cdao.findById(category.getParentId());
		if(temp!=null){
			category.setParentName(temp.getName());
		}
		cdao.save(category);
		return category;
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.CategoryService#update(com.ramostear.jbuilder.entity.Category)
	 */
	@Override
	public Category update(Category category) {
		Category temp=cdao.findById(category.getParentId());
		if(temp!=null){
			category.setParentName(temp.getName());
		}
		cdao.update(category);
		return category;
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.CategoryService#delete(java.lang.Long)
	 */
	@Override
	public boolean delete(Long id) {
		return cdao.delete(id);
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.CategoryService#findByName(java.lang.String)
	 */
	@Override
	public Category findByName(String name) {
		return cdao.findByName(name);
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.CategoryService#findByPage(int, int, java.lang.String, boolean, java.lang.String)
	 */
	@Override
	public PageDto<Category> findByPage(int offset, int size, String orderBy,boolean order, String search) {
		List<Category> list = cdao.findByPage((offset-1)*size, size, orderBy, order,search);
		Long totalSize = cdao.size();
		return new PageDto<Category>(totalSize,offset,size,list);
	}
	
	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.CategoryService#findParent()
	 */
	@Override
	public List<Map<String, String>> findParent() {
		return cdao.findParent();
	}

	@Override
	public String findParentByTree() {
		
	    List<Category> rootMenu = cdao.findAll();
	    List<BSTreeNode> menuList = new ArrayList<BSTreeNode>();
	    
	    for (int i = 0; i < rootMenu.size(); i++) {
	    	Category tempCategory=rootMenu.get(i);
	        
	        if (tempCategory.getParentId()==null) {
	        	BSTreeNode node=new BSTreeNode();
	        	node.setId(tempCategory.getId());
	        	node.setNodeId(tempCategory.getId());
	        	node.setText(tempCategory.getName());
	            menuList.add(node);
	        }
	    }
	    
	    for (BSTreeNode menu : menuList) {
	        menu.setNodes(getChild(menu.getId(), rootMenu));
	    }
		
		return JSON.toJSON(menuList).toString();
	}
	
	/**
	 * 递归创建子菜单
	 * @param id
	 * @param rootMenu
	 * @return
	 */
	private List<BSTreeNode> getChild(Long id, List<Category> rootMenu) {
	    
	    List<BSTreeNode> childList = new ArrayList<>();
	    
	    for (Category menu : rootMenu) {
	        if (menu.getParentId()!=null) {
	            if (menu.getParentId().equals(id)) {
	            	BSTreeNode node=new BSTreeNode();
		        	node.setId(menu.getId());
		        	node.setNodeId(menu.getId());
		        	node.setText(menu.getName());
		        	node.setSelectable(true);//子菜单能点击
	                childList.add(node);
	            }
	        }
	    }
	    
	    if (childList.size() == 0) {
	        return null;
	    }
	    return childList;
	}

}
