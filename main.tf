data "aws_ecs_task_execution" "ecs_task_execution_lookup" {
  for_each = var.ecs_task_execution_lookup

  cluster                 = each.value.cluster
  task_definition         = each.value.task_definition
  client_token            = each.value.client_token
  desired_count           = each.value.desired_count
  enable_ecs_managed_tags = each.value.enable_ecs_managed_tags
  enable_execute_command  = each.value.enable_execute_command
  group                   = each.value.group
  launch_type             = each.value.launch_type
  platform_version        = each.value.platform_version
  propagate_tags          = each.value.propagate_tags
  reference_id            = each.value.reference_id
  region                  = each.value.region
  started_by              = each.value.started_by
  tags                    = each.value.tags

  dynamic "capacity_provider_strategy" {
    for_each = each.value.capacity_provider_strategy != null ? each.value.capacity_provider_strategy : []
    content {
      base              = capacity_provider_strategy.value.base
      capacity_provider = capacity_provider_strategy.value.capacity_provider
      weight            = capacity_provider_strategy.value.weight
    }
  }

  dynamic "network_configuration" {
    for_each = each.value.network_configuration != null ? [each.value.network_configuration] : []
    content {
      assign_public_ip = network_configuration.value.assign_public_ip
      security_groups  = network_configuration.value.security_groups
      subnets          = network_configuration.value.subnets
    }
  }

  dynamic "overrides" {
    for_each = each.value.overrides != null ? [each.value.overrides] : []
    content {
      dynamic "container_overrides" {
        for_each = overrides.value.container_overrides != null ? overrides.value.container_overrides : []
        content {
          command = container_overrides.value.command
          cpu     = container_overrides.value.cpu
          dynamic "environment" {
            for_each = container_overrides.value.environment != null ? container_overrides.value.environment : []
            content {
              key   = environment.value.key
              value = environment.value.value
            }
          }
          memory             = container_overrides.value.memory
          memory_reservation = container_overrides.value.memory_reservation
          name               = container_overrides.value.name
          dynamic "resource_requirements" {
            for_each = container_overrides.value.resource_requirements != null ? container_overrides.value.resource_requirements : []
            content {
              type  = resource_requirements.value.type
              value = resource_requirements.value.value
            }
          }
        }
      }
      cpu                = overrides.value.cpu
      execution_role_arn = overrides.value.execution_role_arn
      memory             = overrides.value.memory
      task_role_arn      = overrides.value.task_role_arn
    }
  }

  dynamic "placement_constraints" {
    for_each = each.value.placement_constraints != null ? each.value.placement_constraints : []
    content {
      expression = placement_constraints.value.expression
      type       = placement_constraints.value.type
    }
  }

  dynamic "placement_strategy" {
    for_each = each.value.placement_strategy != null ? each.value.placement_strategy : []
    content {
      field = placement_strategy.value.field
      type  = placement_strategy.value.type
    }
  }
}

