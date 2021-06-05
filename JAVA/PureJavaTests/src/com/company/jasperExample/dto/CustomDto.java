package com.company.jasperExample.dto;

import java.util.List;

public class CustomDto {
    private List<CompanyDto> companyDtos;
    private List<ProgrammingDto> programmingDtos;

    public List<CompanyDto> getCompanyDtos() {
        return companyDtos;
    }

    public void setCompanyDtos(List<CompanyDto> companyDtos) {
        this.companyDtos = companyDtos;
    }

    public List<ProgrammingDto> getProgrammingDtos() {
        return programmingDtos;
    }

    public void setProgrammingDtos(List<ProgrammingDto> programmingDtos) {
        this.programmingDtos = programmingDtos;
    }
}
