resource  "google_project_organization_policy" "deny_public_bucket"{
     project =  TF_VAR_project_id  # "My First Project"
    constraint = "constraints/storage.publocAccessPrevention"

    boolean_policy {
        enforced =true
    }

}


 
