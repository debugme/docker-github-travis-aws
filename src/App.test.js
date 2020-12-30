import { render, screen } from '@testing-library/react'
import App from './App'

test('hello text rendered correctly', () => {
  render(<App />)
  const linkElement = screen.getByText(/hello/)
  expect(linkElement).toBeInTheDocument()
})
