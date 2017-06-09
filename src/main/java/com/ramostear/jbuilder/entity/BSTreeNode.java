package com.ramostear.jbuilder.entity;

import java.util.List;

/**
 * 
* @Desc: () 
* @author: 赖生龙 
* @date: 2017年5月10日 下午2:38:58 
* @email:361801580@qq.com
 */
public class BSTreeNode {
	private Long id;
	private Long nodeId;
	private String text;	
	private String icon;
	private String selectedIcon;
	private boolean selectable; //目录是否能取值
	private List<BSTreeNode> nodes;
	
	public BSTreeNode() {
		super();
	}

	public BSTreeNode(Long id, Long nodeId, String text, String icon,
			String selectedIcon, boolean selectable, List<BSTreeNode> nodes) {
		super();
		this.id = id;
		this.nodeId = nodeId;
		this.text = text;
		this.icon = icon;
		this.selectedIcon = selectedIcon;
		this.selectable = selectable;
		this.nodes = nodes;
	}



	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getIcon() {
		return icon;
	}
	public void setIcon(String icon) {
		this.icon = icon;
	}
	public String getSelectedIcon() {
		return selectedIcon;
	}
	public void setSelectedIcon(String selectedIcon) {
		this.selectedIcon = selectedIcon;
	}
	public boolean getSelectable() {
		return selectable;
	}
	public void setSelectable(boolean selectable) {
		this.selectable = selectable;
	}
	public List<BSTreeNode> getNodes() {
		return nodes;
	}
	public void setNodes(List<BSTreeNode> nodes) {
		this.nodes = nodes;
	}

	public Long getNodeId() {
		return nodeId;
	}

	public void setNodeId(Long nodeId) {
		this.nodeId = nodeId;
	}
	
	
}
