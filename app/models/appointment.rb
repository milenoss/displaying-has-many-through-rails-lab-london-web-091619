class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient

    def doctor_name  
       doctor.name        
    end

    def patient_name
        patient.name

    end

     def parse_datetime
        "#{appointment_datetime.strftime("%B %d, %Y")} at #{appointment_datetime.strftime("%H:%M")}"
    
    end

end
