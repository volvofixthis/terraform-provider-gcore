provider gcore {
  user_name = "test@test.test"
  password = "testtest"
  gcore_platform = "http://api.stg-45.staging.gcdn.co"
  gcore_api = "http://10.100.179.92:33081"
}

resource "gcore_loadbalancer" "lb" {
  project_id = 1
  region_id = 1
  name = "test"
  flavor = "lb1-1-2"
  listeners {
    name = "test"
    protocol = "HTTP"
    protocol_port = 80
  }
}

resource "gcore_lblistener" "listener" {
  project_id = 1
  region_id = 1
  name = "test"
  protocol = "TCP"
  protocol_port = 36621
  loadbalancer_id = gcore_loadbalancer.lb.id
}