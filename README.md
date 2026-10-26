# CRM Application - Ruby on Rails

A Ruby on Rails Customer Relationship Management (CRM) web application built with **Active Admin**, **Bulma CSS**, and **Active Storage**. The application allows public visitors to browse and filter customer directory cards, while providing an authenticated administrative backend to manage customer records, contact notes, and profile image uploads.

---

## 🛠️ Tech Stack & Dependencies

* **Ruby Version:** `3.x`
* **Rails Version:** `7.x`
* **Database:** SQLite3 / MariaDB
* **CSS Framework:** Bulma CSS Framework
* **Admin Interface:** Active Admin (with Devise)
* **File Storage:** Rails Active Storage (Image Uploads)

---

## 🚀 Quick Start & Installation

Follow these step-by-step commands to set up, initialize, and run the application locally on your machine.

### 1. Clone the Repository
```bash
git clone [https://github.com/lna2-ux/CRM.git](https://github.com/lna2-ux/CRM.git)
cd CRM
bundle install
bin/rails db:prepare
bin/rails db:seed

bin/rails db:prepare
bin/rails db:seed
bin/rails server

http://localhost:3000
: http://localhost:3000/admin

Email: admin@example.com

Password: password