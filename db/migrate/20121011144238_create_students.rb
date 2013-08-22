require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class CreateStudents < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    # we will write the code here that we want to happen to the database we just created
    # (i.e.... create the table, with the columsn and data-types that we want in that table)
    # create_table()
    # # create table takes what kind of params???? i don't know..

    # create_table({name of table -- whatever you want to name it! but must match naming conventions with model.}) do 
    #  {stuff in this code block tells computer HOW to create the table.. just like foo {1+1} told us how to do foo.}

    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.date :birthday
      t.string :email
      t.string :phone
    end

  end
end
