{
  "agent": {
    "run_as_user": "cwagent"
  },
  "metrics": {
    "append_dimensions": {
      "ImageId": "$${aws:ImageId}",
      "InstanceId": "$${aws:InstanceId}",
      "InstanceType": "$${aws:InstanceType}",
      "AutoScalingGroupName": "$${aws:AutoScalingGroupName}"
    },
    "metrics_collected": {
      "cpu": {
        "measurement": [
          "cpu_time_active",
          "cpu_time_guest",
          "cpu_time_guest_nice",
          "cpu_time_idle",
          "cpu_time_iowait",
          "cpu_time_irq",
          "cpu_time_nice",
          "cpu_time_softirq",
          "cpu_time_steal",
          "cpu_time_system",
          "cpu_time_user",
          "cpu_usage_active",
          "cpu_usage_guest",
          "cpu_usage_guest_nice",
          "cpu_usage_idle",
          "cpu_usage_iowait",
          "cpu_usage_irq",
          "cpu_usage_nice",
          "cpu_usage_softirq",
          "cpu_usage_steal",
          "cpu_usage_system",
          "cpu_usage_user"
        ],
        "metrics_collection_interval": ${metrics_collection_interval},
        ${cpu_resources}
        "totalcpu": true
      },
      "disk": {
        "measurement": [
          "disk_free",
          "disk_inodes_free",
          "disk_inodes_total",
          "disk_inodes_used",
          "disk_total",
          "disk_used",
          "disk_used_percent"
        ],
        "metrics_collection_interval": ${metrics_collection_interval},
        "resources": ${disk_resources}
      },
      "diskio": {
        "measurement": [
          "diskio_iops_in_progress",
          "diskio_io_time",
          "diskio_reads",
          "diskio_read_bytes",
          "diskio_read_time",
          "diskio_writes",
          "diskio_write_bytes",
          "diskio_write_time"
        ],
        "metrics_collection_interval": ${metrics_collection_interval},
        "resources": ${disk_resources}
      },
      "mem": {
        "measurement": [
          "mem_active",
          "mem_available",
          "mem_available_percent",
          "mem_buffered",
          "mem_cached",
          "mem_free",
          "mem_inactive",
          "mem_total",
          "mem_used",
          "mem_used_percent"
        ],
        "metrics_collection_interval": ${metrics_collection_interval}
      },
      "swap": {
        "measurement": [
          "swap_used_percent",
          "swap_used",
          "swap_free"
        ],
        "metrics_collection_interval": ${metrics_collection_interval}
      },
      "net": {
        "measurement": [
          "net_bytes_recv",
          "net_bytes_sent",
          "net_drop_in",
          "net_drop_out",
          "net_err_in",
          "net_err_out",
          "net_packets_sent",
          "net_packets_recv"
        ],
        "metrics_collection_interval": ${metrics_collection_interval}
      },
      "netstat": {
        "measurement": [
          "netstat_tcp_close",
          "netstat_tcp_close_wait",
          "netstat_tcp_closing",
          "netstat_tcp_established",
          "netstat_tcp_fin_wait1",
          "netstat_tcp_fin_wait2",
          "netstat_tcp_last_ack",
          "netstat_tcp_listen",
          "netstat_tcp_none",
          "netstat_tcp_syn_recv",
          "netstat_tcp_syn_sent",
          "netstat_tcp_time_wait",
          "netstat_udp_socket"
        ],
        "metrics_collection_interval": ${metrics_collection_interval}
      },
      "processes": {
        "measurement": [
          "processes_blocked",
          "processes_dead",
          "processes_idle",
          "processes_paging",
          "processes_running",
          "processes_sleeping",
          "processes_stopped",
          "processes_total",
          "processes_total_threads",
          "processes_wait",
          "processes_zombies"
        ],
        "metrics_collection_interval": ${metrics_collection_interval}
      }
    }
  }
}
