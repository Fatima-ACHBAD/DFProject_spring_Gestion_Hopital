package com.example.dfproject.controllers;

import com.example.dfproject.entities.Patient;
import com.example.dfproject.repositories.PatientRepository;
import com.example.dfproject.services.HopitalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class PatientController {
   /* @Autowired
    PatientRepository repository;

    @PostMapping("/patient")
    public Patient save(@RequestBody Patient patient){
        return  repository.save(patient);
    }

    @PutMapping("/patient")
    public Patient update(@RequestBody Patient patient){
        return  repository.save(patient);
    }
    @GetMapping("/patient/{id}")
    public Patient get(@PathVariable Long id){
        return  repository.findById(id).orElse(null);
    }
    @DeleteMapping("/patient/{id}")
    public void delete(@PathVariable Long id){
        repository.deleteById(id);
    }

    */
    @Autowired
   HopitalService hopitalService;
    @RequestMapping("/createPatient")
 public  String createPatient(){
        return "CreatePatient";
    }
    @RequestMapping("/savePatient")
    public  String savePatient(
            @ModelAttribute ("patient") Patient patient,
            @RequestParam("dateNaissance") String dateNaissanceController,
            ModelMap modelMap)
        throws ParseException {
            SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd");
        Date datebirth= dateFormat.parse(String.valueOf(dateNaissanceController));
        patient.setDateNaissance(datebirth);

        Patient memo = hopitalService.savePatient(patient);
        String messaageController ="the Patient whose Id  :"+memo.getId()+"is saved";
        modelMap.addAttribute("messageJsp",messaageController);
    return "CreatePatient";
    }
    @RequestMapping("/patientList")
    public String patientList(ModelMap modelMap){
        List<Patient> patientsController=hopitalService.getAllPatients();
        modelMap.addAttribute("patientJsp",patientsController);
        return "PatientList";

    }
    @RequestMapping("/deletePatient")
    public String deletePatient(@RequestParam("id") Long id,ModelMap modelMap ){
        hopitalService.deletePatientById(id);
        List<Patient> patientsController=hopitalService.getAllPatients();
        modelMap.addAttribute("patientJsp",patientsController);
        return "PatientList";
    }
    @RequestMapping("/showPatient")
    public String showPatient(@RequestParam("id") Long id,ModelMap modelMap){
        Patient patientController = hopitalService.getPatient(id);
        modelMap.addAttribute("patientJsp",patientController);
        return "EditPatient";
    }
    }



