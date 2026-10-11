output "ecs_task_execution_lookup_id" {
  description = "Map of id values across all ecs_task_execution_lookup, keyed the same as var.ecs_task_execution_lookup"
  value       = { for k, v in data.aws_ecs_task_execution.ecs_task_execution_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ecs_task_execution_lookup_capacity_provider_strategy" {
  description = "Map of capacity_provider_strategy values across all ecs_task_execution_lookup, keyed the same as var.ecs_task_execution_lookup"
  value       = { for k, v in data.aws_ecs_task_execution.ecs_task_execution_lookup : k => v.capacity_provider_strategy if v.capacity_provider_strategy != null && length(v.capacity_provider_strategy) > 0 }
}
output "ecs_task_execution_lookup_client_token" {
  description = "Map of client_token values across all ecs_task_execution_lookup, keyed the same as var.ecs_task_execution_lookup"
  value       = { for k, v in data.aws_ecs_task_execution.ecs_task_execution_lookup : k => v.client_token if v.client_token != null && length(v.client_token) > 0 }
}
output "ecs_task_execution_lookup_cluster" {
  description = "Map of cluster values across all ecs_task_execution_lookup, keyed the same as var.ecs_task_execution_lookup"
  value       = { for k, v in data.aws_ecs_task_execution.ecs_task_execution_lookup : k => v.cluster if v.cluster != null && length(v.cluster) > 0 }
}
output "ecs_task_execution_lookup_desired_count" {
  description = "Map of desired_count values across all ecs_task_execution_lookup, keyed the same as var.ecs_task_execution_lookup"
  value       = { for k, v in data.aws_ecs_task_execution.ecs_task_execution_lookup : k => v.desired_count if v.desired_count != null }
}
output "ecs_task_execution_lookup_enable_ecs_managed_tags" {
  description = "Map of enable_ecs_managed_tags values across all ecs_task_execution_lookup, keyed the same as var.ecs_task_execution_lookup"
  value       = { for k, v in data.aws_ecs_task_execution.ecs_task_execution_lookup : k => v.enable_ecs_managed_tags if v.enable_ecs_managed_tags != null }
}
output "ecs_task_execution_lookup_enable_execute_command" {
  description = "Map of enable_execute_command values across all ecs_task_execution_lookup, keyed the same as var.ecs_task_execution_lookup"
  value       = { for k, v in data.aws_ecs_task_execution.ecs_task_execution_lookup : k => v.enable_execute_command if v.enable_execute_command != null }
}
output "ecs_task_execution_lookup_group" {
  description = "Map of group values across all ecs_task_execution_lookup, keyed the same as var.ecs_task_execution_lookup"
  value       = { for k, v in data.aws_ecs_task_execution.ecs_task_execution_lookup : k => v.group if v.group != null && length(v.group) > 0 }
}
output "ecs_task_execution_lookup_launch_type" {
  description = "Map of launch_type values across all ecs_task_execution_lookup, keyed the same as var.ecs_task_execution_lookup"
  value       = { for k, v in data.aws_ecs_task_execution.ecs_task_execution_lookup : k => v.launch_type if v.launch_type != null && length(v.launch_type) > 0 }
}
output "ecs_task_execution_lookup_network_configuration" {
  description = "Map of network_configuration values across all ecs_task_execution_lookup, keyed the same as var.ecs_task_execution_lookup"
  value       = { for k, v in data.aws_ecs_task_execution.ecs_task_execution_lookup : k => one(v.network_configuration) if v.network_configuration != null && length(v.network_configuration) > 0 }
}
output "ecs_task_execution_lookup_overrides" {
  description = "Map of overrides values across all ecs_task_execution_lookup, keyed the same as var.ecs_task_execution_lookup"
  value       = { for k, v in data.aws_ecs_task_execution.ecs_task_execution_lookup : k => one(v.overrides) if v.overrides != null && length(v.overrides) > 0 }
}
output "ecs_task_execution_lookup_placement_constraints" {
  description = "Map of placement_constraints values across all ecs_task_execution_lookup, keyed the same as var.ecs_task_execution_lookup"
  value       = { for k, v in data.aws_ecs_task_execution.ecs_task_execution_lookup : k => v.placement_constraints if v.placement_constraints != null && length(v.placement_constraints) > 0 }
}
output "ecs_task_execution_lookup_placement_strategy" {
  description = "Map of placement_strategy values across all ecs_task_execution_lookup, keyed the same as var.ecs_task_execution_lookup"
  value       = { for k, v in data.aws_ecs_task_execution.ecs_task_execution_lookup : k => v.placement_strategy if v.placement_strategy != null && length(v.placement_strategy) > 0 }
}
output "ecs_task_execution_lookup_platform_version" {
  description = "Map of platform_version values across all ecs_task_execution_lookup, keyed the same as var.ecs_task_execution_lookup"
  value       = { for k, v in data.aws_ecs_task_execution.ecs_task_execution_lookup : k => v.platform_version if v.platform_version != null && length(v.platform_version) > 0 }
}
output "ecs_task_execution_lookup_propagate_tags" {
  description = "Map of propagate_tags values across all ecs_task_execution_lookup, keyed the same as var.ecs_task_execution_lookup"
  value       = { for k, v in data.aws_ecs_task_execution.ecs_task_execution_lookup : k => v.propagate_tags if v.propagate_tags != null && length(v.propagate_tags) > 0 }
}
output "ecs_task_execution_lookup_reference_id" {
  description = "Map of reference_id values across all ecs_task_execution_lookup, keyed the same as var.ecs_task_execution_lookup"
  value       = { for k, v in data.aws_ecs_task_execution.ecs_task_execution_lookup : k => v.reference_id if v.reference_id != null && length(v.reference_id) > 0 }
}
output "ecs_task_execution_lookup_region" {
  description = "Map of region values across all ecs_task_execution_lookup, keyed the same as var.ecs_task_execution_lookup"
  value       = { for k, v in data.aws_ecs_task_execution.ecs_task_execution_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}
output "ecs_task_execution_lookup_started_by" {
  description = "Map of started_by values across all ecs_task_execution_lookup, keyed the same as var.ecs_task_execution_lookup"
  value       = { for k, v in data.aws_ecs_task_execution.ecs_task_execution_lookup : k => v.started_by if v.started_by != null && length(v.started_by) > 0 }
}
output "ecs_task_execution_lookup_tags" {
  description = "Map of tags values across all ecs_task_execution_lookup, keyed the same as var.ecs_task_execution_lookup"
  value       = { for k, v in data.aws_ecs_task_execution.ecs_task_execution_lookup : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "ecs_task_execution_lookup_task_arns" {
  description = "Map of task_arns values across all ecs_task_execution_lookup, keyed the same as var.ecs_task_execution_lookup"
  value       = { for k, v in data.aws_ecs_task_execution.ecs_task_execution_lookup : k => v.task_arns if v.task_arns != null && length(v.task_arns) > 0 }
}
output "ecs_task_execution_lookup_task_definition" {
  description = "Map of task_definition values across all ecs_task_execution_lookup, keyed the same as var.ecs_task_execution_lookup"
  value       = { for k, v in data.aws_ecs_task_execution.ecs_task_execution_lookup : k => v.task_definition if v.task_definition != null && length(v.task_definition) > 0 }
}

