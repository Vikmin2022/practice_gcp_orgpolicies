resource  "google_project_organization_policy" "deny_public_bucket"{
     project =  "My First Project" # "My First Project"
    constraint = "constraints/storage.publocAccessPrevention"

    boolean_policy {
        enforced =true
    }

}


 
