class CommandController < ApplicationController

  def new
  end

  def new_generate
    @command = "$ rails new "

    if params["name"].blank?
      @command += "..."
      return
    else
      @command += "#{params["name"]} "
    end

    if params["database"] == "1"
      @command += "--database=#{params["database_name"]}"
    end
  end

  def controller
  end

  def controller_generate
    if params["controller_name"].blank?
      @command = "$ rails g controller ..."
      return
    end

    @command = "$ rails g controller "
    @command += "#{params["controller_name"]} "

    for i in 1..5

      column = ""
      if params["action_name_#{i}"].present?
        column = params["action_name_#{i}"]
      end

      @command += column + " "

    end

  end

  def model
  end

  def model_generate
    @command = "$ rails g model "
    if params["model_name"].blank?
      @command += "..."
      return
    end
    @command += command_generate(params)
  end

  def scaffold
  end

  def scaffold_generate
    @command = "$ rails g scaffold "
    if params["model_name"].blank?
      @command += "..."
      return
    end
    @command += command_generate(params)
  end


  private

  def command_generate(params)

    command = "#{params["model_name"]} "

    for i in 1..5

      column = ""

      # p params["column_name_#{i}"]
      # p params["column_type_#{i}"]

      if params["column_name_#{i}"].present?
        if params["column_type_#{i}"].present?
          column = params["column_name_#{i}"] +":"+ params["column_type_#{i}"]
        else
          column = params["column_name_#{i}"]
        end
      end

      command += column + " "

    end

    command += "\\n$ rake db:migrate"

    return command

  end



end
