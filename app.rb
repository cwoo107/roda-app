require "roda"

class Myapp < Roda
  plugin :static, ["/images", "/css", "/js"]
  plugin :render
  plugin :head

  route do |r|
    r.root do
        view("home")
    end
    r.get "myWork" do
        view("myWork")
    end
    r.get "skills" do
        view("skills")
    end
    r.get "about" do
        view("about")
    end
    r.get "contact" do
        view("contact")
    end
  end
end