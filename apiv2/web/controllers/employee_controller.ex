defmodule Apiv2.EmployeeController do
  use Apiv2.Web, :controller

  alias Apiv2.Employee

  plug :scrub_params, "employee" when action in [:create, :update]
  

  def index(conn, params) do
    employees = params |> Apiv2.EmployeeQuery.index |> Repo.all
    render(conn, "index.json", employees: employees)
  end

  def show(conn, %{"id" => id}) do
    employee = Repo.get!(Employee, id)
    render conn, "show.json", employee: employee
  end

  def create(conn, %{"employee" => employee_params}) do
    changeset = Employee.changeset(%Employee{}, employee_params)

    if changeset.valid? do
      employee = Repo.insert!(changeset)
      render(conn, "show.json", employee: employee)
    else
      conn
      |> put_status(:unprocessable_entity)
      |> render(Apiv2.ChangesetView, "error.json", changeset: changeset)
    end
  end

  def update(conn, %{"id" => id, "employee" => employee_params}) do
    employee = Repo.get!(Employee, id)
    changeset = Employee.changeset(employee, employee_params)

    if changeset.valid? do
      employee = Repo.update!(changeset)
      render(conn, "show.json", employee: employee)
    else
      conn
      |> put_status(:unprocessable_entity)
      |> render(Apiv2.ChangesetView, "error.json", changeset: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    employee = Repo.get!(Employee, id)

    employee = Repo.delete!(employee)
    render(conn, "show.json", employee: employee)
  end
end
