// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "@hotwired/stimulus"
import "controllers"
import * as bootstrap from "bootstrap" 
window.bootstrap = bootstrap
import { Turbo } from "@hotwired/turbo-rails"
Turbo.session.drive = false
// import "bootstrap/dist/js/bootstrap.bundle"
// import Rails from "@rails/ujs"
// Rails.start()