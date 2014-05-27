Role.create!([
  {name: "admin"},
  {name: "user"},
  {name: "org_admin"}
])
# uses encrypted password.  See passwrod safe!
admin = User.new(
  {firstname: "DMP", surname: "Administrator", email: "dittest@ualberta.ca", 
   password: "password", password_confirmation: "password"}
)
admin.encrypted_password = "$2a$10$q7XUQxvbFb1QcYhrngqcd..sM8.DsviZUxUBwDpC7ZmuohHrkOeZm"
admin.add_role(:admin)
admin.skip_confirmation!
admin.save!
OrganisationType.create!([
  {name: "Organization", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt"},
  {name: "Funder", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt"},
  {name: "Project", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt"},
  {name: "School", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt"},
  {name: "Institution", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt"}
])
ualberta = Organisation.create!(
  {name: "University of Alberta", abbreviation: "ualberta", description: "", target_url: "", logo_file_id: nil, banner_file_id: nil, organisation_type_id:  OrganisationType.find_by_name("Institution").id, domain: "ualberta.ca", wayfless_entity: nil, stylesheet_file_id: nil, parent_id: nil, sort_name: "University of Alberta"}
)
UserStatus.create!([
  {name: "Active", description: ""},
  {name: "Archived", description: ""}
])
Theme.create!([
  {title: "Related Policies", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Licensing of Existing Data", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Responsibilities", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Discovery by Users", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Preservation Plan", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Resourcing: Hardware and Software", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Period of Preservation", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Data Security", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Method For Data Sharing", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Active Data Storage", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Data Capture Methods", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Existing Data", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Restrictions on Sharing", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Data Repository", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Timeframe For Data Sharing", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Expected Reuse", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Description of Data Content", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Resourcing: Preservation and Data Sharing", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Data Quality", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Data Selection", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Metadata Capture", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Relationship to Existing Data", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Data Volumes", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "IPR Ownership and Licencing", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Embargo Period", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Managed Access Procedures", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Ethical Issues", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Data Organisation", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Metadata Standards", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Documentation", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Backup Procedures", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Resourcing: Skills and Training", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Data Type", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Audience", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Data Format", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", locale: "en"}
])
UserType.create!([
  {name: "Developer", description: ""},
  {name: "Project Manager", description: ""},
  {name: "Archivist", description: ""},
  {name: "Librarian", description: ""}
])
UserOrgRole.create!([
  {user_id: 5, organisation_id: ualberta.id, user_role_type_id: nil}
])
dmptemplate = Dmptemplate.create!(
  {title: "University of Alberta Template", description: "This is the generic DMP template for University of Alberta.", published: true, organisation_id: ualberta.id, locale: nil, is_default: true}
)
phase = Phase.create!(
  {title: "University of Alberta Data Management Questions", description: "", number: 1, dmptemplate_id: dmptemplate.id, external_guidance_url: nil}
)
version = Version.create!(
  {title: "University of Alberta Version 1", description: "", published: true, number: 1, phase_id: phase.id}
)
QuestionFormat.create!([
  {title: "Text area", description: ""},
  {title: "Text field", description: ""},
  {title: "Radio buttons", description: ""},
  {title: "Check box", description: ""},
  {title: "Dropdown", description: ""},
  {title: "Multi select box", description: ""}
])
Section.create!([
  {title: "Data Collection", description: "", number: 1, version_id: version.id, organisation_id: ualberta.id},
  {title: "Documentation and Metadata", description: "", number: 2, version_id: version.id, organisation_id: ualberta.id},
  {title: "Storage and Backup", description: "", number: 3, version_id: version.id, organisation_id: ualberta.id},
  {title: "Preservation", description: "", number: 4, version_id: version.id, organisation_id: ualberta.id},
  {title: "Data Sharing and Reuse", description: "", number: 5, version_id: version.id, organisation_id: ualberta.id},
  {title: "Responsibilities and Resources", description: "", number: 6, version_id: version.id, organisation_id: ualberta.id}
])
Question.create!([
  {text: "What types of data will you collect, create, acquire and/or record?", question_type: nil, default_value: "", suggested_answer: "", guidance: "Provide a short description of the types of data that will be generated in the research project (e.g., samples, physical collections, software, curriculum materials, and other materials to be produced during the course of the project).", number: 1, parent_id: nil, dependency_id: nil, dependency_text: "", section_id: Section.find_by_title("Data Collection").id, multiple_choice: false, multiple_permitted: false, is_expanded: true, is_text_field: false, question_format_id: QuestionFormat.find_by_title("Text area").id},
  {text: "How will your data be collected, created, acquired and/or recorded? \r\n", question_type: nil, default_value: "", suggested_answer: "", guidance: "<p>Provide a short description of the data collection methods you will be using (eg. print vs. online surveys, audio vs. video recorded interviews, instrumentation, lab notebooks, etc.)</p>\r\n<p>If data are collected with mobile devices, please identify how will you transfer and store the data securely.</p> ", number: 2, parent_id: nil, dependency_id: nil, dependency_text: "", section_id: Section.find_by_title("Data Collection").id, multiple_choice: false, multiple_permitted: false, is_expanded: true, is_text_field: false, question_format_id: QuestionFormat.find_by_title("Text area").id},
  {text: "Will you be using any existing data?  From where are you getting it and how will you be using it?  ", question_type: nil, default_value: "", suggested_answer: "", guidance: "Provide a brief description of any existing data sources you will be using, and describe how you will be using that data.  Describe how you will integrate this existing data source with data that you are collecting.", number: 3, parent_id: nil, dependency_id: nil, dependency_text: "", section_id: Section.find_by_title("Data Collection").id, multiple_choice: false, multiple_permitted: false, is_expanded: true, is_text_field: false, question_format_id: QuestionFormat.find_by_title("Text area").id},
  {text: "How much data will you be collecting, and at what growth rate? How often will it change?", question_type: nil, default_value: "", suggested_answer: "", guidance: "Include an estimate of the amount of data being collected, how fast you anticipate it growing, and whether it will change over time.", number: 4, parent_id: nil, dependency_id: nil, dependency_text: "", section_id: Section.find_by_title("Data Collection").id, multiple_choice: false, multiple_permitted: false, is_expanded: true, is_text_field: false, question_format_id: QuestionFormat.find_by_title("Text area").id},
  {text: "Which data formats will you use?", question_type: nil, default_value: "", suggested_answer: "", guidance: "<p>You should identify the file formats in which your data will be collected, stored, maintained, and made available, and any software/hardware needed to access and analyze the data.</p>\r\n<p>Do formats and software enable sharing and long-term validity of data, such as non-proprietary software and software based on open standards?</p>", number: 5, parent_id: nil, dependency_id: nil, dependency_text: "", section_id: Section.find_by_title("Data Collection").id, multiple_choice: false, multiple_permitted: false, is_expanded: true, is_text_field: false, question_format_id: QuestionFormat.find_by_title("Text area").id},
  {text: "How will you document and describe what your data mean, how they were collected and the methods used to create them? ", question_type: nil, default_value: "", suggested_answer: "", guidance: "<p>Identify what procedural documentation you will create to explain the creation/management of data files.</p>\r\n<p>Describe any contextual details (metadata) that are necessary to make the data you capture or collect meaningful to you and others.Describe how you will create or capture these contextual details.</p>\r\n", number: 1, parent_id: nil, dependency_id: nil, dependency_text: "", section_id: Section.find_by_title("Documentation and Metadata").id, multiple_choice: false, multiple_permitted: false, is_expanded: true, is_text_field: false, question_format_id: QuestionFormat.find_by_title("Text area").id},
  {text: "Which metadata standard will you use to annotate and describe your data?", question_type: nil, default_value: "", suggested_answer: "", guidance: "Provide a description of the metadata standard (e.g. DDI) and tools (e.g. Colectica) that you will use to annotate or describe your data. Will you use your discipline's metadata standard?  Where existing standards are absent or deemed inadequate, this should be documented along with any proposed solutions or remedies.", number: 2, parent_id: nil, dependency_id: nil, dependency_text: "", section_id: Section.find_by_title("Documentation and Metadata").id, multiple_choice: false, multiple_permitted: false, is_expanded: true, is_text_field: false, question_format_id: QuestionFormat.find_by_title("Text area").id},
  {text: "How will you label and organize data, records and files in a consistent way?", question_type: nil, default_value: "", suggested_answer: "", guidance: "Describe the procedure you will use for naming files in a consistent manner.  What naming convention will you use? What project and data identifiers will be assigned, if applicable?  ", number: 3, parent_id: nil, dependency_id: nil, dependency_text: "", section_id: Section.find_by_title("Documentation and Metadata").id, multiple_choice: false, multiple_permitted: false, is_expanded: true, is_text_field: false, question_format_id: QuestionFormat.find_by_title("Text area").id},
  {text: "Are your digital and non-digital data, and any backup copies, held in a safe and secure location?  How will you manage access and security?", question_type: nil, default_value: "", suggested_answer: "", guidance: "Provide a description of how your data will be organized, archived, and protected during your research project. This should include storage methods and backup procedures for your data, as well as the physical and digital resources needed. Any security or protection measures required for sensitive material or intellectual property should be addressed here as well, including who has access to the data.", number: 1, parent_id: nil, dependency_id: nil, dependency_text: "", section_id: Section.find_by_title("Storage and Backup").id, multiple_choice: false, multiple_permitted: false, is_expanded: true, is_text_field: false, question_format_id: QuestionFormat.find_by_title("Text area").id},
  {text: "How many copies will you maintain and how will you keep them synchronized? How will you handle file versioning, so you always know which is the master version of your data?", question_type: nil, default_value: "", suggested_answer: "", guidance: "Describe how you and your research team will keep multiple copies of your data synchronized.  Please include whether you will be using any systematic means of versioning files (e.g. Dataverse or a source control management system like Github). If synchronization of the data by automated means is not possible, describe how you will keep track of it manually.", number: 2, parent_id: nil, dependency_id: nil, dependency_text: "", section_id: Section.find_by_title("Storage and Backup").id, multiple_choice: false, multiple_permitted: false, is_expanded: true, is_text_field: false, question_format_id: QuestionFormat.find_by_title("Text area").id},
  {text: "Which data will be of long-term value and should therefore be retained, shared, and/or preserved?\r\n", question_type: nil, default_value: "", suggested_answer: "", guidance: "Indicate how data will be selected for archiving, how long the data should be held, and what your plans are for eventual transition or termination of the data collection in the future.  \r\n", number: 1, parent_id: nil, dependency_id: nil, dependency_text: "", section_id: Section.find_by_title("Preservation").id, multiple_choice: false, multiple_permitted: false, is_expanded: true, is_text_field: false, question_format_id: QuestionFormat.find_by_title("Text area").id},
  {text: "How will you prepare the data for preservation and access?  What are the anticipated file formats that will be used for preservation and access?  \r\n", question_type: nil, default_value: "", suggested_answer: "", guidance: "<p>If conversion is necessary, describe the transformations that are required to prepare data for long-term preservation and/or data sharing (e.g., data cleaning, normalization, or removing personally-identifying information where appropriate).  What file formats are most appropriate for preservation and for sharing?</p> \r\n<p>When converting data across formats, how will you check that no data or internal metadata have been lost or changed?</p>\r\n", number: 2, parent_id: nil, dependency_id: nil, dependency_text: "", section_id: Section.find_by_title("Preservation").id, multiple_choice: false, multiple_permitted: false, is_expanded: true, is_text_field: false, question_format_id: QuestionFormat.find_by_title("Text area").id},
  {text: "Where will the data be preserved for the long-term? How will it remain accessible?", question_type: nil, default_value: "", suggested_answer: "", guidance: "Indicate which archive, repository, central database, or data center you have identified as a place to deposit the data (e.g. ERA or Dataverse).", number: 3, parent_id: nil, dependency_id: nil, dependency_text: "", section_id: Section.find_by_title("Preservation").id, multiple_choice: false, multiple_permitted: false, is_expanded: false, is_text_field: true, question_format_id: QuestionFormat.find_by_title("Text area").id},
  {text: "What data will you share and in what form (raw/derived /published)? \r\n\r\n", question_type: nil, default_value: "", suggested_answer: "", guidance: "Provide a rationale for why you will share this data.  Describe which communities/groups are likely to be interested in the data. Describe the intended or foreseeable uses and users of the data.", number: nil, parent_id: nil, dependency_id: nil, dependency_text: "", section_id: nil, multiple_choice: false, multiple_permitted: false, is_expanded: true, is_text_field: false, question_format_id: QuestionFormat.find_by_title("Text area").id},
  {text: "What data will you share and in what form (raw/derived/published)? \r\n\r\n", question_type: nil, default_value: "", suggested_answer: "", guidance: "<p>Provide a rationale for why you will share this data.  Is data sharing stipulated in your grant? Is so, which data?</p>\r\n\r\n<p>Describe which communities/groups are likely to be interested in the data, and the intended or foreseeable uses and users of the data.</p>  ", number: 1, parent_id: nil, dependency_id: nil, dependency_text: "", section_id: Section.find_by_title("Data Sharing and Reuse").id, multiple_choice: false, multiple_permitted: false, is_expanded: true, is_text_field: false, question_format_id: QuestionFormat.find_by_title("Text area").id},
  {text: "How will you share the data?\r\n", question_type: nil, default_value: "", suggested_answer: "", guidance: "<p>Describe which data will be shared and how you will make the data available including any resources needed such as equipment, systems, expertise, etc.</p>\r\n<p>Indicate when you will make the data available (including any factors such as embargo periods for political, commercial, patent reasons, or complying with publishing policies).</p>\r\n<p>Describe the process for gaining access to the data.</p>\r\n<p>Indicate if you anticipate that the original data collector, creator, or principal investigator retains the right to use the data before opening it up to wider use.</p>\r\n", number: 2, parent_id: nil, dependency_id: nil, dependency_text: "", section_id: Section.find_by_title("Data Sharing and Reuse").id, multiple_choice: false, multiple_permitted: false, is_expanded: true, is_text_field: false, question_format_id: QuestionFormat.find_by_title("Text area").id},
  {text: "Under what conditions will data be shared and licensed for re-use (embargo considerations/creative commons licenses/upon request)?", question_type: nil, default_value: "", suggested_answer: "", guidance: "<p>Explain rationale for any restrictions on who may access the data and under what conditions, and if these restrictions will change over time.</p>\r\n\r\n<p>Indicate if there are any ethical and privacy issues related to sharing the data. If so, describe how those will be resolved if the data is shared (e.g., removing any personally identifying information in the data, working with institutional ethical committees, resolving potential conflicts by way of formal consent agreements).</p>\r\n", number: 3, parent_id: nil, dependency_id: nil, dependency_text: "", section_id: Section.find_by_title("Data Sharing and Reuse").id, multiple_choice: false, multiple_permitted: false, is_expanded: true, is_text_field: false, question_format_id: QuestionFormat.find_by_title("Text area").id},
  {text: "Who will be responsible for data management during the project (i.e. data creation, processing, analysis)?", question_type: nil, default_value: "", suggested_answer: "", guidance: "List staff/organizational roles and their responsibilities for carrying out the data management plan (DMP). Include a description of time allocations, training requirements, and contributions of non-project staff, as appropriate. Indicate what will happen should personnel changes occur or if the PI leaves the institution. Describe the process for transferring responsibility for the data.", number: 1, parent_id: nil, dependency_id: nil, dependency_text: "", section_id: Section.find_by_title("Responsibilities and Resources").id, multiple_choice: false, multiple_permitted: false, is_expanded: true, is_text_field: false, question_format_id: QuestionFormat.find_by_title("Text area").id},
  {text: "Who will be responsible for data sharing and preservation after the project?", question_type: nil, default_value: "", suggested_answer: "", guidance: "Indicate who will have primary responsibility for how the data will persist over time when the original personnel are no longer associated with the project.  Indicate who will have primary responsibility for how the data will persist over time when the original personnel are no longer associated with the project.", number: 2, parent_id: nil, dependency_id: nil, dependency_text: "", section_id: Section.find_by_title("Data Sharing and Reuse").id, multiple_choice: false, multiple_permitted: false, is_expanded: true, is_text_field: false, question_format_id: QuestionFormat.find_by_title("Text area").id},
  {text: "What resources will you require to implement your plan? Will extra people, time or hardware, storage be required?  How much will this cost (estimation)?", question_type: nil, default_value: "", suggested_answer: "", guidance: "<p>Include any costs for data management services.</p>\r\n<p>Include any costs for managing data during the course of the project as well as after the project is complete.</p>\r\n<p>Check with the funding agency to determine where in the proposal to include costs related to data management.</p>\r\n", number: 3, parent_id: nil, dependency_id: nil, dependency_text: "", section_id: Section.find_by_title("Responsibilities and Resources").id, multiple_choice: false, multiple_permitted: false, is_expanded: true, is_text_field: false, question_format_id: QuestionFormat.find_by_title("Text area").id}
])
