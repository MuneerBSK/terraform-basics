variable "sample" {
    default = "Welcome to terraform learning"

}

output "sample_op" {
    value       =  var.sample
}

