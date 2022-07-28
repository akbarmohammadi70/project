
{{/*
Expand the name of the chart.
*/}}

{{- define "tmpl.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}



{{- define "tmpl.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}


{{- define "tpl.selectorLabelsGrafana" -}}
app.kubernetes.io/instance: grafana
app.kubernetes.io/name: grafana
{{- end }}

{{- define "tpl.selectorLabelsPrometheus" -}}
app: prometheus
component: server
release: prometheus
{{- end }}

{{- define "tpl.annotations" -}}
meta.helm.sh/release-name: prometheus
meta.helm.sh/release-namespace: prometheus
{{- end }}

{{- define "tmpl.producer.fullname" -}}
{{- printf "%s-%s" (include "tmpl.fullname" .) .Values.producer.name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "tmpl.consumer.fullname" -}}
{{- printf "%s-%s" (include "tmpl.fullname" .) .Values.consumer.name | trunc 63 | trimSuffix "-" -}}
{{- end -}}





{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "tmpl.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "tmpl.producer.image" -}}
akbar1370/producer:tagname
{{- end -}}


{{- define "tmpl.consumer.image" -}}
akbar1370/consumer:tagname
{{- end -}}

