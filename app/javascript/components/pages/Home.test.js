import React from "react"
import { render, screen } from "@testing-library/react"
import Home from "./Home"
import { BrowserRouter } from "react-router-dom"
import userEvent from "@testing-library/user-event"

describe("<Home />", () => {
  it("renders without crashing", () => {
    render(
      <BrowserRouter>
        <Home />
      </BrowserRouter>
    )
  })
  it("can see the title of the page", () => {
    render(
      <BrowserRouter>
        <Home />
      </BrowserRouter>
    )
    const title = screen.getByText(/welcome/i)
    expect(title).toBeInTheDocument()
  })
})
