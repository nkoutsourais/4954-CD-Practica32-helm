{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "practica24.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "practica24.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "practica24.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Common labels
*/}}
{{- define "practica24.labels" -}}
app.kubernetes.io/name: {{ include "practica24.name" . }}
helm.sh/chart: {{ include "practica24.chart" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}


{{/*
Mongo Names
*/}}
{{- define "practica24.mongo.name" -}}
{{- default .Chart.Name .Values.mongo.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "practica24.mongo.fullname" -}}
{{- if .Values.mongo.fullnameOverride -}}
{{- .Values.mongo.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.mongo.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{- define "practica24.mongo.pv.name" -}}
{{- default .Chart.Name .Values.mongo.pv.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "practica24.mongo.pv.fullname" -}}
{{- if .Values.mongo.pv.fullnameOverride -}}
{{- .Values.mongo.pv.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.mongo.pv.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{- define "practica24.mongo.pvc.name" -}}
{{- default .Chart.Name .Values.mongo.pvc.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "practica24.mongo.pvc.fullname" -}}
{{- if .Values.mongo.pvc.fullnameOverride -}}
{{- .Values.mongo.pvc.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.mongo.pvc.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{/*
Mysql Names
*/}}
{{- define "practica24.mysql.name" -}}
{{- default .Chart.Name .Values.mysql.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "practica24.mysql.fullname" -}}
{{- if .Values.mysql.fullnameOverride -}}
{{- .Values.mysql.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.mysql.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{- define "practica24.mysql.pv.name" -}}
{{- default .Chart.Name .Values.mysql.pv.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "practica24.mysql.pv.fullname" -}}
{{- if .Values.mysql.pv.fullnameOverride -}}
{{- .Values.mysql.pv.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.mysql.pv.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{- define "practica24.mysql.pvc.name" -}}
{{- default .Chart.Name .Values.mysql.pvc.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "practica24.mysql.pvc.fullname" -}}
{{- if .Values.mysql.pvc.fullnameOverride -}}
{{- .Values.mysql.pvc.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.mysql.pvc.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{/*
RabbitMQ Names
*/}}
{{- define "practica24.rabbitmq.name" -}}
{{- default .Chart.Name .Values.rabbitmq.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "practica24.rabbitmq.fullname" -}}
{{- if .Values.rabbitmq.fullnameOverride -}}
{{- .Values.rabbitmq.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.rabbitmq.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{/*
Server App Names
*/}}
{{- define "practica24.serverapp.name" -}}
{{- default .Chart.Name .Values.serverapp.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "practica24.serverapp.fullname" -}}
{{- if .Values.serverapp.fullnameOverride -}}
{{- .Values.serverapp.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.serverapp.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{/*
External Service App Names
*/}}
{{- define "practica24.externalservice.name" -}}
{{- default .Chart.Name .Values.externalservice.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "practica24.externalservice.fullname" -}}
{{- if .Values.externalservice.fullnameOverride -}}
{{- .Values.externalservice.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.externalservice.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{/*
Worker App Names
*/}}
{{- define "practica24.workerapp.name" -}}
{{- default .Chart.Name .Values.workerapp.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "practica24.workerapp.fullname" -}}
{{- if .Values.workerapp.fullnameOverride -}}
{{- .Values.workerapp.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.workerapp.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{/*
Network Policies Names
*/}}

{{- define "practica24.np.denyall.fullname" -}}
{{- $name := default .Chart.Name .Values.networkpolicies.npDenayAll -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}

{{- define "practica24.np.rabbitmq.fullname" -}}
{{- $name := default .Chart.Name .Values.networkpolicies.npRabbitmqName -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}

{{- define "practica24.np.mongo.fullname" -}}
{{- $name := default .Chart.Name .Values.networkpolicies.npMongoName -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}

{{- define "practica24.np.mysql.fullname" -}}
{{- $name := default .Chart.Name .Values.networkpolicies.npMysqlName -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}

{{- define "practica24.np.externalservice.fullname" -}}
{{- $name := default .Chart.Name .Values.networkpolicies.npWorkerExternalName -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}

{{- define "practica24.np.serverapp.fullname" -}}
{{- $name := default .Chart.Name .Values.networkpolicies.npServerAppName -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}

{{- define "practica24.np.workerapp.fullname" -}}
{{- $name := default .Chart.Name .Values.networkpolicies.npWorkerAppName -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}