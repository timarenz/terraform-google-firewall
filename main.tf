resource "google_compute_firewall" "main" {
  name    = "${var.environment_name}-${var.name}"
  network = var.network

  dynamic "allow" {
    for_each = var.allow_rules
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
