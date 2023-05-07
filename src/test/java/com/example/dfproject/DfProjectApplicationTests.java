package com.example.dfproject;

import com.example.dfproject.entities.Patient;
import com.example.dfproject.repositories.PatientRepository;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.Date;
import java.util.List;

@SpringBootTest
class DfProjectApplicationTests {
    @Autowired
    PatientRepository patientRepository;

    @Test
    public void TestCreatePatient() {
        Patient patient = new Patient("ACB", new Date(), false, "adresse", "5011", "060606") ;
            patientRepository.save(patient);
    }
   @Test
    public void TestUpdatePatient() {
        Patient patient =patientRepository.findById(1L).get();
        patient.setAdresse("ddr");
        patientRepository.save(patient);
    }
    @Test
    public void TestPatientById() {
        Patient patient =patientRepository.findById(4L).get();
        System.out.println(patient);

    }
    @Test
    public void TestFindAllPatients() {
        List<Patient> patients=patientRepository.findAll();
        patients.forEach(System.out::println);
    }
    @Test
    public void TestDeletePatientById() {
       patientRepository.deleteById(1L);
    }
    @Test
    public void TestDeleteAllPatients() {
        patientRepository.deleteAll();
    }


}