output "test" {
  value = "${module.ssm_params.param_value["assessment_batch_results_ddb_id"]}"
}
