package formvalidations;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import formvalidations.model.Employee;
import formvalidations.service.EmployeeService;


@Controller
public class MyJspController {

	
	
	@Autowired
	private EmployeeService employeeService;
	
	
	@RequestMapping(value={"/","/home","/index"})
	public ModelAndView gethomepage()
	{
		ModelAndView mv=new ModelAndView("home");
		
		mv.addObject("title", "HomePage");
		
		return mv;
		
	}
	
	@RequestMapping(value={"/regform"})
	public ModelAndView regform()
	{
		ModelAndView mv=new ModelAndView("home");
	
	mv.addObject("title", "EmployeeFormPage");
	mv.addObject("UserClickForm", true);
	
	return mv;
	
	}
	
	@RequestMapping(value="/listofemp", method = RequestMethod.GET)
	public ModelAndView listEmployees() {
		
		ModelAndView mv=new ModelAndView("home");
		
		mv.addObject("title", "EmployeeListPage");
		mv.addObject("UserClickEmployeeList", true);
		mv.addObject("employees", employeeService.listEmployeess());
		return mv;
		
	}
	
	@RequestMapping(value="/formsubmit", method = RequestMethod.GET)
	public ModelAndView formsubmit(@RequestParam ("empid")int empid,@RequestParam ("empname")String empname,@RequestParam("empdob")String empdob,
			@RequestParam ("empqualification")String empqualification,@RequestParam ("empsalary")double empsalary,@RequestParam("empaddress")String empaddress) {
		
		Employee employee=new Employee();
		
		employee.setId(empid);
		employee.setName(empname);
		employee.setDob(empdob);
		employee.setQualification(empqualification);
		employee.setSalary(empsalary);
		employee.setAddress(empaddress);
		
	employeeService.addEmployee(employee);
		
		
		ModelAndView mv=new ModelAndView("home");
		
		mv.addObject("title", "FormSuccess");
		mv.addObject("UserClickForm", true);
		mv.addObject("success", "you have successfully given employeedetails");
		return mv;
	}
	
	@RequestMapping(value="/modifyemployee", method = RequestMethod.GET)
	public ModelAndView addemployee() {
		
		ModelAndView mv=new ModelAndView("home");
		
		mv.addObject("title", "ModifyEmployee");
		mv.addObject("UserClickModifyEmployee", true);
		mv.addObject("employees", employeeService.listEmployeess());
		return mv;
		
	}
	@RequestMapping(value="/edit/{empid}", method = RequestMethod.GET)
	public ModelAndView editemployeedetails(@PathVariable ("empid") int empid) {
		
		ModelAndView mv=new ModelAndView("home");
		
		mv.addObject("title", "EditEmployee");
		mv.addObject("UserClickEditEmployee", true);
		mv.addObject("employee", employeeService.getEmployee(empid));
		mv.addObject("employees", employeeService.listEmployeess());
		return mv;
		
	}
	@RequestMapping(value="/delete/{empid}", method = RequestMethod.GET)
	public ModelAndView deleteemployeedetails(@PathVariable ("empid") int empid) {
	Employee employee=new Employee();
	employee.setId(empid);
		
		ModelAndView mv=new ModelAndView("home");
		employeeService.deleteEmployee(employee.getId());
		mv.addObject("title", "DeleteEmployee");
		mv.addObject("UserClickDeleteEmployee", true);
		mv.addObject("employees", employeeService.listEmployeess());
		/*mv.addObject("employee","Employee Deleted success fully with id "+empid);*/
		return mv;
		
	}
	@RequestMapping(value="/updatesubmit", method = RequestMethod.GET)
	public ModelAndView updatesubmit(@RequestParam ("empid")int empid,@RequestParam ("empname")String empname,@RequestParam("empdob")String empdob,
			@RequestParam ("empqualification")String empqualification,@RequestParam ("empsalary")double empsalary,@RequestParam("empaddress")String empaddress) {
		
		Employee employee=new Employee();
		
	    employee.setId(empid);
		employee.setName(empname);
		employee.setDob(empdob);
		employee.setQualification(empqualification);
		employee.setSalary(empsalary);
		employee.setAddress(empaddress);
		
	employeeService.addEmployee(employee);
		
		
		ModelAndView mv=new ModelAndView("home");
		
		mv.addObject("title", "FormUpdateSuccess");
		mv.addObject("FormUpdateSuccess", true);
		mv.addObject("employee", employeeService.getEmployee(empid));
		mv.addObject("employees", employeeService.listEmployeess());
		mv.addObject("success", "you have successfully updated employeedetails");
		return mv;
	}
	
	
	
		}

