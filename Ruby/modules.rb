module Model
    class Company
    end
    class Employee
    end     
end 

module Reports
    class ExcelReporter
        def build
             puts "Generating excel report"
        end   
        def build2(prueba)
            puts "Generating excel report"+prueba 
       end  
    end

    class EmailReporter

    end    
end     


excel_report = Reports::ExcelReporter.new
excel_report.build
excel_report.build2('eee')