🤖 DemoQA Automation with Robot Framework
This project showcases automated testing of the DemoQA website using Robot Framework in conjunction with SeleniumLibrary. It serves as a practical example of implementing end-to-end tests for web applications.

📌 Project Overview
Framework: Robot Framework
Browser Automation: SeleniumLibrary
Test Target: DemoQA
Author: @alineslopes

🧰 Prerequisites
Ensure the following are installed on your system:

Python 3.6+
pip (Python package installer)
Google Chrome or another supported browser
ChromeDriver compatible with your Chrome version

⚙️ Setup Instructions
1. Clone the Repository
   git clone https://github.com/alineslopes/demoqa-robotframework.git
   cd demoqa-robotframework

3. Create a Virtual Environment (Optional but Recommended)
   python -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate

5. Install Dependencies
   pip install robotframework selenium robotframework-seleniumlibrary

7. Verify Installation
   robot --version

🚀 Running the Tests

1.Navigate to the Project Directory
cd demoqa-robotframework

2.Execute Test Suites
robot tests/

3.View Test Reports

After execution, Robot Framework generates the following reports:

report.html: Overview of the test execution.
log.html: Detailed logs of the test execution.
output.xml: Raw output in XML format.
