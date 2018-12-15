package kr.ac.hansung.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import kr.ac.hansung.model.Subject;

@Repository
public class SubjectDAO {

	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	// query and return multiple objects
	public List<Subject> getSubjects() {
		String sqlStatement = "select * from subjects";
		
		return jdbcTemplate.query(sqlStatement, 
				new RowMapper<Subject>(){ // 객체를 생성
					@Override
					public Subject mapRow(ResultSet rs, int rowNum) throws SQLException {
						
						Subject subject = new Subject();
						subject.setAttendyear(rs.getString("attendyear"));
						subject.setTerm(rs.getString("term"));
						subject.setSubcode(rs.getString("subcode"));
						subject.setSubname(rs.getString("subname"));
						subject.setClasssort(rs.getString("classsort"));
						subject.setScore(rs.getString("score"));
						
						return subject;
					}
			
		});
	}
	
	public boolean insert(Subject subject) {
		String attendyear = subject.getAttendyear();
		String term = subject.getTerm();
		String subcode = subject.getSubcode();
		String subname = subject.getSubname();
		String classsort = subject.getClasssort();
		String score = subject.getScore();
		
		String sqlStatement = "insert into subjects (attendyear, term, subcode, subname, classsort, score) values (?,?,?,?,?,?)";
		
		return (jdbcTemplate.update(sqlStatement, new Object[] {attendyear, term, subcode, subname, classsort, score})==1); //integer 값
	}
	
}
