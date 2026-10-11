variable "ecs_task_execution_lookup" {
  description = <<EOT
Map of ecs_task_execution_lookup, attributes below
Required:
    - cluster
    - task_definition
Optional:
    - client_token
    - desired_count
    - enable_ecs_managed_tags
    - enable_execute_command
    - group
    - launch_type
    - platform_version
    - propagate_tags
    - reference_id
    - region
    - started_by
    - tags
    - capacity_provider_strategy (block):
        - base (optional)
        - capacity_provider (required)
        - weight (optional)
    - network_configuration (block):
        - assign_public_ip (optional)
        - security_groups (optional)
        - subnets (required)
    - overrides (block):
        - container_overrides (optional, block):
            - command (optional)
            - cpu (optional)
            - environment (optional, block):
                - key (required)
                - value (required)
            - memory (optional)
            - memory_reservation (optional)
            - name (required)
            - resource_requirements (optional, block):
                - type (required)
                - value (required)
        - cpu (optional)
        - execution_role_arn (optional)
        - memory (optional)
        - task_role_arn (optional)
    - placement_constraints (block):
        - expression (optional)
        - type (required)
    - placement_strategy (block):
        - field (optional)
        - type (required)
EOT

  type = map(object({
    cluster                 = string
    task_definition         = string
    client_token            = optional(string)
    desired_count           = optional(number)
    enable_ecs_managed_tags = optional(bool)
    enable_execute_command  = optional(bool)
    group                   = optional(string)
    launch_type             = optional(string)
    platform_version        = optional(string)
    propagate_tags          = optional(string)
    reference_id            = optional(string)
    region                  = optional(string)
    started_by              = optional(string)
    tags                    = optional(map(string))
    capacity_provider_strategy = optional(list(object({
      base              = optional(number)
      capacity_provider = string
      weight            = optional(number)
    })))
    network_configuration = optional(object({
      assign_public_ip = optional(bool)
      security_groups  = optional(set(string))
      subnets          = set(string)
    }))
    overrides = optional(object({
      container_overrides = optional(list(object({
        command = optional(list(string))
        cpu     = optional(number)
        environment = optional(list(object({
          key   = string
          value = string
        })))
        memory             = optional(number)
        memory_reservation = optional(number)
        name               = string
        resource_requirements = optional(list(object({
          type  = string
          value = string
        })))
      })))
      cpu                = optional(string)
      execution_role_arn = optional(string)
      memory             = optional(string)
      task_role_arn      = optional(string)
    }))
    placement_constraints = optional(list(object({
      expression = optional(string)
      type       = string
    })))
    placement_strategy = optional(list(object({
      field = optional(string)
      type  = string
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.ecs_task_execution_lookup : (
        v.placement_constraints == null || (length(v.placement_constraints) <= 10)
      )
    ])
    error_message = "Each placement_constraints list must contain at most 10 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.ecs_task_execution_lookup : (
        v.placement_strategy == null || (length(v.placement_strategy) <= 5)
      )
    ])
    error_message = "Each placement_strategy list must contain at most 5 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.ecs_task_execution_lookup : (
        v.desired_count == null || (v.desired_count >= 0 && v.desired_count <= 10)
      )
    ])
    error_message = "must be between 0 and 10"
  }
  # Note: 6 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

