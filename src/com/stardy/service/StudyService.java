package com.stardy.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.stardy.entity.Study;
import com.stardy.util.DatabaseUtil;

 interface StudyService {
	

     List<Study> getList(boolean flag, int memberId) throws SQLException;
    
     int getCrnt(Study study) throws SQLException;
    
     String getLeader(int id) throws SQLException;
    
     boolean isLeader(int memberId, int studyId) throws SQLException;
}
