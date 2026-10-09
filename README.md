# Ground Control

Ground Control is a single-player airline and airport management sandbox
built with Java and Processing. The goal is to establish airports in
fictional cities, acquire aircraft, schedule flights, transport
passengers, and build a profitable airline network.

There are no AI competitors or fixed victory condition. The player sets
the pace and expands the network over time.

## Current state

The project is in early development. The current build includes the main
game loop, game states, a simulation clock, a scrollable and zoomable
world map, fictional city data, city population growth, and the initial
airport construction system.

The world currently contains eight predefined cities. Five are
discovered at the start, and three are undiscovered. Each city can have
at most one airport. Airports currently start with two gates.

Aircraft, flight scheduling, passenger counts and demand, and the
financial system have not yet been implemented. City demand values are
currently abstract indicators rather than actual passenger counts.
Airport construction costs, runway capacity, and upgrades are also
future work.

## Running the game

The project uses Java with the Processing environment and targets
Windows desktop.

1.  Install Processing from the official website:
    https://processing.org/download
2.  Open the project in the Processing IDE.
3.  Run the sketch.

The project is under active development, so controls and features may
change as systems are added.

## Controls

  Input         Action
  ------------- --------------------------------------------------
  `P`           Pause or resume the simulation
  `,`           Decrease simulation speed
  `.`           Increase simulation speed
  `B`           Build an airport in the selected discovered city
  Mouse         Select cities and pan the camera
  Mouse wheel   Zoom the world map

## Project structure

The Processing sketch is organized around a small set of core
responsibilities:

-   `GroundControl.pde` initializes Processing and delegates to the
    game.
-   `Game.pde` manages the world, simulation clock, camera, selected
    city, and game state.
-   `World.pde` stores the world and its cities and handles airport
    creation.
-   `City.pde` stores city data and its airport, if one has been built.
-   `Airport.pde` represents an airport.
-   `WorldRenderer.pde` draws the world and selected-city information.

The codebase aims to keep simulation logic separate from rendering where
practical and to keep `draw()` focused on delegating update and render
work.

## Development notes

-   Use two spaces for indentation.
-   Keep world and city definitions data-driven.
-   Aircraft will be modeled as individual entities; routes and flights
    will represent scheduled operations.
-   Passenger demand is intended to be modeled abstractly rather than as
    individual passenger entities.
-   Placeholder graphics are sufficient during early development; visual
    polish can come later.

## Roadmap

The next planned task is to define airport capacity and construction
rules. The broader roadmap includes aircraft purchasing and management,
flight scheduling, passenger demand, airline finances, and improvements
to the interface and presentation.

For implementation status and current design decisions, see
[`PROJECT_STATUS.md`](PROJECT_STATUS.md).
