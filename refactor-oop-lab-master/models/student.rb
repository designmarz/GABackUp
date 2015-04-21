class Student
# --------------------------------
attr_reader :id
attr_accessor :name, :age, :spirit_animal, :id, :squad_id

def initialize params, existing=false
  @name = params["name"]
  @age = params["age"]
  @spirit_animal = params["spirit_animal"]
  @id = params["id"]
  @squad_id = params["squad_id"]
  @existing = existing
end

def existing?
  @existing
end

def self.conn= connection
  @conn = connection
end

def self.conn
  @conn
end 

  # --------------------------------
  def self.all
    @conn.exec("SELECT * FROM students")
  end

  def self.find squad_id, id
   new @conn.exec('SELECT * FROM students WHERE squad_id = $1 AND id = $2', [ squad_id, id] )[0], true 
  end

 def save 
  if existing?
    Student.conn.exec('UPDATE students SET name=$1, age=$2, spirit_animal=$3 WHERE id = $4', [ name, age, spirit_animal, id ] )
  else
    Student.conn.exec('INSERT INTO students (name, age, spirit_animal, squad_id) values ($1,$2,$3,$4)', [ name, age, spirit_animal, squad_id])
  end
 end

def self.create params
  new(params).save
end

def destroy
  Student.conn.exec('DELETE FROM students WHERE id = ($1)', [ id ] )
end
# --------------------------------
end
