# app/controllers/print_controller.rb
class PrintController < ApplicationController
    def print_document(print)
      # Define the printer name or printer IP address
      printer_name = "Your_Printer_Name_or_IP_Address"
  
      # Define the file path of the document you want to print
      file_path = Rails.root.join(print)
  
      # Construct the print command
      print_command = "lp -d #{printer_name} #{file_path}"
  
      # Execute the print command
      success = system(print_command)
  
      if success
        flash[:success] = "Document sent to printer successfully!"
      else
        flash[:error] = "Failed to send document to printer."
      end
  
      redirect_to root_path
    end
  end