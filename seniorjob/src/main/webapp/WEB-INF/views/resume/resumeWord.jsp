<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" --%>
<%--     pageEncoding="UTF-8"%>  --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!-- <meta http-equiv="Content-Type" content="text/html; charset=euc-kr">   -->
    <!-- ���������� ������ ������ ����. -->
<%@ page language="java" contentType="application/vnd.word; charset=euc-kr"%>
    response.setHeader("Content-Description", "JSP Generated Data");  
    response.setHeader("Content-Disposition", "attachment;filename=ServieRequestList.doc");

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> 
<html class="no-js"> <!--<![endif]-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <body>
        <!-- property area -->
        <div class="content-area recent-property padding-top-40" style="background-color: #FFF;">
            <div class="container">  
                <div class="row">
                    <div class="col-md-8 col-md-offset-2"> 
                        <div class="" id="contact1">                        
                            <!-- /.row -->
                            <div align="center"><h2>�̷¼�</h2></div>
                            <hr>
                            <form name="frm">
                            	
                                <div class="row" id="printIs">
                           		   <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>����</label>
                                            <%-- <img src="{path}/image/${resumeVO.image }">
                                            <input type="file" id="image" name="image"> --%>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>�̸�</label>
                                            <input type="text" class="form-control" id="resume_name" name="resume_name" value=${resumeVO.resume_name }>
                                        </div>
                                    </div>

                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>�������</label>
                                            <input type="text" class="form-control" id="resume_birth" name="resume_birth" value=${resumeVO.resume_birth }>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Email</label>
                                            <input type="email" class="form-control" id="resume_email" name="resume_email" value=${resumeVO.resume_email }>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>�޴��� ��ȣ</label>
                                            <input type="text" class="form-control" id="resume_phone" name="resume_phone" value=${resumeVO.resume_phone }>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>�ּ�</label>
                                            <input type="text" class="form-control" id="resume_address" name="resume_address" value=${resumeVO.resume_address }>
                                        </div>
                                    </div>
									<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
                                    <h3>�з»���</h3>

                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>�б���</label>
                                            <input type="text" class="form-control" id="resume_school" name="resume_school" value=${resumeVO.resume_school }>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>����</label>
                                            <input type="text" class="form-control" id="resume_area" name="resume_area" value=${resumeVO.resume_area }>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>������</label>
                                            <input type="text" class="form-control" id="resume_start" name="resume_start" value=${resumeVO.resume_start }>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>������</label>
                                            <input type="text" class="form-control" id="resume_end" name="resume_end" value=${resumeVO.resume_end }>
                                        </div>
                                    </div>
                                    <br><br><br><br><br><br><br><br><br>
                                    <h3>�ڰ���</h3>
                                    <c:forEach items="${clist}" var="certi"> 
                                    <input type="hidden" id="certi_no" name="certi_no" value=${certi.certi_no }>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                        	<label>�ڰ��� �׸�</label>
                                            <select id = "certi_kinds" name = "certi_kinds" value=${certi.certi_kinds }>
												<option value="IT" <c:if test="${certi.certi_kinds  eq 'IT' }">selected</c:if>>IT</option>
												<option value="����/ȸ��" <c:if test="${certi.certi_kinds eq '����/ȸ��' }">selected</c:if>>����/ȸ��</option>
												<option value="����" <c:if test="${certi.certi_kinds eq '����' }">selected</c:if>>����</option>
												<option value="���" <c:if test="${certi.certi_kinds eq '���' }">selected</c:if>>���</option>
												<option value="������" <c:if test="${certi.certi_kinds eq '������' }">selected</c:if>>������</option>
												<option value="����/�Ƿ�" <c:if test="${certi.certi_kinds eq '����/�Ƿ�' }">selected</c:if>>����/�Ƿ�</option>
												<option value="�������" <c:if test="${certi.certi_kinds eq '�������' }">selected</c:if>>�������</option>
												<option value="����" <c:if test="${certi.certi_kinds eq '����' }">selected</c:if>>����</option>
												<option value="��Ÿ" <c:if test="${certi.certi_kinds eq '��Ÿ' }">selected</c:if>>��Ÿ</option>
											</select>
                                        </div>
                                    </div>
									 <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>�հݱ���</label>
                                            <select name="accept" id="accept" value=${certi.accept }>
												<option value="1���հ�" <c:if test="${certi.accept  eq '1���հ�' }">selected</c:if>>1���հ�</option>
												<option value="2���հ�" <c:if test="${certi.accept  eq '2���հ�' }">selected</c:if>>2���հ�</option>
												<option value="�ʱ��հ�" <c:if test="${certi.accept  eq '�ʱ��հ�' }">selected</c:if>>�ʱ��հ�</option>
												<option value="�Ǳ��հ�" <c:if test="${certi.accept  eq '�Ǳ��հ�' }">selected</c:if>>�Ǳ��հ�</option>
												<option value="�����հ�" <c:if test="${certi.accept  eq '�����հ�' }">selected</c:if>>�����հ�</option>
											</select>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>�ڰ�����</label>
                                            <input type="text" class="form-control" id="certi_name" name="certi_name" value=${certi.certi_name }>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>����ó/���</label>
                                            <input type="text" class="form-control" id="certi_place" name="certi_place" value=${certi.certi_place }>
                                        </div>
                                    </div>
                                   
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>�����</label>
                                            <input type="text" class="form-control" id="certi_date" name="certi_date" value=${certi.certi_date }>
                                        </div>
                                    </div>
                                    </c:forEach>  
                                	<br><br><br><br><br><br><br><br><br><br>
									<h3>��Ʈ������</h3>
									<div class="col-sm-6">
										<div class="form-group">
											<label for="subject">��Ʈ������ �� ��Ÿ����</label> <br>
											<c:forEach items="${plist }" var="port">
											<input type="hidden" name="portfolio" id="portfolio" value="${port.portfolio }">${port.portfolio }<br>
											</c:forEach>
										</div>
									</div>
									<br><br><br><br><br><br><br><br>
									<h3>�ڱ�Ұ���</h3>
									<c:forEach items="${slist }" var="self">
									<input type="hidden" id="self_no" name="self_no" value="${self.self_no }">
									<div class="col-sm-10">
										<div class="form-group">
											<label for="subject">����</label> 
											<input type="text" class="form-control" id="self_name" name="self_name" placeholder="�ڱ�Ұ��� ����" value=${self.self_name }>
										</div>
									</div>
									<div class="col-sm-12">
										<div class="form-group">
											<label for="message">����</label>
											<textarea id="self_content" name="self_content" class="form-control" 
											placeholder="������ �Է��ϼ���.">${self.self_content }</textarea>
										</div>
									</div>
									</c:forEach>
                                </div>
                                <!-- /.row -->
                            </form>
                        </div>
                    </div>    
                </div>
            </div>
        </div>
    </body>
</html>