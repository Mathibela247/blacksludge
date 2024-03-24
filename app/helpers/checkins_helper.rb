module CheckinsHelper
    def print_document
        # Define the printer name or printer IP address
        printer_name = "10.132.50.11"
    
        # Define the file path of the document you want to print
        file_path = Rails.root.join('/Users/johannesm/appspace/blacksludge/app/assets/images/bg-black.jpg')
    
        # Construct the print command
        print_command = "lp -d #{printer_name} #{file_path}"
    
        # Execute the print command
        success = system(print_command)
    
        if success
          flash[:success] = "Document sent to printer successfully!"
        else
          flash[:error] = "Failed to send document to printer."
        end
    
        # redirect_to root_path
      end
end
