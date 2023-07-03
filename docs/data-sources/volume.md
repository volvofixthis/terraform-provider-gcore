---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "gcore_volume Data Source - terraform-provider-gcore"
subcategory: ""
description: |-
  Represent volume. A volume is a file storage which is similar to SSD and HDD hard disks
---

# gcore_volume (Data Source)

Represent volume. A volume is a file storage which is similar to SSD and HDD hard disks

## Example Usage

```terraform
provider gcore {
  permanent_api_token = "251$d3361.............1b35f26d8"
}

data "gcore_project" "pr" {
  name = "test"
}

data "gcore_region" "rg" {
  name = "ED-10 Preprod"
}

data "gcore_volume" "tv" {
  name       = "test-hd"
  region_id  = data.gcore_region.rg.id
  project_id = data.gcore_project.pr.id
}

output "view" {
  value = data.gcore_volume.tv
}
```

<!-- schema generated by tfplugindocs -->
## Schema

### Required

- **name** (String)

### Optional

- **id** (String) The ID of this resource.
- **metadata_k** (String)
- **metadata_kv** (Map of String)
- **project_id** (Number)
- **project_name** (String)
- **region_id** (Number)
- **region_name** (String)

### Read-Only

- **metadata_read_only** (List of Object) (see [below for nested schema](#nestedatt--metadata_read_only))
- **size** (Number)
- **type_name** (String) Available value is 'standard', 'ssd_hiiops', 'cold', 'ultra'. Defaults to standard

<a id="nestedatt--metadata_read_only"></a>
### Nested Schema for `metadata_read_only`

Read-Only:

- **key** (String)
- **read_only** (Boolean)
- **value** (String)

