resource "google_compute_firewall" "main" {
  name    = var.name
  network = var.network
  project = var.project

  dynamic "allow" {
    for_each = var.allow_rules
    iterator = r
    content {
      protocol = r.value.protocol
      ports    = r.value.ports
    }
  }

  dynamic "deny" {
    for_each = var.deny_rules
    iterator = r
    content {
      protocol = r.value.protocol
      ports    = r.value.ports
    }
  }

  source_ranges      = var.source_ranges
  destination_ranges = var.destination_ranges
  source_tags        = var.source_tags
  target_tags        = var.target_tags

  priority = var.priority
}
