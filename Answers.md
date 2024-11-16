# Questions

#### 1. Tell us what pieces of software you think are necessary to develop for the working prototype and how they are related. We call each application (web, mobile or desktop), each API, each batch process that can be deployed independently a piece of software. Support yourself with a diagram if you think necessary.

You will need a module for restaurants, in which they can offer their products, a module for customers to choose and order, a module for delivery people to register and accept deliveries.
All of these modules can be accessed via the web, app or desktop.
In the restaurant module, you will have the registration of products, viewing of orders, viewing of available delivery people and linking the delivery person with the order. The customer module will have a list of registered restaurants and products offered, a shopping cart, a payment route and order tracking. The delivery drivers module will contain the orders available to be delivered and tracking of the chosen order

#### 2. Tell us about the type of architecture you chose for question (1). Monolithic? Micro-services? Any intermediate? Other? Comment on what you based to make this decision.

For the MVP, only the frontend would be separated into another service, the modules would all be integrated into a monolith to avoid high complexity right from the beginning and also because it has shared functionalities.

#### 3. Describe the work methodology you would use for development. It can be some known methodology (Scrum, XP, RUP), an adaptation, or a mixture between several methodologies. Whatever your experience has shown you works. Tell us why you think this form is appropriate for our problem.

The work methodology would initially be Kaban, as it allows new tasks and demands to be added to the worflow, SCRUM is also very good, but very rigid for the beginning of the project

#### 4. Describe the workflow you would use to collaborate using Git. As with (3), you can use something familiar or an adaptation.

A branch must be created for each subtask and, upon completion, a PR must be opened for the main task branch. After the code is revised, the merge into the main task branch will be done, only when all subtasks of the task are completed, we will merge to main

#### 5. Do you think it is necessary to add any extra member to the team during the development of the prototype? What would your role be? Do you think it would be necessary to add new members after the prototype phase? When and why?

After the prototype is made, it will be necessary for at least one QA to join the team to test the entire service and also a UX person to improve the user experience.

#### 6. What other considerations would you have to make the development process robust and efficient?

Before starting to develop, it is necessary to clearly define what the customer's expectations are about the prototype and what their pain point is that we can solve. Have all technical requirements clarified and also count on the help of Impact Lead and the data scientist team throughout the process
