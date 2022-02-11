variable "gcp_project" {
    type = string
}

variable "gce_config" {
    type = object({
        name_prefix  = string
        machine_type = string
        zone         = string
    })

    description = "The configuration specifications for a GCE instance for OLT course"
}

provider "google" {
    project = var.gcp_project
}

resource "google_compute_instance" "db_primary" {
    name            = "${var.gce_config.name_prefix}-primary"
    machine_type    = var.gce_config.machine_type
    zone            = var.gce_config.zone

    tags = ["dev", "training", "mysql_server"]

    boot_disk {
        initialize_params {
            image = "ubuntu-os-cloud/ubuntu-2004-lts"
        }
    }

    network_interface {
        network = "default"
        access_config {}
    }

    metadata = {
        ssh-keys = "ansible:${file("~/.ssh/id_rsa.pub")}"
    }
}

output "source_instance_ip_addr" {
    value = "${google_compute_instance.db_primary.network_interface.0.access_config.0.nat_ip}"
}
