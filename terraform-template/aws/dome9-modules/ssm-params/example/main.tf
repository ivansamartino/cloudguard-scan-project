module "ssm_params" {
  source = ".."

  params = {
    vpc_id = "common"
    assessment_batch_results_ddb_id = "db"
  }
  config = {
    _env = "preqa"
    _owner = "eli"
    _project = "icarus"
  }
}
