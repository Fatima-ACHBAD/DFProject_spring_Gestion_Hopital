package com.example.dfproject.services;

import com.example.dfproject.entities.Patient;
import com.example.dfproject.repositories.PatientRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class HopitalServiceImpl implements HopitalService {
    @Autowired
    PatientRepository patientRepository;
    @Override
    public Patient savePatient(Patient patient) {
        return patientRepository.save(patient);
    }

    @Override
    public Patient updatePatient(Patient patient) {
        return patientRepository.save(patient);
    }

    @Override
    public Patient getPatient(Long id) {
        return patientRepository.findById(id).get();
    }

    @Override
    public List<Patient> getAllPatients() {
        return patientRepository.findAll();
    }


    @Override
    public void deletePatientById(Long id) {
        patientRepository.deleteById(id);

    }

    @Override
    public void deleteAllPatients() {
        patientRepository.deleteAll();

    }
}
