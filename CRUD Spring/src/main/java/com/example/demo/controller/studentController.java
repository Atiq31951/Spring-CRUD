package com.example.demo.controller;
import com.example.demo.model.Student;
import com.example.demo.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.jws.WebParam;
import java.util.ArrayList;
import java.util.List;

@Controller
public class studentController {
    @Autowired
    private StudentRepository studentRepository;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index(Model model) {
        return  "index";
    }

//    ....................................... Insert Student ..................................................

    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    public String createStudentPost(Model model, @ModelAttribute("student") Student student) {
        if(student.getEmail().length()<=5 || student.getFatherName().length()<=2 || student.getMobile().length()<=11 || student.getMotherName().length()<=4 || student.getName().length()<=4){
            return  "createStudent";
        }
        studentRepository.save(student);
        System.out.println(student);
        return  "redirect:/studnetList";
    }

    @RequestMapping(value = "/insert", method = RequestMethod.GET)
    public String createStudentGet(Model model) {
        Student student=new Student();
        model.addAttribute("student",student);
        return  "createStudent";
    }

//    ............................................... Student List .................................................

    @RequestMapping(value = "/studnetList", method = RequestMethod.GET)
    public String studentList(Model model) {
        List<Student> listt=studentRepository.findAll();
        model.addAttribute("listt",listt);
        return  "studentList";
    }


//    ............................................. Edit ...........................................................

    @RequestMapping(value = "/edit", method = RequestMethod.GET)
    public String eidtStudentGET(Model model, @RequestParam(value = "id", required = false) Integer id) {
        System.out.println("ID in the get = "+id);
        Student student=studentRepository.getStudentById(id);
        model.addAttribute(student);
        return  "editStudent";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public String eidtStudentPOST(Model model, @ModelAttribute("student") Student student,@RequestParam(value = "id", required = false) Integer id) {
        if(student.getEmail().length()<=5 || student.getFatherName().length()<=2 || student.getMobile().length()<=11 || student.getMotherName().length()<=4 || student.getName().length()<=4){
            System.out.println("When empty emelemt , id  = "+id);
            Student student1=studentRepository.getStudentById(id);
            model.addAttribute("student",student1);
            return  "editStudent";
        }
        System.out.println("ID in the post = "+id);
        studentRepository.save(student);
        return  "redirect:/studnetList";
    }

//    ............................................... Delete ......................................................

    @RequestMapping(value = "/delete", method = RequestMethod.GET)
    public String deleteStudentGET(Model model, @RequestParam(value = "id", required = false) Integer id) {
        System.out.println("ID = "+id);
        Student student=studentRepository.getStudentById(id);
        studentRepository.delete(student);
        return  "redirect:/studnetList";
    }
}
