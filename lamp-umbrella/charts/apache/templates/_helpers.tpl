{{- define "apache.name" -}}
apache
{{- end }}

{{- define "apache.fullname" -}}
{{ include "apache.name" . }}-{{ .Release.Name }}
{{- end }}
